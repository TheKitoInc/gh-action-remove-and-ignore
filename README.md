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
    with:
        github_token: ${{ env.TOKEN }}
    steps:
      - uses: TheKitoInc/gh-action-tag-on-npm-version@master
        with:
            path-remove: log
```


