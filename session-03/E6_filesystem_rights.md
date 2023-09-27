## Aufgaben zu Dateiberechtigungen

- Erzeuge eine Datei `test-rights`,
    - prüfe die Berechtigungen
    - setze die Berechtigungen: &nbsp; `rw- --- ---` &nbsp; in oktaler (kurzer) Schreibweise und prüfe die Berechtigungen
    - setze die Berechtigungen: &nbsp; `rw- rw- ---` &nbsp; in symbolischer schreibweise, prüfe die Berechtigungen
    - entziehe allen das &nbsp; `w`-Recht &nbsp; und versuche mit<br/>
      `echo "whatever" >> test-rights`<br/>
      in die Datei zu schfreiben, was passiert? Prüfe mit &nbsp; `cat`
    - Öffne die Datei mit dem vi und versuche zu speichern? Findest Du einen Weg? Wie sind jetzt die Rechte?
    - Gib diese Rechte: &nbsp;  `--- -w- ---` &nbsp; (geht am schnellsten oktal!) schreibe mit `echo` hinein. Hat es geklappt? Was passiert, wenn Du &nbsp; `cat test-rights` &nbsp; ausführst?
- Erstelle ein Verzeichnis `secret-dir`
    - Entziehe allen alle Rechte
    - versuche die Datei `test-rights` hineinzubewegen
    - gib Dir nur `w` Recht und versuche es nochmal
    - setze die Rechte so, dass jeder das Verzeichnis verwenden kann, aber nur der Besitzer Dateien hineinkopieren kann. Wie ist der oktale Wert dieser Rechte?
- Wo brauchst Du welche Rechte, um die Datei `secret-dir/test-rights` zu löschen?
