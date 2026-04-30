#!/usr/bin/env bash
set -euo pipefail

for f in assets/nice_things/lang/*.json; do
  lower=$(echo "$f" | tr 'A-Z' 'a-z')
  if [ "$f" != "$lower" ]; then
    mv "$f" "$lower"
  fi
done
