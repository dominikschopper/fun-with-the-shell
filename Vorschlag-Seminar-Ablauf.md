# Ablauf

## Allgemeine Struktur

- 4 mal 2h in Präsenz auf zB 2-4 Wochen verteilt.
- Am Ende der ersten drei Einheiten werden Aufgaben verteilt, die bis zum nächsten Mal gelöst werden sollen
- Die letzten drei Sitzungen starten daher immer mit Klärung der Aufgaben und dabei Wiederholung des Stoffes der vorherigen Sitzung

## Sitzungsthemen

### 0. Vorbereitung
- VirtualBox mit AlmaLinux (ggf. in Gruppen)

### 1. Sitzung

- Geschichte Unix/Linux
  - Abstammungsbaum
  - Solaris, FreeBSD, MacOS, Linux
- Vergleich Windows/Unix
  - Prozesstabelle (Taskmanager/pstree)
  - CMD/Shell
- Prozessbaum (`ps`, `pstree`, `top`, `htop`, `/proc`)
- Anzeigen von Prozessen
- Beenden von Prozessen
- Was ist die Shell
- absolute und rel. Pfadangaben
- Bewegen im Verzeichnisbaum und anlegen/löschen von Dateien/Verzeichnissen ( `cd`, `pwd`, `ls`, `mkdir`, `touch`, `echo`,`rm`, `rmdir`)
#### Aufgaben:
  - Anlegen und Löschen von Dateien rel. und absolut
  - Anlegen von Links (symbolisch und hart)
  - Rechercheaufgabe: "Unterschied symbolic/hard links"
  - Anlegen und Löschen einer Datei `*` und einer Datei `-i`


```bash
#!/bin/bash

mkdir -p $HOME/gallisches-dorf/{asterix,troubadix,miraculix}
for dir in $HOME/gallisches-dorf/* do
    touch haus.file
done

```


```bash

```

### 2. Sitzung

- Besprechung der Aufgaben
- Manpages
- Aliases
- Globale Variablen `PATH`, `HOME`
- Starten der Shell (globale und lokale `bash_profile`, `bashrc`) Wiederaufnahme von Variablen
- Prozess-Umgebung (`set`, `env`)
- Wie interpretiert die bash die Cmd-Line
- Kurzer Ausflug ins Filesystem
- Suchen nach Dateien und deren Inhalten (`find`, `grep`)
- Mehrbenutzerkonzept (Gruppen und User)
  - whoami
  - id
  - useradd
  - groupadd
  - /etc/passwd, /etc/shadow, /etc/groups
  - sudo
- Verzeichnisse und Dateien und deren Berechtigungen (`rwx`, `chmod`, `chown`, `umask`, `chgrp`) - ggf. auch Attributsystem `lsattr`, `chattr`
- Ausführen von Shell-Skripten (`source`, `bash ...`, `chmod 700 + #!`)
#### Aufgaben:
  - setzen von aliases, manuell und in `bashrc`
  - Setzen von lokalen und globalen Variablen und Skriptausführung


### 3. Sitzung

- Besprechung der Aufgaben
- Dateienden mit `head` und `tail` anschauen
- Terminal Editoren
- VIM Editor
  - die drei Modi des VIM
  - Editieren, Speichern (Verlassen)
  - Konfiguration `vimrc`
- Nano Editor
- Dateien öffnen mit `less`
  - Navigieren
  - Suchen
  - "Follow"-Modus
- Packen und Entpacken
#### Aufgaben
  - Idee: eigenen Service auf virtueller Maschine aufsetzen (Jenkins, Gitlab?, ...)


### 4. Sitzung

- Besprechung der Aufgaben
- Was ist eine Linux-Distribution?
  - RHEL: RockyLinux, AlmaLinux (RHEL Clones)
- Connecting to Remote `ssh` und `scp`
