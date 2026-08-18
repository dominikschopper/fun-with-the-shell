# Schedule

## General Structure

- 4 sessions of 2 hours in-person spread over 2-4 weeks.
- At the end of the first three sessions, exercises are distributed that should be completed by the next meeting
- The last three sessions therefore always start with clarification of the exercises and repeat of the material from the previous session

## Session Topics

### 0. Preparation
- VirtualBox with AlmaLinux (possibly in groups)

### 1. Session

- History of Unix/Linux
  - Family tree
  - Solaris, FreeBSD, MacOS, Linux
- Comparison Windows/Unix
  - Process table (Task Manager/pstree)
  - CMD/Shell
- Process tree (`ps`, `pstree`, `top`, `htop`, `/proc`)
- Displaying processes
- Terminating processes
- What is the shell
- Absolute and relative path specifications
- Navigating the directory tree and creating/deleting files/directories (`cd`, `pwd`, `ls`, `mkdir`, `touch`, `echo`, `rm`, `rmdir`)
#### Exercises:
  - Creating and deleting files relatively and absolutely
  - Creating links (symbolic and hard)
  - Research exercise: "Difference between symbolic/hard links"
  - Creating and deleting a file named `*` and a file named `-i`

### 2. Session

- Discussion of exercises
- Man pages
- Aliases
- Global variables `PATH`, `HOME`
- Starting the shell (global and local `bash_profile`, `bashrc`) resuming variables
- Process environment (`set`, `env`)
- How bash interprets the command line
- Brief excursion into the file system
- Searching for files and their contents (`find`, `grep`)
- Multi-user concept (groups and users)
  - whoami
  - id
  - useradd
  - groupadd
  - /etc/passwd, /etc/shadow, /etc/groups
  - sudo
- Directories and files and their permissions (`rwx`, `chmod`, `chown`, `umask`, `chgrp`) - possibly also attribute system `lsattr`, `chattr`
- Executing shell scripts (`source`, `bash ...`, `chmod 700 + #!`)
#### Exercises:
  - Setting aliases, manually and in `bashrc`
  - Setting local and global variables and script execution


### 3. Session

- Discussion of exercises
- Viewing file ends with `head` and `tail`
- Terminal editors
- VIM editor
  - the three modes of VIM
  - Editing, saving (exiting)
  - Configuration `vimrc`
- Nano editor
- Opening files with `less`
  - Navigation
  - Searching
  - "Follow" mode
- Packing and unpacking
#### Exercises
  - Idea: set up your own service on a virtual machine (Jenkins, Gitlab?, ...)


### 4. Session

- Discussion of exercises
- What is a Linux distribution?
  - RHEL: RockyLinux, AlmaLinux (RHEL Clones)
- Connecting to remote hosts via `ssh` and `scp`


-----


```bash
#!/bin/bash

cd $HOME

# helper  -------
function printContentFor() {
   inhabitant=$1 # asterix|troubadix|miraculix|obelix
   content=""

   if [[ $inhabitant == "asterix" ]]
   then
       content="
       The house of the cleverest warrior
       who likes to eat wild boar
       and likes to sing and laugh with his buddy Obelix"

   elif [[ $inhabitant == "troubadix" ]]
   then
       content="
       The tree house of our musician
       he sings and makes music as much as he can
       He rarely gets wild boar, since he is often
       tied up at feasts"
   elif [[ $inhabitant == "miraculix" ]]
   then
       content="
       The house of the druid
       here the magic potion is brewed
       and Obelix never gets any of it"
   elif [[ $inhabitant == "obelix" ]]
   then
       content="The house of the menhir deliveryman
       Asterix's best friend, with whom
       he likes to laugh and sing and above all eat wild boar
       However, Miraculix only gives him magic potion on rare occasions"
   fi
   echo -e "$content\n"
}

# main -------
# create gallician village
mkdir -p $HOME/gallisches-dorf/{asterix,troubadix,miraculix,obelix}
cd $HOME/gallisches-dorf

for name in *
do
   cd $name
   printContentFor $name > $name.haus
   cd -
done

# create roman camps
mkdir -p $HOME/roemische-lager/{babaorum,kleinbonum,laudanum,aquarium}
cd $HOME/roemische-lager

for name in *
do
   cd $name
   echo "The tent of the centurion of $name" > $name-centurio.zelt
   cd -
done

```
