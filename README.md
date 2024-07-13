# gh-action-remove-and-ignore
Remove file or directory from repository and ignore it in future commits.

## Example usage

```yaml
name: Clean log dir
on:
  push:
    branches:
      - master

jobs:
  clean-log-dir:
    name: Clean log dir
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v4
      - uses: TheKitoInc/gh-action-tag-on-npm-version@master
```


