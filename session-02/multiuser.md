## Mehrbenutzersystem

<p class="aleft">
Ein Multiuser-System ist ein Betriebssystem, dass Arbeitsumgebungen für verschiedene Benutzer bereitstellt und diese voneinander abgrenzt. Die Mehrbenutzerfähigkeit wird unter anderem durch umfassendes Zugriffsrechte-Management sichergestellt. 
</p>

### Wer bin ich und wenn ja, wieviele?
```bash
shell-training> who
shell-training pts/0        Sep 16 20:14 (84.157.82.51)

shell-training> whoami
shell-training

shell-training> id
uid=1000(shell-training) gid=1000(shell-training) groups=1000(shell-training)
```
### Lokale Nutzer hinzufügen
```bash
root> tail -3 /etc/group
ssh_keys:x:996:
sshd:x:74:
shell-training:x:1000:

root> groupadd test
root> tail -3 /etc/group
sshd:x:74:
shell-training:x:1000:
test:x:1001:

root> tail -3 /etc/passwd
systemd-resolve:x:193:193:systemd Resolver:/:/sbin/nologin
sshd:x:74:74:Privilege-separated SSH:/var/empty/sshd:/sbin/nologin
shell-training:x:1000:1000::/home/shell-training:/bin/bash

root> useradd -G test tester

root> tail -3 /etc/passwd
sshd:x:74:74:Privilege-separated SSH:/var/empty/sshd:/sbin/nologin
shell-training:x:1000:1000::/home/shell-training:/bin/bash
tester:x:1001:1002::/home/tester:/bin/bash

root> tail -3 /etc/shadow
sshd:!!:19611::::::
shell-training:$6$x4yaca8epvXC8Vw7$7dn006Vua8aM4huvJ6ZfTOPwHtOkocmVh21Me4xiZzTVghH19XKyzKJLmAWP7qfwllnKFrtZGwwPigpO3T5m7.:19612:0:99999:7:::
tester:!!:19616:0:99999:7:::
```

### Identitäten wechseln

<p class="aleft">
sudo erlaubt dem gewöhnlichen Anwender vom Admin definierte Befehle mit root-Rechten auszuführen. Es erlaubt starke Einschränkungen bis "du-darfst-alles". Das Passwort des root-Nutzers muss dafür nicht bekannt sein.
</p>

```bash
shell-training> #sudo -i startet eine root-shell
shell-training> sudo -i
root>
```

<p class="aleft">
su ändert die Identität des eingeloggten Anwenders und fragt dafür auch das Passwort des Zielusers ab.
</p>

```bash
shell-training> #su - ändert den user und zieht dessen definierte Umgebung (ähnlich Login-Prozess)
shell-training> su -
Password:
root>
```

## Dateisystemberechtigungen

### chmod mit ugo
```bash
shell-training> touch datei1
shell-training> echo Hallo > datei2
shell-training> ls -l
total 4
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 19:38 datei1
-rw-rw-r--. 1 shell-training shell-training 6 Sep 17 19:38 datei2

shell-training> # u=user, g=group, o=other erhalten Ausführungsberechtigung
shell-training> chmod +x datei2 
shell-training> ls -l
total 4
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 19:38 datei1
-rwxrwxr-x. 1 shell-training shell-training 6 Sep 17 19:38 datei2


shell-training> # eigentlich sollte die Welt keine Ausführungsberechtigungen haben
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

shell-training> # es soll doch bitte niemand Leserechte (r), Schreibrechte (w) oder Ausführungsrechte (x) haben 
shell-training> chmod -rwx datei2 
shell-training> ls -l
total 4
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 19:38 datei1
----------. 1 shell-training shell-training 6 Sep 17 19:38 datei2

shell-training> # nur der Eigentümer soll lesen können
shell-training> chmod u+r datei2
shell-training> ls -l
total 4
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 19:38 datei1
-r--------. 1 shell-training shell-training 6 Sep 17 19:38 datei2
```

### chmod mit 2 hoch x (oktal)

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

### Verzeichnisse
chmod funktioniert genauso für Verzeichnisse. Jedoch haben die Berechtigungen leicht andere Effekte als auf gewöhnlichen Dateien.
+ Das read-Bit (r) erlaubt dem Anwender Dateien im jeweiligen Verzeichnis aufzulisten.
+ Das write-Bit (w) erlaubt dem Anwender Dateien im jeweiligen Verzeichnis zu erzeugen, umzubenennen oder zu löschen und die Verzeichnisattribute zu editieren.
+ Das execute-Bit (x) erlaubt dem Anwender das Verzeichnis zu betreten und auf Dateien und andere Verzeichnisse darin zuzugreifen.

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
root> chown tester:test datei2
root> ls -l
total 4
-rw-------. 1 tester test 0 Sep 17 19:38 datei1
-r--------. 1 tester test 6 Sep 17 19:38 datei2
```

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
shell-training> umask 0077 # weder other, noch group sollen Berechtigungen haben
shell-training> touch DateiB
shell-training> ls -l
total 0
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 20:45 DateiA
-rw-------. 1 shell-training shell-training 0 Sep 17 20:48 DateiB
```


## Weitere Berechtigungsmechanismen
+ chattr, lsattr
```bash
mosdoba> ls -l
rwxrwxrwx+  3 mosdoba  staff     96  4 Sep 15:46 temp
```
+ SELinux
+ sssd, Kerberos, Active Directory
