# IRIS Import

Tools for moving immunization records copied from IRIS into a `.txt` file that Infinite Campus can import.

Both tools save the copied records exactly as-is to an **IRIS** folder on the Desktop, named with today's date:

```
Desktop/IRIS/IRIS_2026-11-24.txt
```

If a file for today already exists, the next one is `IRIS_2026-11-24_2.txt`, and so on, so nothing is overwritten.

## Option 1: Web page

**https://nfvcsd.github.io/IRIS-Import/**

1. Copy the records in IRIS.
2. Paste them into the box on the page.
3. Click **Save .txt file**.
4. Import the file into Infinite Campus.

The first time, a folder window opens. Go to your **Desktop**, click **New Folder**, name it **IRIS**, and select it. After that the page saves straight into that folder.

Chrome won't let a web page use the Desktop itself (you'd see "can't open this folder because it contains system files"), so pick the IRIS folder on it.

- Use **Chrome or Edge**. Safari and Firefox can only save to Downloads.
- The page runs entirely in the browser. Pasted records are never uploaded.

## Option 2: Mac script

`Save IRIS to TXT.command`

1. Copy the records in IRIS.
2. Double-click `Save IRIS to TXT.command`.
3. Finder opens to the new file in Desktop › IRIS.

Get the script by cloning this repo (for example with GitHub Desktop). A copy downloaded through a browser loses its permission to run.

## Privacy

These files contain student health records. Delete them from the IRIS folder after Infinite Campus imports them.
