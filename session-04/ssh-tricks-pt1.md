## SSH Tricks

#### Login mit ohne Passwort

<div class="mrg-left-xl">

1. erstelle ein ssh-Schlüsselpaar
    - mit neuer encrypt. `ssh-keygen -t ed25519 -a 100` oder
    - mit alter encrypt. `ssh-keygen -t rsa -b 4096 -o -a 100`
1. kopiere den Inhalt d. öffentl. Schlüsseldatei auf den Server, dort ans Ende der Datei `.ssh/authorized_keys`.
Beim Erstellen der Datei auf 600 setzen
```bash
# .ssh Verz. auf remote Server erstellen
ssh user@server "mkdir .ssh -m 700"
# kopiere den Inhalt deines Pub-Keys auf den Server
cat .ssh/my-public-keyfile | ssh user@server ">> .ssh/authorized_keys"
# mache die Datei nur für den Besitzer lesbar
ssh user@server "chmod 600 .ssh/authorized_keys"
```
ab jetzt wirst Du beim Login nur noch nach der Passphrase des Schlüssels gefragt!<!-- .element class="fragment red" -->

1. nach jedem Reboot Deines Systems den priv. Schlüssel in Deinen `ssh-agent`.
    1. Auf dem Mac zB mit `ssh-add --apple-use-keychain ~/.ssh/private-keyfile`<br/>
    1. Auf Linux erst &nbsp; `eval $(ssh-agent)` &nbsp; um den ssh-agent zu starten
       und dann `ssh-add ~/.ssh/private-keyfile`.

ab jetzt wirst Du nicht mehr nach der Passphrase des Schlüssels gefragt!<!-- .element class="fragment red" -->

</div>