## Tasks for find (Pt 1/2)

The word "entries" here means "files" or "directories",
"file" means an "entry" of type "f",
"directory" means an entry of type "d"

Preparation: Your location should be your `$HOME` directory.

- search from your location for all entries named `miraculix.haus`
- search from your location for all entries ending in `.zelt`

Preparation: Create a directory `roemische-lager/SEISDRUM` (note the UPPERCASE!!)

- search from your location for all directories(!) that contain `um`
- search from your location for all directories(!) that contain `um`, regardless of uppercase or lowercase
- search in the _entire filesystem_ for all files that were created 12 or more days ago

---

## Tasks for find (Pt 2/2)

You can see all timestamps of a file with the command

```
stat ../some-file.txt
```
Preparation: start the command `sudo /scripts/start-logging.sh`

- search in directory `/var/log` for all files that were modified more than 7 days ago (Keyword **modification timestamp** = content change)
- search in directory `/var/log` for all files that were accessed less than 2 days ago (Keyword **access timestamp** = access)
- search in directory `/var/log` for all files whose metadata was changed more than 5 days ago (Keyword **change timestamp** = e.g., permission change)
