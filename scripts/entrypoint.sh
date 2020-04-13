#!/bin/bash
set -e

if [[ -f "/release-note/CHANGELOG.md" ]]; then
  changelog="$(cat /release-note/CHANGELOG.md)"
  echo "${changelog}"
  drone-github-release --note "${changelog}" "$@"
  exit
fi

drone-github-release "$@"
