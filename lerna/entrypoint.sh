#!/bin/sh
set -e

for cmd in "$@"; do
    echo "Running lerna '$cmd'..."
    if sh -c "lerna $cmd"; then
        # no op
        echo "Successfully ran lerna '$cmd'"
    else
        exit_code=$?
        echo "Failure running lerna '$cmd', exited with $exit_code"
        exit $exit_code
    fi
done
