<style>
    body .reveal .slides ol li { font-size: 0.95rem; }
    body .reveal .slides ol li code { line-height: 1.1rem; }
</style>
## SSH Tricks

#### Login mit ohne Passwort

1. erstelle ein ssh-Schlüsselpaar
    - mit neuer encrypt. `ssh-keygen -t ed25519 -a 100` oder
    - mit alter encrypt. `ssh-keygen -t rsa -b 4096 -o -a 100`
1. kopiere den Inhalt d. öffentl. Schlüsseldatei auf den Server ans Ende der Datei `.ssh/authorized_keys` Beim Erstellen der Datei, diese Berechtigungen
```bash
chmod 700 .ssh
chmod 600 .ssh/authorized_keys
```
1. nach jedem Reboot Deines Systems den priv. Schlüssel in Deinen `ssh-agent`.
    1. Auf dem Mac zB mit `ssh-add --apple-use-keychain ~/.ssh/privkey_rsa`<br/>
    1. Auf Linux erst &nbsp; `eval $(ssh-agent)` &nbsp; um den ssh-agent zu starten

#### Login ohne Parameter und mit Host-Alias

1. erstelle eine Datei `.ssh/config` auf Deinem Rechner
1. Erstelle darin einen solchen Block
```
Host foo-alias
     Port 22345
     User not-my-local-user
     IdentityFile $HOME/.ssh/special_ssh_key
     Hostname long.complicated-host.name-23.com
```
1. Login nun mit einem kurzen<br/>
`ssh foo-alias` &nbsp; statt mit<br/>
    `ssh -p 22345 not-my-local-user@long.complicated-host.name-23.com`