### Anmeldung

<p class="aleft">
    Die Umgebung nach dem Login in ein System ist teils vom Administrator vorgegeben, kann aber auch individuell festgeschrieben werden.
    Je nach Distribution greifen unterschiedliche Mechanismen. Üblich ist die systemweite /etc/profile ergänzt um persönliche Konfigurationsdateien wie .bashrc oder .bash_profile im HOME-Verzeichnis.
</p>


```bash
mosdoba> grep "export PATH" /etc/profile
export PATH USER LOGNAME MAIL HOSTNAME HISTSIZE HISTCONTROL
```

```bash
mosdoba> cat .bashrc
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
```
