### Wie funktionieren Dateien?

- Filesystems sind **inode-basiert**, inodes enthalten Metadaten aller Einträge: `stat filename`
- <!-- .element class="fragment" -->zB enthalten sie für jeden Eintrag im FS
    - Zeitstempel (atime, mtime, ctime)
    - Berechtigungen (Besitzer, Gruppen, Rechte, ...)
    - die IDs der Datenblöcke und den
    - Link Count
- <!-- .element class="fragment" -->Verzeichnisse enthalten den Verweis auf die Inode und
    **den Namen der Datei** (ein "Link")
- <!-- .element class="fragment" -->Inodes mit Link-Count 0 sind frei
- <!-- .element class="fragment" -->Die Größe der Datenblöcke (und die Menge der Inodes) sind konfigurierbar
- <!-- .element class="fragment" -->Man kann also mehrere sog. `hard links` auf Dateien anlegen, ohne den Inhalt zu duplizieren
    ```bash
    # hard linking
    ln ./datei1 /somewhere/else/anderer-name
    ls -li ./datei1 /somewhere/else/anderer-name
    ```

Die<!-- .element class="fragment" --> Verzeichniseinträge `.` und `..` sind hard links auf das aktuelle Verzeichnis und werden automatisch
beim Anlegen mit angelegt

Hard<!-- .element class="fragment" --> Links können nur innerhalb desselben Dateisystems angelegt werden

<div class="fragment">

Sog. Soft Links sind eigentlich nur Textdateien, die auf das Original verweisen
```bash
# softlinking
ln -s ./datei2 /anderer/ort/anderer-name
ls -li ./datei2 /anderer/ort/anderer-name
```

</div>