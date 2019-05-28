#!/bin/sh
set -e

# Get List of modified files
owner=$(echo "$GITHUB_REPOSITORY" | cut -d"/" -f1)
repo=$(echo "$GITHUB_REPOSITORY" | cut -d"/" -f2)
pull_number=$(jq '.pull_request.number' /github/workflow/event.json)
files=$(pr-files -owner="$owner" -repo="$repo" -pull-number="$pull_number" | grep -v public | xargs echo)

sh -c "xo ${files:-package.json} --quiet"
