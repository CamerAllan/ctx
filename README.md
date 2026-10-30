# ctx

Pick a GCP account, project, and GKE cluster in one go. Your gcloud config and
kube context end up set, and an expired account logs in again on the way.

## Install

```sh
git clone git@github.com:CamerAllan/ctx.git
cd ctx && ./install.sh
```

Run `ctx`. The first run checks your setup and tells you how to fix anything
missing. Run `ctx doctor` any time to check again.

## Chrome profiles

Each GCP account needs a Chrome profile signed in as that account. `ctx` opens
the login in the matching profile, so the right identity is used. `ctx doctor`
shows which profile matches each account.
