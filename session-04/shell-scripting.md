## Shell Scripting

<div style="text-align: left;">

ein Shell Script ist eine (meist ausführbare Datei), die shell Kommandos
enthält und üblicherweise auf `.sh` endet.

Gut für kurze, kleine, repetitive Aufgaben, die man sonst auch gut auf der cmdline
ausführen kann.

**python** gilt als Nachfolger von Bash Skripten für Admins!

Aber! Shell-Skripte das Leben vereinfachen.

</div>

---

## Wann sind Shell-Scripte keine gute Idee?

Projekte mit

<div class="flex-row">

- Number Crunching / Ressourcen hungrige Aufgaben
- Cross-Plattform Kompatibilität
- Komplexe Applikationen (type safety, structure)
- Business-Critical Applications
- komplexen Abhängigkeiten
- komplexen GUIs

<br/>

- intensive/feingranulare Dateioperationen
  (Shells sind sequentiell ablaufende Operationen)
- die komplexe Datenstrukturen benötigen
- die komplexe Chart-/Grafikmanipulation benötigen
- die hardware-nah sind
- die mit Ports/Sockets arbeiten
- die ausgeliefert und closed-source sein sollen

</div>


---

## Syntax 1: SheBang

<div style="text-align: left;">

ein Shell Script beginnt in der ersten Zeile mit der Shebang Zeile
```bash
#!/bin/bash
```

das legt fest, mit welcher Shell das Skript ausgeführt wird. Fehlt diese Zeile, wird es mit der aufrufenden Shell ausgeführt.

Skripte, die von System zu System kopiert werden müssen verwenden daher
meist den "kleinsten gemeinsamen Nenner"

```bash
#!/bin/sh
```

Das ist die Bourne Shell, der Vorgänger der `bash`, die einige
Funktionalitäten nicht enthält

</div>

---

## Syntax 2: Variables

<div style="text-align: left;">

Variablen werden üblicherweise groß geschrieben und sind case-sensitive.

Allerdings kann man das auch zur Vermeidung von Kllisionen verwenden und
die Variablen CamelCase schreiben!

L-Values der Variablen müssen
- mit einem Buchstaben beginnen
- dürfen nur `A-Za-z`, `0-9` und `_` enthalten

R-Values werden meist ge-quotet, selbst wenn keine Sonderzeichen enthalten sind,
das ist das aber nicht zwingend notwendig.

Beispiele

```bash
SSH_CMD="ssh"
SSH_CMD=ssh
AdminUser="root"
AdminUser=root
phrase="moo and foo have both two o."
```

</div>

---

## Syntax 3: if/then/else

### IF

<div style="text-align: left;">


```bash
if _command_ # return status 0 -> then
then
    echo "something"
else
    echo "another thing"
fi
```
alternative Schreibweise

```bash
if _command_; then
    echo "something"
else
    echo "another thing"
fi
```

example (grep hat den return 0, wenn der Suchbegriff gefunden wird)

```bash
SEARCH_USER="someuser"

if grep $SEARCH_USER /etc/passwd >/dev/null 2>&1
then
    echo "found '$SEARCH_USER' in system"
else
    echo "creating '$SEARCH_USER'"
    useradd -m $SEARCH_USER
fi
```

</div>

---
## Syntax 4: Schleifen

While-Schleifen

```bash
while _cmnd_
do
    echo "solange _cmnd_ return 0 hat"
done
```

For-Schleifen

```bash
for LETTER in A B C D E F G
do
    echo -n "$LETTER "
done
echo "" # to create a newline
```

```bash
for DIR_ENTRY in *
do
    echo "Found '$DIR_ENTRY' in $PWD"
done
```

---
## Syntax 5: Zugriff auf Argumente

<div style="text-align: left;">

```bash
./myscript.sh one two three
```

- **$0** = `./myscript.sh`
- **$1** = `one`
- **$2** = `two` ... usw

```bash
# im Skript
# der Aufruf von shift
shift
```
- **$0** = `./myscript.sh`
- **$1** = `two`
- **$2** = `three` ... usw

komplexere Aktionen mit `getopts`

</div>

---
## Test Command

<div style="text-align: left;">

das `test` Kommando kann zB Vergleiche ausführen

es hat den return 0 wenn die abgefregte Bedingung "wahr" ist

- `test "$x" = "hallo"` enthält $x "hallo"?
- `test $x -lt 9` ist $x kleiner als 9?
- `test $x -eq 11` ist $x die Zahl 11?
- `test -f $x` ist $x eine Datei?
- ... `man test`

alte Schreibweise

- `[ "$x" = "hallo" ]` enthält $x "hallo"?
- `[ "$x" -lt 9 ]` ist $x kleiner als 9?
- `[ "$x" -eq 11 ]` ist $x die Zahl 11?
- `[ -f "$x" ]` ist $x eine Datei?

neue Schreibweise

- `[[ $x = "hallo" ]]` enthält $x "hallo"?
- `[[ $x =~ "^hallo" ]]` enthält $x "hallo"?
- `[[ $x -lt 9 ]]` ist $x kleiner als 9?
- `[[ $x -eq 11 ]]` ist $x die Zahl 11?
- `[[ -f $x ]]` ist $x eine Datei?

</div>

---
## Syntax 6: functions / subroutinen

Subroutinen können mit sog. functions erzeugt werden

```bash
function name() {
    echo "my $1 is in a function"
}
# --- usage
name Bob
```

Besonderheiten in Functions

```bash
function something() {
    local x=$1 # local var to function
    if test $x = "Welt" ; then
        echo "Hallo $x"
        return
    fi
    echo "Was war das denn? x ist $x"
}
```

Functions, die in mehreren Scripten gebraucht werden in Dateien `something.rc`

Im Script `source ./tools/something.rc` oder `. ./tools/something.rc`

---

## Debugging

Kleine Helfer

- `set -n` lässt nichts ausführen, sondern prüft nur auf syntaktische Korrektheit
- `set -x` zeige Kommando an, bevor es ausgeführt wird
- schalte Anzeige wieder aus `set +x`
- `set -e` exit wenn Kommando nicht statuscode 0 hat

---

## Aufgabe

Die Aufgaben sind ALternativen

1. Schreibt ein Script **`add_users.sh`**, das eine Reihe von Usernamen als Argumente übernimmt
  es soll alle user anlegen, sicherstellen, dass es ein Home-Verzeichnis gibt und
  ihnen ein Standard-Passwort vergeben (Trick: `echo "$DEFAULT_PW" | passwd --stdin`).
    - Erweitert das Skript, dass es sich beendet, wenn es nicht vom user `root` ausgeführt
      wird
    - Erweitert das Skript, dass es am Ende alle User ausgibt, bei denen das Anlegen nicht
      geklappt hat
    - Erweitert das Skript so, dass es einen Hilfe-Text ausgibt, wenn es als einzigen Parameter
      `--help` oder `-h` übergeben bekommt
    - Überlegt, wie Ihr ein Skript schreiben könntet, das User anlegt, die Usernamen (und Email-Adressen?)
      genriereren könnten (Username 'monika.mustermann' Email: 'monika.mustermann@somwhere.com')?
1. Schreibt ein Skript **`del.sh`**, das Dateien und Verzeichnisse löscht, aber statt sie zu löschen, soll
  es die Dateien oder Verzeichnisse in einen Ordner `$HOME/.trash/` bewegen
    - Schreibt ein Skript **`trash_bin.sh`**, die Euch die Größe Eures Trash-Ordners (in KB/MB/GB) anzeigt
    - Erweitert **`trash_bin.sh`** so, dass es bei dem Parameter `trash_bin.sh --clean-all` alle Dateien aus dem Trash Ordner löscht
    - Erweitert **`trash_bin.sh`** so, dass es bei dem Parameter `trash_bin.sh --clean +3` Dateien aus dem Trash Ordner
      löscht, die älter als 3 Tage sind
    - Schreibt ein Skript **`undel.sh`**, dass eine Datei aus dem Ordner wiederherstellt. Der Ort der Wiederherstellung soll übergeben werden
      `undel.sh somefile.txt restore_here/`
    - Überlegt, wie könntet Ihr das Skript `del.sh` so anpassen, dass eine Wiederherstellung an den Originalort möglich wird?




