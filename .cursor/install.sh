#!/usr/bin/env bash
set -euo pipefail

export SHARP_IGNORE_GLOBAL_LIBVIPS=1
export PATH="/usr/local/bin:/usr/bin:/bin"

cd /workspace
yarn install --frozen-lockfile
