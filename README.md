# IRIS Import

Tools for moving immunization records copied from IRIS into a `.txt` file that Infinite Campus can import.

Both tools save the copied records exactly as-is in a file named with today's date, such as `IRIS_2026-11-24.txt`.

## Option 1: Web page

**https://nfvcsd.github.io/IRIS-Import/**

1. Copy the records in IRIS.
2. Paste them into the box on the page.
3. Click **Save .txt file**. It goes to your **Downloads** folder.
4. Import the file into Infinite Campus.

Works in any browser. If a file with the same name is already in Downloads, the browser adds a number, such as `IRIS_2026-11-24 (1).txt`. The page runs entirely in the browser; pasted records are never uploaded.

## Option 2: Mac script

`Save IRIS to TXT.command`

1. Copy the records in IRIS.
2. Double-click `Save IRIS to TXT.command`.
3. Finder opens to the new file in your **Downloads** folder. If a file for today already exists, it adds `_2`, `_3`, and so on.

Get the script by cloning this repo (for example with GitHub Desktop). A copy downloaded through a browser loses its permission to run.

## Privacy

These files contain student health records. Delete them after Infinite Campus imports them.
