#!/bin/bash
set -euo pipefail

# Format all sources using rustfmt.
# This script borrows heavily from CraneStation/wasmtime project.

topdir=$(dirname "$0")
cd "$topdir"

# Make sure we can find rustfmt.
export PATH="$PATH:$HOME/.cargo/bin"

exec cargo +stable fmt --all -- "$@"
