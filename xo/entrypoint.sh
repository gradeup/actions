#!/bin/sh
set -e

for cmd in "$@"; do
    echo "Running xo '$cmd'..."
    if sh -c "xo $cmd"; then
        # no op
        echo "Successfully ran xo '$cmd'"
    else
        exit_code=$?
        echo "Failure running xo '$cmd', exited with $exit_code"
        exit $exit_code
    fi
done
