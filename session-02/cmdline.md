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

#### Auflösungsreihenfolge (SHELL-Expansion)

```bash
mosdoba> echo *
42 House of rock Led Zeppelin
mosdoba> echo "*"
*
```

```bash
mosdoba> rmdir {42,"House of rock",Led,Zeppelin}
mosdoba> ls -l
total 0
```


#### Aufruf von Shell-Skripten

<table>
    <tr>
        <td>Aufruf</td>
        <td>muss ich im PATH befinden</td>
        <td>Ausführungsrecht notwendig</td>
        <td>Sub-Shell wird gestartet</td>
        <td>Rückkehr zur Ausgangsshell</td>
    </tr>
    <tr>
        <td>cmd.sh</td>
        <td>x</td>
        <td>x</td>
        <td>x</td>
        <td>x</td>
    </tr>
    <tr>
        <td>sh cmd.sh</td>
        <td>-</td>
        <td>-</td>
        <td>x</td>
        <td>x</td>
    </tr>
    <tr>
        <td>./cmd.sh</td>
        <td>-</td>
        <td>x</td>
        <td>x</td>
        <td>x</td>
    </tr>
    <tr>
        <td>. cmd.sh</td>
        <td>x</td>
        <td>-</td>
        <td>-</td>
        <td>x</td>
    </tr>
    <tr>
        <td>. ./cmd.sh</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
        <td>x</td>
    </tr>
    <tr>
        <td>exec cmd.sh</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
        <td>-</td>
    </tr>
</table>
