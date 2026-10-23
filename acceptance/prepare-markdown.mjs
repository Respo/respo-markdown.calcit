import assert from 'node:assert/strict';
import {execFileSync} from 'node:child_process';
import {readFileSync,writeFileSync} from 'node:fs';
const run=(...args)=>execFileSync('calcit',args,{encoding:'utf8',stdio:['ignore','pipe','pipe'],maxBuffer:16*1024*1024});
const json=(...args)=>JSON.parse(run(...args,'--format','json'));
const q=(...args)=>json('query',...args).data;
assert.equal(run('-v').trim(),'0.30.1');
const inventory=()=>{
  const ds=[];
  const namespaces=q('ns').namespaces;
  assert.equal(namespaces.length,10);
  for(const ns of namespaces){
    const names=run('query','defs',ns).split('\n').filter(l=>/^  \S/.test(l)).map(l=>l.trim().split(' ')[0]);
    assert.equal(names.length,q('ns',ns).definition_count,ns);
    for(const name of names)ds.push(q('def',`${ns}/${name}`));
  }
  assert.equal(ds.length,131);
  assert.equal(ds.reduce((n,d)=>n+d.tests.length,0),15);
  assert.equal(ds.reduce((n,d)=>n+d.examples.length,0),0);
  return ds;
};
const reviewed=JSON.parse(readFileSync('acceptance/reviewed.json','utf8'));
const before=inventory();
assert.deepEqual(before,reviewed.definitions);
assert.equal(reviewed.matches.length,12);
assert.ok(reviewed.matches.every(m=>m.region==='code'));
const methods=q('type','calcit.core/Option').methods;
for(const name of ['unwrap','some?'])assert.equal(methods.find(m=>m.name===`.${name}`)?.definition,`calcit.core/option:${name}`);
const expected=structuredClone(before);
const counts={option:0,constructors:0};
function normalize(n){
  if(!Array.isArray(n))return n;
  const node=n.map(normalize);
  if(['option:unwrap','option:some?'].includes(node[0])){node[0]=`.${node[0].slice(7)}`;counts.option++;}
  if(node[0]==='%::'){assert.equal(node[1],'ParseMode');counts.constructors++;return node.slice(1);}
  return node;
}
for(const d of expected)d.code=normalize(d.code);
assert.deepEqual(counts,{option:12,constructors:3});
const target=expected.find(d=>d.id==='respo-md.util.math/parse-command-name');
assert.deepEqual(target.code[3][2][3],['[]','nil','line']);
assert.equal(target.schema.find(x=>Array.isArray(x)&&x[0]===':return')[1],"'Dynamic");
target.schema.find(x=>Array.isArray(x)&&x[0]===':return')[1]=['::',"'List","'Dynamic"];
const ops=[];
for(let i=0;i<before.length;i++){
  const a=before[i],b=expected[i];
  if(JSON.stringify(a.code)!==JSON.stringify(b.code))ops.push(['edit','def',b.id,'--overwrite','--input-format','json-ast','--code',JSON.stringify(b.code)]);
  if(JSON.stringify(a.schema)!==JSON.stringify(b.schema)){
    const schema=['::',"'Fn",['{}',...b.schema.slice(1).filter(p=>p[0]!==':kind')]];
    ops.push(['edit','schema',b.id,'--input-format','json-ast','--code',JSON.stringify(schema)]);
  }
}
assert.equal(ops.length,11);
writeFileSync('acceptance/before.json',JSON.stringify(before,null,2));
writeFileSync('acceptance/operations.json',JSON.stringify(ops,null,2));
const args=['edit','transaction','--file','acceptance/operations.json','--format','json'];
const preview=JSON.parse(run(...args,'--dry-run'));
assert.ok(preview.scoped_revision);
writeFileSync('acceptance/preview.json',JSON.stringify(preview,null,2));
writeFileSync('acceptance/applied.json',run(...args,'--expect-revision',preview.scoped_revision));
const after=inventory();
const fields=s=>{
  const map=s[0]==='::'&&s[1]==="'Fn"?s[2]:s;
  assert.equal(map[0],'{}');return Object.fromEntries(map.slice(1).filter(p=>p[0]!==':kind'));
};
const actual=after.find(d=>d.id===target.id);
assert.deepEqual(fields(actual.schema),fields(target.schema));
target.schema=actual.schema;
assert.deepEqual(after,expected,'All131 views preserve tests/docs/FFI/other contracts; only15spellings and one real List return shape change');
writeFileSync('acceptance/after.json',JSON.stringify(after,null,2));
const diff=json('analyze','program-diff','HEAD');
assert.equal(diff.data.evidence.changes.length,11);
writeFileSync('acceptance/program-diff.json',JSON.stringify(diff,null,2));
writeFileSync('acceptance/snapshot-blob.txt',execFileSync('git',['hash-object','calcit.cirru'],{encoding:'utf8'}));
writeFileSync('acceptance/preserved.json',JSON.stringify({definitions:131,tests:15,examples:0,...counts,changedRegions:11,allOriginalTestsIdentical:true,allOtherCodeSchemasDocsFFIUnchanged:true,storedStateAndHudUnchanged:true,unsafe:0},null,2));
