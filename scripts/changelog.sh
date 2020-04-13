#!/bin/bash
set -e

if [[ -d "/release-note" ]] && [[ -n "$(command -v release-notary)" ]]; then
  cd /drone/src
  git fetch --all >/dev/null
  release-notary publish -d 2>/dev/null | sed '1d' | sed '$d' > /release-note/CHANGELOG.md
fi
