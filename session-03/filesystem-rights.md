Überhang vom letzten Mal ...
## Dateisystemberechtigungen

### chmod mit ugo
```bash
shell-training> touch datei1
shell-training> echo Hallo > datei2
shell-training> ls -l
total 4
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 19:38 datei1
-rw-rw-r--. 1 shell-training shell-training 6 Sep 17 19:38 datei2
```

---
```bash
shell-training> # u=user, g=group, o=other erhalten Ausführungsberechtigung
shell-training> chmod +x datei2
shell-training> ls -l
total 4
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 19:38 datei1
-rwxrwxr-x. 1 shell-training shell-training 6 Sep 17 19:38 datei2
```

<div class="fragment" style="width:100%">

```bash
shell-training> # eigentlich sollten alle anderen keine Ausführungsberechtigungen haben
shell-training> chmod o-x datei2
shell-training> ls -l
total 4
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 19:38 datei1
-rwxrwxr--. 1 shell-training shell-training 6 Sep 17 19:38 datei2
shell-training> # die Gruppe bitte auch nicht
shell-training> chmod g-x datei2
shell-training> ls -l
total 4
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 19:38 datei1
-rwxrw-r--. 1 shell-training shell-training 6 Sep 17 19:38 datei2
```

</div>

---

```bash
shell-training> # es soll doch bitte niemand Leserechte (r), Schreibrechte (w) oder Ausführungsrechte (x) haben
shell-training> chmod -rwx datei2
shell-training> ls -l
total 4
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 19:38 datei1
----------. 1 shell-training shell-training 6 Sep 17 19:38 datei2
```

<div class="fragment" style="width:100%">

```bash
shell-training> # nur der Eigentümer soll lesen können
shell-training> chmod u+r datei2
shell-training> ls -l
total 4
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 19:38 datei1
-r--------. 1 shell-training shell-training 6 Sep 17 19:38 datei2
```

</div>

---

### Rechte-Stenographie

statt `u=rwx,g=rx,o-rwx` kann man auch einfach `750` schreiben

<img src="/images/rights-string-octal.jpg" />

---
### chmod mit 2 hoch rwx (oktal)

```bash
shell-training> chmod 100 datei1
shell-training> ls -l
total 4
---x------. 1 shell-training shell-training 0 Sep 17 19:38 datei1
-r--------. 1 shell-training shell-training 6 Sep 17 19:38 datei2
shell-training> chmod 200 datei1
shell-training> ls -l
total 4
--w-------. 1 shell-training shell-training 0 Sep 17 19:38 datei1
-r--------. 1 shell-training shell-training 6 Sep 17 19:38 datei2
shell-training> chmod 400 datei1
shell-training> ls -l
total 4
-r--------. 1 shell-training shell-training 0 Sep 17 19:38 datei1
-r--------. 1 shell-training shell-training 6 Sep 17 19:38 datei2
```

---
### Verzeichnisse
chmod funktioniert genauso für Verzeichnisse. Jedoch haben die Berechtigungen leicht andere Effekte als auf gewöhnlichen Dateien.
+ Das read-Bit (r) erlaubt dem Anwender Dateien im jeweiligen Verzeichnis aufzulisten.
+ Das write-Bit (w) erlaubt dem Anwender Dateien im jeweiligen Verzeichnis zu erzeugen, umzubenennen oder zu löschen und die Verzeichnisattribute zu editieren.
+ Das execute-Bit (x) erlaubt dem Anwender das Verzeichnis zu betreten und auf Dateien und andere Verzeichnisse darin zuzugreifen.

---
```bash
shell-training> # weder user, noch group, noch other soll Ausführungsrechte haben
shell-training> chmod ugo-x temp
shell-training> ls -ld temp
drw-rw-r--. 2 shell-training shell-training 34 Sep 17 19:38 temp
shell-training> ls -l temp/datei*
ls: cannot access 'temp/datei1': Permission denied
ls: cannot access 'temp/datei2': Permission denied
shell-training> cat temp/datei2
cat: temp/datei2: Permission denied
```

<div class="fragment" style="width:100%">

```bash
shell-training> # wie sieht es mit nur (x) aber OHNE (r) aus?
shell-training> chmod ugo+x temp
shell-training> chmod ugo-r temp
shell-training> ls -ld temp
d-wx-wx--x. 2 shell-training shell-training 34 Sep 17 19:38 temp
shell-training> ls -l temp/
ls: cannot open directory 'temp/': Permission denied
shell-training> cat temp/datei2
Hallo
```

</div>

---
### chown, chgrp

```bash
root> ls -l
total 4
-rw-------. 1 shell-training shell-training 0 Sep 17 19:38 datei1
-r--------. 1 shell-training shell-training 6 Sep 17 19:38 datei2
root> chown tester datei1
root> ls -l
total 4
-rw-------. 1 tester         shell-training 0 Sep 17 19:38 datei1
-r--------. 1 shell-training shell-training 6 Sep 17 19:38 datei2
root> chgrp test datei1
root> ls -l
total 4
-rw-------. 1 tester         test           0 Sep 17 19:38 datei1
-r--------. 1 shell-training shell-training 6 Sep 17 19:38 datei2
```

<div class="fragment" style="width:100%">

```bash
root> chown tester:test datei2
root> ls -l
total 4
-rw-------. 1 tester test 0 Sep 17 19:38 datei1
-r--------. 1 tester test 6 Sep 17 19:38 datei2
```

</div>

---
### umask
umask setzt den initialen Modus für neuerzeugte Dateien oder Verzeichnisse. Die Oktalnotation ist sozusagen invers. Mit umask 000 haben neue Dateien volle Berechtigungen.

```bash
shell-training> umask
0002
shell-training> umask -S
u=rwx,g=rwx,o=rx
shell-training> touch DateiA
shell-training> ls -l
total 0
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 20:45 DateiA
```

```bash
shell-training> umask 0077 # weder other, noch group sollen Berechtigungen haben
shell-training> touch DateiB
shell-training> ls -l
total 0
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 20:45 DateiA
-rw-------. 1 shell-training shell-training 0 Sep 17 20:48 DateiB
```

---
## Weitere Berechtigungsmechanismen

+ chattr, lsattr

```bash
mosdoba> ls -l
rwxrwxrwx+  3 mosdoba  staff     96  4 Sep 15:46 temp
```

+ SELinux
+ sssd, Kerberos, Active Directory
+ ...
+ pam-Authentifizierung
+ ...
+ ...
