### grep

`grep` = global regular expression print

`grep` searches files line by line for search terms

`grep` is case-sensitive by default

```bash
# searches for "SearchWord" in datei.md
grep SearchWord datei.md

# searches for "searchword" regardless of uppercase/lowercase in datei1.md and datei2.md
grep -i searchword datei1.md datei2.md

# searches for "SearchWord" regardless of uppercase/lowercase below ./directory
grep -r SearchWord ./directory/
```

there are "improved" `grep` commands, but grep is the default on all systems

notes:

- grep is the "standard command"
- locally I would always search with `hg` (SilverSurfer) or better with ripgrep = `rg`
    - `.git`/`.svn` directories are not searched
    - new thread for each sub-directory makes search faster
