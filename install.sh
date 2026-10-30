#!/usr/bin/env bash
#
# install.sh - link ctx onto the PATH and run the setup check.
#
set -euo pipefail

SRC="$(cd -P "$(dirname "${BASH_SOURCE[0]}")" && pwd)/ctx"

for dir in "$HOME/bin" "$HOME/.local/bin" "/usr/local/bin"; do
  case ":$PATH:" in *":$dir:"*) target="$dir"; break ;; esac
done

if [[ -z "${target:-}" ]]; then
  target="$HOME/.local/bin"
  mkdir -p "$target"
  echo "Add this to your shell profile:"
  echo "  export PATH=\"$target:\$PATH\""
fi

ln -sf "$SRC" "$target/ctx"
echo "Linked ctx into $target"
echo

exec "$target/ctx" doctor
