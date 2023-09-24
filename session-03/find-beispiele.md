### find beispiele

- finde alle Einträge im Verzeichnis `gallisches-dorf` die "asterix.haus" heißen
    ```bash
    find ./gallisches-dorf -name asterix.haus
    ```
    <!-- .element class="fragment" -->
- finde an Deinem Standort alle Verzeichnisse, die auf "um" enden
    ```bash
    find . -type d -name "*um"
    ```
    <!-- .element class="fragment" -->
- finde alle Dateien ab Dateisystem-Root, die vor mehr als 15 Tagen geändert wurden und deren Name mit "readme" beginnt und Groß-/KLeinschreibung ignoriert
    ```bash
    find / -type f -ctime +15 -iname "README*"
    ```
    <!-- .element class="fragment" -->

**Wichtige Optionen:**

- `-name ...` oder `-iname ...`, Achtung!! `*` oder `?` müssen gequotet werden
- `-type` = `d`: Verzeichnisse, `f`: Dateien, `l`: Symbol. Links
- `-mtime`, `-ctime`, `-atime` in Tagen! Mit `+` oder `-` oder genau!
- `-newer ref-file` Neuer als Referenzdatei!
- Spezialfall `-exec ... ` führt einen Befehl für jede Datei aus