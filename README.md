# ctx

Select a GCP account, project, and GKE cluster in quick succession. After one
run, your gcloud config and kube context are set, and your account session is
live.

## What it does

1. Pick a GCP account (from `gcloud auth list`).
2. Check the account session. If it is expired, open a Terminal.app window with
   `gcloud auth login` and wait until the login completes.
3. Pick a project (from `gcloud projects list`).
4. Pick a cluster, refined by the chosen project.
5. Set the active gcloud config and fetch the cluster credentials, which sets
   the current kube context.

## Requirements

- `gcloud` with the `gke-gcloud-auth-plugin` component.
- `fzf`.
- macOS (the login window uses Terminal.app through `osascript`).

## Install

```sh
ln -s ~/Personal/ctx/ctx ~/bin/ctx
```

`~/bin` is on the PATH. Then run `ctx`.
