#!/bin/sh
# Run the Python image processing demo (examples/img.py) against the
# library built by dev/build-local.sh.
#
# Needs: python3-gi python3-numpy python3-scipy python3-matplotlib
#   python3-pil and pooch (scipy.datasets downloads the sample images once).
#
# Usage: dev/run-demo.sh

set -eu
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
export GI_TYPELIB_PATH="$ROOT/_inst/lib/girepository-1.0${GI_TYPELIB_PATH:+:$GI_TYPELIB_PATH}"
export LD_LIBRARY_PATH="$ROOT/_inst/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
exec python3 "$ROOT/examples/img.py" "$@"
