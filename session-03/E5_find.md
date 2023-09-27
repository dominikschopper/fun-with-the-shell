## Aufgaben zu find

Vorbereitung: Dein Standort sollte Dein HOME-Verzeichnis sein. Lege ein Verzeichnis `roemische-lager/SEISDRUM` an (beachte die GROSSSCHREIBUNG!!)

Das Wort "Einträge" meint hier "Dateien" und "Verzeichnisse", "Datei" meint einen "Eintrag" vom Typ "f", Verzeichnis meint einen Eintrag vom Typ "d"

- suche ab Deinem Standort alle Eintröge, die `miraculix.haus` heißen
- suche ab Deinem Standort alle Einträge, die auf `.zelt` enden
- suche ab Deinem Standort alle Verzeichnisse(!), die ein `um` enthalten
- suche ab Deinem Standort alle Verzeichnisse(!), die ein `um` enthalten, egal, ob groß oder klein geschrieben
- suche im _gesamten Dateisystem_ alle Dateien, die vor 12 oder mehr Tagen angelegt wurden.

Alle <!-- .element class="ta-left" --> timestamps einer datei seht ihr mit dem Kommando

```
stat ../some-file.txt
```

- suche im Verz. `/var/log` alle Dateien, die vor mehr als 7 Tagen geändert wurden (Keyword **modification timestamp** = Inhaltsänderung)
- suche im Verz. `/var/log` alle Dateien, auf die vor weniger als 2 Tagen zugegriffen wurden (Keyword **access timestamp** = Zugriff)
- suche im Verz. `/var/log` alle Dateien, deren Metadaten vor mehr als 5 Tagen geändert wurden (Keyword **change timestamp** = zB Berechtigungsänderung)
