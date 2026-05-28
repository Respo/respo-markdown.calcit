import { readFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'

const root = dirname(fileURLToPath(import.meta.url))
const compiledPath = join(root, 'js-out', 'respo-md.comp.md.mjs')
const sourcePath = join(root, 'calcit.cirru')

const compiled = readFileSync(compiledPath, 'utf8')
const source = readFileSync(sourcePath, 'utf8')

const checks = [
  ['math helper is emitted', compiled.includes('export function mathml_markup')],
  ['MathML root markup is emitted', compiled.includes('<math><mrow>')],
  ['fraction markup is emitted', compiled.includes('<mfrac>')],
  ['sqrt markup is emitted', compiled.includes('<msqrt>')],
  ['inline dollar math parsing remains in source', source.includes('|peek-inline-math')],
  ['block dollar math parsing remains in source', source.includes('|pattern-math-block-open')],
  ['inline math font size bump is recorded', source.includes('(:font-size 15)')],
  ['block math font size bump is recorded', source.includes('(:font-size 18)')],
]

const failures = checks.filter(([, passed]) => !passed)

if (failures.length > 0) {
  console.error('MathML smoke test failed:')
  for (const [label] of failures) {
    console.error(`- ${label}`)
  }
  process.exit(1)
}

console.log(`MathML smoke test passed (${checks.length} checks).`)
