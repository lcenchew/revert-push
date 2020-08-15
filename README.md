➥ Moved to https://github.com/exions/undo-push

# Revert Push
Revert a git push by going back 1 commit before.

⚠️ warning!: **This action removes commit. You may lose data.**


## Usage (example workflow):

copy and commit this to `.github/workflows/revert-commit.yml` in your repository.
```yaml
name: Manual Revert Push Action
on: 
  workflow_dispatch:
    inputs:
      branch:
        description: 'Branch to revert latest commit'
        required: true
        default: 'master'

jobs:
  revert:
    runs-on: ubuntu-latest
    steps: 
      - name: Checkout
        uses: actions/checkout@v2
        with:
           ref: ${{ github.event.inputs.branch }}
           fetch-depth: 0 
      - name: Revert Push
        uses: lcenchew/revert-push@v1
        with:
          branch: ${{ github.event.inputs.branch }}
```

## How to setup action

1. `Add file` > `Create new file`  
2. Name it `.github/workflows/revert-commit.yml`
3. Commit changes.

## How to run this action

This action is trigger manually. To revert your push,

1. Go to `Actions` at the top of your Github repository
2. Click on `Manual Revert Push Action` (or other name you have given) under `All workflows`
3. You will see `Run workflow`, click on it
4. Fill in the brach to revert (⚠️ make sure it is correct)
5. Click `Run workflow`
6. Check your branch commit history




