## Mehrbenutzersystem

Ein Multiuser-System ist ein Betriebssystem, dass Arbeitsumgebungen <!--.element class="ta-left" -->
für verschiedene Benutzer bereitstellt und diese voneinander abgrenzt.
Die Mehrbenutzerfähigkeit wird unter anderem durch umfassendes
Zugriffsrechte-Management sichergestellt.

<div class="fragment" style="width:100%">

### Wer bin ich und wenn ja, wieviele?
```bash
shell-training> who
shell-training pts/0        Sep 16 20:14 (84.157.82.51)

shell-training> whoami
shell-training

shell-training> id
uid=1000(shell-training) gid=1000(shell-training) groups=1000(shell-training)
```

</div>

---
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
```

---

```bash
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
---
### Identitäten wechseln

<p class="ta-left">
sudo erlaubt dem gewöhnlichen Anwender vom Admin definierte Befehle mit root-Rechten auszuführen. Es erlaubt starke Einschränkungen bis "du-darfst-alles". Das Passwort des root-Nutzers muss dafür nicht bekannt sein.
</p>

```bash
shell-training> #sudo -i startet eine root-shell
shell-training> sudo -i
root>
```

<p class="ta-left">
su ändert die Identität des eingeloggten Anwenders und fragt dafür auch das Passwort des Zielusers ab.
</p>

```bash
shell-training> #su - ändert den user und zieht dessen definierte Umgebung (ähnlich Login-Prozess)
shell-training> su -
Password:
root>
```

</div>
