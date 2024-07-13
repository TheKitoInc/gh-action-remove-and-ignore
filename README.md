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
  GH-ACTION-REMOVE-AND-IGNORE:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Clean log dir
        uses: TheKitoInc/gh-action-remove-and-ignore@master
        with:
          path-remove: log
```


