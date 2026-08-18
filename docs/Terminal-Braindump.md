# Fun with Linux and the Shell

Concept for a brief, concise introduction to Linux basics and the terminal

## Linux Concepts

### Basics

Multi-Tasking & Multi-User OS!

- Everything is a file (!)
- Commands are small & focused
- Commands can be chained

### Linux Flavours

### Linux Directory Structure

## Processes & System Boot

- Process concept
- User (uid, euid, root, normal user, su, sudo)
- Device files
- Commands: `ps`, `top|htop`, `lsof`, `mount`

## Terminal & Shell

### Basics

- Different shells => Default `bash` (next-gen `zsh`)
- Shell history
- Files and directories
  - File system (Inode based FS)
  - Hidden files/directories
  - File permissions (`ls`, `chmod`, `chown`, `chgrp`, `inode`)
- Configuration options (`/etc/bash.profile`, `/etc/bashrc`, `~/.bash_profile`)
- Shell Completion
- aliases (and functions)
- Important system variables
- Wildcards
- `man`, `apropos`

### Navigation & creating

- `cd`, `ls`, `pwd`
- Create directories/files `mkdir (-p)`, `touch`, `echo`

### Creating, reading, deleting files & finding

- `find`, `locate`
- `mkdir` create new directory: <kbd>mkdir &lt;directory name&gt;</kbd>
- `cp` copy files: <kbd>cp &lt;source&gt; &lt;target&gt;</kbd>
    multiple options available: <kbd>cp -i ...</kbd>, <kbd>cp -R ...</kbd>
- `mv` move and rename files and directories: <kbd>mv &lt;source&gt; &lt;target&gt;</kbd>
- `rm`, `rmdir` delete files and directories: <kbd>rm [-options] &lt;filename&gt;</kbd>, <kbd>rmdir &lt;directory name&gt;</kbd>
    delete recursive, force deletion of non-empty directory: <kbd>rm -rf</kbd>
- `ln`    create (symbolic) links, make files and directories available in a different location: <kbd>ln -s &lt;target&gt; &lt;link name&gt;</kbd>
    calling <code>ln</code> without <code>-s</code> option, creates hard links.
- `cat`    concatenate files and print to standard out: <kbd>cat [-options] &lt;files&gt;</kbd>
    using <code>-</code> instead of <code>&lt;filenames&gt;</code> reads from standard input
- `less`
- `grep` simple usage

## User Info and Switching Users

- `who`, `w`, `whoami`
- `sudo`, `su`

## THE EDITOR

- nano
- vi modes (command, edit, ex) and how to switch
- basics (edit, save, open, copy/del text)

## Networking

- Commands: `ifconfig`, `netstat`, `ping`, `telnet`

## Connecting to Other Hosts

- `telnet`
-  `ssh`, `scp`

## Processes and Process Management

- `ps`, `top`, `htop`, `nice`, `pstree`
- Working Habit environments (aliases, Var.)
- Process environments (basis for Docker)

## Shell Coding

- Variables
- Control Structures
- sub-shells
