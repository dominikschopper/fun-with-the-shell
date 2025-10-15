### Interpretation der Kommandozeile

http://www.compciv.org/topics/bash/text-values/

#### Token

```bash
mosdoba> mkdir 42
mosdoba> mkdir Led   Zeppelin
mosdoba> mkdir "House of rock"
mosdoba> ls -l
total 0
drwxr-xr-x@  2 mosdoba  staff   64  4 Aug 15:14 42
drwxr-xr-x@  2 mosdoba  staff   64  4 Aug 15:14 House of rock
drwxr-xr-x@  2 mosdoba  staff   64  4 Aug 15:14 Led
drwxr-xr-x@  2 mosdoba  staff   64  4 Aug 15:14 Zeppelin
```

+ Jede Sequenz von Leerzeichen (oder Tabulatoren) leitet ein neues Token ein.
+ Die Anführungszeichen verhindern die Zerlegung in mehrere Token.


---

### Auflösungsreihenfolge (SHELL-Expansion)

Es gibt 7 (sieben) verschiedene Ersetzungsarten. Das beschreibt, wie genau die Zeichenkette, die du
eingibst nacheinander verarbeitet wird.

1. Brace Expansion
1. Tilde Expansion
1. Parameter/Variablen Expansion
1. Command Substitution
1. Arithmetic Expansion
1. Process Substitution
1. Word Splitting
1. Pathname Expansion

```bash
mosdoba> echo *
42 House of rock Led Zeppelin
mosdoba> echo "*"
*
```

---

#### 1 brace expansion

mit `{...}` kann man ebenfalls ein wenig Spaß haben, zB um Dateien anzulegen.
Alle Teile innerhalb einer geschweiften Klammer werden mit allen anderen Teilen
verknüpft.

```bash
mosdoba> echo {"House of","Led"}+{Rock,Zeppelin}
House of+Rock House of+Zeppelin Led+Rock Led+Zeppelin

mosdoba> mkdir -p gallisches-dorf/{Astrix,Obelix,Miraculix}
mosdoba> ls -R
./gallisches-dorf:
Astrix    Miraculix Obelix

./gallisches-dorf/Astrix:

./gallisches-dorf/Miraculix:

./gallisches-dorf/Obelix:
```

---

#### 2 tilde expansion

Die Tilde `~` hat eine besondere Bedeutung

```bash
mosdoba> cd ~          # gets you to your HOME
mosdoba> cd ~dschopper # gets you to HOME of dschopper user
```
---

#### 3 parameter expansion (Variablen ersetzen und mehr)

alles was mit `$` beginnt wird in diesem Schritt ersetzt, bzw, bearbeitet

```bash
shell-training> echo $PATH
/home/shell-training/.local/bin:/home/shell-...

shell-training> echo ${PATH:5:6}
/shell # extract 6 chars starting after char 5

shell-training> echo ${FOO:=default}
default # value of FOO or default if not set
```

---

#### 4 command substitution

in einer Kommandozeile kann mit `$(...)` eine Subshell geöffnet werden, und deren output
in der aktuellen Cmdline verwendet werden

```bash
shell-training> MYVAR=$(date)
shell-training> echo $MYVAR
Mon Sep 18 20:06:34 UTC 2023
```

---

#### 5 arithmetic expansion

es können auch arithmetische Audrücke ausgwertet werden, die mit `$((...))` geschrieben wurden

```bash
shell-training> echo "Das Produkt von 34 und 56 ist $((34 * 56))"
Das Produkt von 34 und 56 ist 1904
```

---

#### 6 process substitution

Durch die einfache runde Klammer `( )` können ebenfalls Subshells geöffnet werden und mit `<` oder
`>` an den Prozess ein oder ausgegeben werden.

```bash
# Zwei Verzeichnislisten vergleichen
shell-training> diff <(ls -la /dir1) <(ls -la /dir2)
```

#### (add) word splitting

Die Cmdline wird nachdem alle diese Ersetzungen/Expansions gemacht wurden nochmals
am Whitespace in Worte gesplittet.

---

#### 7 pathname expansion

Jetzt wird alles mit `*` und `?` zu einem existierenden Pfad erweitert.

- `*` = 0 bis beliebig viele beliebige Chars
- `?` = ein beliebiger Char

```bash
shell-training> ls gallisches-dorf/*lix
gallisches-dorf/miraculix:
miraculix.haus

gallisches-dorf/obelix:
obelix.haus
```

#### (add) quote removal

alle `"`, `'` und `\` werden entfernt

**fertig ist die Interpretation Eurer eingegebenen CmdLine**