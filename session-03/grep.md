### grep

`grep` = global regular expression print

`grep` durchsucht Dateien zeilenweise nach Suchworten

`grep` ist per default case-sensitive

```bash
# sucht nach "SuchWort" in datei.md
grep SuchWort datei.md

# sucht nach "suchwort" egal ob groß/klein in datei1.md und datei2.md
grep -i suchwort datei1.md datei2.md

# sucht nach "SuchWort" egal ob groß/klein unterhalb von ./directory
grep -r SuchWort ./directory/
```

es gibt "verbesserte" `grep` Kommandos, aber grep ist der default auf allen Systemen

notes:

- grep ist der "Standardbefehl"
- lokal würde ich immer mit `hg` (SilverSurfer) oder besser mit ripgrep = `rg` suchen
    - `.git`/`.svn` Verz. werden nicht durchsucht
    - neuer thread für jedes Sub-Dir macht Suche schneller
