#!/usr/bin/env bash
set -euo pipefail

export SHARP_IGNORE_GLOBAL_LIBVIPS=1
export PATH="/usr/local/bin:/usr/bin:/bin"

cd /workspace

if curl -sf --max-time 2 "http://127.0.0.1:8000/" >/dev/null 2>&1; then
  exit 0
fi

exec yarn start -- -H 0.0.0.0 -p 8000
