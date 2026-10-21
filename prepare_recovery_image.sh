#!/bin/sh
set -eu

recovery_root="$1"
build_prop="$recovery_root/prop.default"

if [ ! -f "$build_prop" ]; then
    echo "Recovery build properties not found: $build_prop" >&2
    exit 1
fi

if grep -q '^ro.debuggable=1$' "$build_prop"; then
    exit 0
fi

if [ "$(grep -c '^ro.debuggable=0$' "$build_prop")" -ne 1 ]; then
    echo "Expected one ro.debuggable=0 in $build_prop" >&2
    exit 1
fi

sed -i 's/^ro.debuggable=0$/ro.debuggable=1/' "$build_prop"
