## Shell Scripting

ein Shell Script ist eine (meist ausführbare Datei), die shell Kommandos
enthält und üblicherweise auf `.sh` endet.

Gut für kurze, kleine, repetitive Aufgaben, die man sonst auch gut auf der cmdline
ausführen kann.

Es gibt aber schon länger Stimmen, die zB **python** als Nachfolger von Bash Skripten für Admins bevorzugen!

Trotzdem können Shell-Skripte das Leben vereinfachen.

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

---

## Syntax 2: Variables

Variablen werden üblicherweise groß geschrieben und sind case-sensitive.

Allerdings kann man das auch zur Vermeidung von Kllisionen verwenden und
die Variablen CamelCase schreiben!

L-Values der Variablen müssen
- mit einem Buchstaben beginnen
- dürfen nur `A-Za-z`, `0-9` und `_` enthalten

R-Values der Variablen werden meist ge-quotet, wenn keine Sonderzeichen enthalten sind, ist das aber nicht zwingend notwendig.

Beispiele

```bash
SSH_CMD="ssh"
AdminUser="root"
another_user="moo"
```

---

## Syntax 3: if/then/else

### IF

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
    echo "$LETTER "
done
echo
```

```bash
for DIR_ENTRY in *
do
    echo "Found '$DIR_ENTRY' in $PWD"
```

---
## Syntax 5: Zugriff auf Argumente

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

---
## Test Command

das `test` Kommando kann zB Vergleiche ausführen

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

