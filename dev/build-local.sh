#!/bin/sh
# Build GtkNodes with GObject introspection and install it into _inst/
# inside the repo (no root needed).
#
# Needs (Ubuntu 26.04): autoconf automake libtool libgtk-3-dev
#   gobject-introspection libgirepository1.0-dev gtk-doc-tools
#
# Usage: dev/build-local.sh

set -eu
cd "$(dirname "$0")/.."
./autogen.sh
./configure --prefix="$PWD/_inst" --enable-introspection=yes
make -j"$(nproc)"
make install
echo "Installed to $PWD/_inst"
