#!/usr/bin/env bash
# Drives the two-terminal demo. Fill in on the day; keep it to what the recording shows.
# Usage: bash demo/run.sh a|b
set -euo pipefail
case "${1:-}" in
  a) echo "Terminal A: write decision D1, then supersede it, then revoke B (see demo/seed.md)";;
  b) echo "Terminal B: start the REST client task; expect a change notice on the next tool call";;
  *) echo "usage: demo/run.sh a|b"; exit 1;;
esac
