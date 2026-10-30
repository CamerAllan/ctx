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

## Menus

The menus are [`fzf`](https://github.com/junegunn/fzf), so type a few letters
to filter and press enter to choose. Each menu lists your most recent choices
first, so the usual ones stay at the top. The recency lists live in
`~/.cache/ctx`.

The project and cluster lists are cached with
[`bkt`](https://github.com/dimo414/bkt), so the menus open at once instead of
waiting for a gcloud call. Every run also refreshes the cache in the
background, so a new project or cluster appears on the next run. Project lists
are cached per account, and cluster lists per project. Without `bkt`, the
menus still work, and each one waits for a live gcloud call.

## Chrome profiles

Each GCP account needs a Chrome profile signed in as that account. `ctx` opens
the login in the matching profile, so the right identity is used. `ctx doctor`
shows which profile matches each account.
