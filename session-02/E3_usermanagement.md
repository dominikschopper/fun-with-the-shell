## Aufgaben User anlegen &amp; löschen

Alle Kommandos müssen als `root` ausgeführt werden! Ergreift dementsprechende Maßnahmen.

Überprüft jedes Kommand zB mit `tail -5 /etc/passwd` und `tail -5 /etc/group`, ob jedes Kommando geklappt hat

- legt eine Gruppe `gallier` mit dem Kommando `groupadd` an
- legt eine Gruppe `kumpels` mit dem Kommando `groupadd` an
- legt einen user `asterix` mit dem Kommando `useradd` an. Bitte gebt ihm als "primary group" die Gruppe `gallier` und als zusätzliche Gruppe die Gruppe `kumpels`
- legt einen user `obelix` mit dem Kommando `useradd` an. Bitte gebt ihm als "primary group" die Gruppe `gallier` und als zusätzliche Gruppe die Gruppe `kumpels`
- wechselt mit `sudo -i ...` zum User `asterix`. Legt eine Datei `test-ax` an und schaut sie Euch mit `ls -l` an. Achtet auf Besitzer, Gruppe und Rechte
- wechselt zurück zu root und dann mit `sudo -i ...` zum User `obelix`. Legt eine Datei `test-ox` an und schaut sie Euch mit `ls -l` an. Achtet auf Besitzer, Gruppe und Rechte.
- jetzt wechselt zurück zu eurem user `shell-training` und legt eine Datei `test` and und seht Euch diese Datei an. Vergleicht Eure Beobachtungen mit der Ausgabe des ID Kommandos.
- Wo findet ihr die "primary group"? Was ist ihr Zweck, bzw. wozu wird sie vom System verwendet?