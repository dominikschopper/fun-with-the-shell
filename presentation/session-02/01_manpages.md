### RTFM

<p class="aleft">
    Ähnlich wie im Taskmanager, kann man sich auf dem Unix/Linux Terminal, alle laufenden
    Prozesse anzeigen lassen.
</p>

```bash
mosdoba&gt; man man
man(1)                                                                                                                        General Commands Manual                                                                                                                       man(1)

NAME
       man - format and display the on-line manual pages

SYNOPSIS
       man [-acdfFhkKtwW] [--path] [-m system] [-p string] [-C config_file] [-M pathlist] [-P pager] [-B browser] [-H htmlpager] [-S section_list] [section] name ...

DESCRIPTION
       man formats and displays the on-line manual pages.  If you specify section, man only looks in that section of the manual.  name is normally the name of the manual page, which is typically the name of a command, function, or file.  However, if name contains a slash
       (/) then man interprets it as a file specification, so that you can do man ./foo.5 or even man /cd/foo/bar.1.gz.
[..]
```

<pre><code class="language-bash">mosdoba&gt; man ps
PS(1)                                                                                                                         General Commands Manual                                                                                                                        PS(1)

NAME
     ps – process status

SYNOPSIS
     ps [-AaCcEefhjlMmrSTvwXx] [-O fmt | -o fmt] [-G gid[,gid...]] [-g grp[,grp...]] [-u uid[,uid...]] [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
     ps [-L]

DESCRIPTION
     The ps utility displays a header line, followed by lines containing information about all of your processes that have controlling terminals.
[..]
</code></pre>

