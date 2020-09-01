#!/usr/bin/env bash

#Variable that contains input for file containing what needs to be wrapped
FILE=${1?Error: no file name given}

#Variable that contains input that specifies the desired header and footer
HEADFOOT=${2?Error: no specified header and footer}

#Variable that contains input for the resulting file
TARGET=${3?Error: no specified resulting file name}

#Creates specific variables based on the supplied header and footer specification
header="$HEADFOOT"_header.html
footer="$HEADFOOT"_footer.html

cat "$header" "$FILE" "$footer" > "$TARGET"
