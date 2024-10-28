## Aufgaben zu grep

Vorbereitung: lass den Befehl `sudo start-logging.sh` laufen.

- wie finde ich aus der Datei `obelix.haus` alle Zeilen, die `ix` enthalten
- wie finde ich aus der Datei `obelix.haus` alle Zeilen, die `as` enthalten, egal, ob groß oder klein geschrieben.
- wie finde ich mit grep alle Dateien in eurem `$HOME`-Verzeichnis, die ein `ix` enthalten
- wie finde ich mit grep alle Dateien in eurem `$HOME`-Verzeichnis, die ein `As` enthalten (mit und ohne Groß/Kleinschreibung)
- lass Dir aus der Datei `/var/log/fake-service.log` alle Zeilen anzeigen,
    - die den string `OK` enthalten.
    - die den string `proc` enthalten.
    - die den string `ERR` nicht enthalten.

## Aufgaben zu find

Vorbereitung: Dein Standort sollte Dein HOME-Verzeichnis sein. Lege ein Verzeichnis `roemische-lager/SEISDRUM` an (beachte die GROSSSCHREIBUNG!!)

Das Wort "Einträge" meint hier "Dateien" und "Verzeichnisse", "Datei" meint einen "Eintrag" vom Typ "f", Verzeichnis meint einen Eintrag vom Typ "d"

- suche ab Deinem Standort alle Einträge, die `miraculix.haus` heißen
- suche ab Deinem Standort alle Einträge, die auf `.zelt` enden
- suche ab Deinem Standort alle Verzeichnisse(!), die ein `um` enthalten
- suche ab Deinem Standort alle Verzeichnisse(!), die ein `um` enthalten, egal, ob groß oder klein geschrieben
- suche im _gesamten Dateisystem_ alle Dateien, die vor 12 oder mehr Tagen angelegt wurden.
- suche im Verz. /var/log alle Dateien, die vor weniger als 1 Tag geändert wurden
