#!/usr/bin/env bash
# Serve so that http://localhost:8080/portfolio/ matches GitHub Pages base path.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
TMP="$(mktemp -d)"
cleanup() { rm -rf "$TMP"; }
trap cleanup EXIT
mkdir -p "$TMP/portfolio"
# Copy site files into /portfolio/ subpath
cp -a "$ROOT"/. "$TMP/portfolio/"
# Drop nested copy of serve script noise is fine
cd "$TMP"
echo "Open http://localhost:8080/portfolio/"
python3 -m http.server 8080
