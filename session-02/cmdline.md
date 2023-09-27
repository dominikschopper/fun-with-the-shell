### Interpretation der Kommandozeile

http://www.compciv.org/topics/bash/text-values/

<div class="fragment" style="width:100%; background-color: white">

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

</div>

---
### Auflösungsreihenfolge (SHELL-Expansion)
Es gibt 7 (sieben) verschiedene Ersetzungsarten.

```bash
mosdoba> echo *
42 House of rock Led Zeppelin
mosdoba> echo "*"
*
```

---
#### brace expansion
```bash
mosdoba> rmdir {42,"House of rock",Led,Zeppelin}
mosdoba> ls -l
total 0
```

<div class="fragment" style="width:100%">

#### parameter expansion
```bash
shell-training> echo ${PATH}
/home/shell-training/.local/bin:/home/shell-training/bin:/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
```

</div>
<div class="fragment" style="width:100%">

#### command substitution
```bash
shell-training> MYVAR=$(date)
shell-training> echo $MYVAR
Mon Sep 18 20:06:34 UTC 2023
```

</div>