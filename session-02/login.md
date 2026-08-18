### Login

The environment after logging into a system is partly predetermined by the administrator <!-- .element class="ta-left" -->
but can also be individually customized. Depending on the distribution, different mechanisms are used.

Typical is the system-wide <!-- .element class="ta-left" -->
`/etc/profile` supplemented by personal configuration files such as<br/>
`.bashrc` or `.bash_profile` in the `HOME` directory.

<div class="fragment" style="width:100%">

```bash
mosdoba> grep "export PATH" /etc/profile
export PATH USER LOGNAME MAIL HOSTNAME HISTSIZE HISTCONTROL
```
</div>

<div class="fragment" style="width:100%">

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

</div>