#!/bin/bash
# Save IRIS to TXT
# 1. In IRIS, select the records and copy them (Cmd+C).
# 2. Double-click this file.
# 3. The copied text is saved exactly as-is in the IRIS folder on your
#    Desktop as IRIS_YYYY-MM-DD.txt (today's date), and Finder opens to show it.
#    The IRIS folder is created automatically the first time.
# 4. Import that .txt into Infinite Campus.
#
# These are student health records. Delete the .txt after a successful import.

export LANG=en_US.UTF-8   # keep accented names intact
SAVE_DIR="${IRIS_SAVE_DIR:-$HOME/Desktop/IRIS}"

finish() { echo; read -n 1 -s -r -p "Press any key to close this window."; echo; exit "$1"; }

if [ -z "$(pbpaste | tr -d '[:space:]')" ]; then
  echo "Nothing to save. The clipboard is empty."
  echo "Copy the records in IRIS first (Cmd+C), then double-click this file again."
  finish 1
fi

mkdir -p "$SAVE_DIR"
BASE="IRIS_$(date +%Y-%m-%d)"
FILE="$SAVE_DIR/$BASE.txt"
# If today's file already exists, don't overwrite it: add _2, _3, ...
n=2
while [ -e "$FILE" ]; do FILE="$SAVE_DIR/${BASE}_$n.txt"; n=$((n + 1)); done

pbpaste > "$FILE"
# Make sure the file ends with a line break
[ -n "$(tail -c 1 "$FILE")" ] && echo >> "$FILE"

LINES=$(wc -l < "$FILE" | tr -d ' ')
echo "Saved $LINES lines to:"
echo "  $FILE"
open -R "$FILE"
finish 0
