# ctx

Select a GCP account, project, and GKE cluster in quick succession. After one
run, your gcloud config and kube context are set, and your account session is
live.

## What it does

1. Pick a GCP account (from `gcloud auth list`).
2. Check the account session. If it is expired, run `gcloud auth login` and open
   the Chrome profile that is signed in as that account.
3. Pick a project (from `gcloud projects list`).
4. Pick a cluster, refined by the chosen project.
5. Set the active gcloud config and fetch the cluster credentials, which sets
   the current kube context.

## Requirements

- `gcloud` with the `gke-gcloud-auth-plugin` component.
- `fzf`.
- `python3` (reads the Chrome profile map).
- Google Chrome, with one profile signed in per GCP account.
- macOS (`open` launches Chrome).

## Install

```sh
ln -s ~/Personal/ctx/ctx ~/bin/ctx
```

`~/bin` is on the PATH. Then run `ctx`.
