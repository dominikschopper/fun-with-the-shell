### find

suchen nach Dateien, die

- im Dateinamen auf ".doc" enden
- Verzeichnisse, die ...
- älter als X Tage sind
- größer/kleiner als Xbytes sind

das tool der Wahl ist `find`

find hat ein paar "kleine" Besonderheiten:

- lange Parameter mit einem `-` voran, wie zB `find ... -name foo.txt`
- bei Zahlenangaben ist "größer als" ein `+` kleiner als ein `-`

#### find Kommando Aufbau

```bash
find <startdir> -type d -name xyz ...
# Merksatz: finde ab <startdir> alle "Verzeichnisse", die "xyz" heißen
```