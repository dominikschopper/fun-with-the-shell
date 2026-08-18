### RTFM

If you don't like the ads on Stack Overflow or have a slow internet connection,
you can use the locally installed documentation.
The EXAMPLES sections are particularly recommended.

By default, `less` is used as the pager. This means searching is done with "/". Exit with "q".

```bash
mosdoba> man man
man(1)                         General Commands Manual                          man(1)

NAME
       man - format and display the on-line manual pages

SYNOPSIS
       man [-acdfFhkKtwW] [--path] [-m system] [-p string] [-C config_file] [-M pathlist]
            [-P pager] [-B browser] [-H htmlpager] [-S section_list] [section] name ...

DESCRIPTION
       man formats and displays the on-line manual pages. If you specify section,
         man only looks in that section of the manual.  name is normally the name
         of the manual page, which is typically the name of a command, function, or file.
[..]
```

```bash
mosdoba> man ps
PS(1)                         General Commands Manual                            PS(1)

NAME
     ps – process status

SYNOPSIS
     ps [-AaCcEefhjlMmrSTvwXx] [-O fmt | -o fmt] [-G gid[,gid...]] [-g grp[,grp...]]
        [-u uid[,uid...]] [-p pid[,pid...]] [-t tty[,tty...]] [-U user[,user...]]
     ps [-L]

DESCRIPTION
     The ps utility displays a header line, followed by lines containing information
     about all of your processes that have controlling terminals.
[..]
```

Notes:

- `man -k keyword` to search for topics
- `apropos keyword` same
