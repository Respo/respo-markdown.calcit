# Fix Markdown table headers under current Calcit

- `first` now returns `Option<T>` in current Calcit. Table rendering previously
  passed that enum straight into the Respo list renderer, causing
  `listToArray` to reject it at runtime.
- Explicitly unwrap the optional table header with an empty-list fallback.
- Upgrade the package metadata and JavaScript runtime to Calcit 0.13.41 for
  compatibility with current Respo consumers.
