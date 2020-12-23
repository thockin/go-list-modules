#!/bin/sh

DIRS_NEED_CODEGEN=$(\
    find . -type f -name \*.go \
        | xargs grep -l "^// *NEEDS_CODEGEN" \
        | xargs -n 1 dirname \
        | sort \
        | uniq \
        | paste -sd' '
)

echo -e "Need codegen in:\n    $(echo "$DIRS_NEED_CODEGEN" | sed 's/ /\n    /g')"
echo

# Try to do it all at once
go list -f '{{.GoFiles}}' $DIRS_NEED_CODEGEN

