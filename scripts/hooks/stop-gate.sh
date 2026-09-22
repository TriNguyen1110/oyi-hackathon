#!/usr/bin/env bash
# ECC-style stop gate, ours: the agent may not finish a turn that leaves the demo-path test red.
# Deterministic; the model does not decide whether it ran.
set -uo pipefail
cd "$(dirname "$0")/../.."
[ -f package.json ] || exit 0
if npm run -s test >/tmp/oyi-test.log 2>&1; then exit 0; fi
echo "stop-gate: tests failing; fix before ending the turn (see /tmp/oyi-test.log)" >&2
exit 2
