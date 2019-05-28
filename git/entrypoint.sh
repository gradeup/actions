#!/bin/sh
set -e

for cmd in "$@"; do
    echo "Running git '$cmd'..."
    if sh -c "git $cmd"; then
        # no op
        echo "Successfully ran git '$cmd'"
    else
        exit_code=$?
        echo "Failure running git '$cmd', exited with $exit_code"
        exit $exit_code
    fi
done
