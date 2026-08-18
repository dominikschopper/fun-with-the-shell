Overflow from last time ...
## Filesystem Permissions

### chmod with ugo
```bash
shell-training> touch datei1
shell-training> echo Hallo > datei2
shell-training> ls -l
total 4
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 19:38 datei1
-rw-rw-r--. 1 shell-training shell-training 6 Sep 17 19:38 datei2
```

---

### Symbolic => Set X-Bit (execute permission)
```bash
shell-training> # u=user, g=group, o=other get execute permission
shell-training> chmod +x datei2
shell-training> ls -l
total 4
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 19:38 datei1
-rwxrwxr-x. 1 shell-training shell-training 6 Sep 17 19:38 datei2
```

### Symbolic => Remove X-Bit
```bash
shell-training> # actually, all others should not have execute permissions
shell-training> chmod o-x datei2
shell-training> ls -l
total 4
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 19:38 datei1
-rwxrwxr--. 1 shell-training shell-training 6 Sep 17 19:38 datei2
shell-training> # the group should not either
shell-training> chmod g-x datei2
shell-training> ls -l
total 4
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 19:38 datei1
-rwxrw-r--. 1 shell-training shell-training 6 Sep 17 19:38 datei2
```

---

### Symbolic remove all permissions (for everyone)

```bash
shell-training> # it should be that nobody has read (r), write (w) or execute (x) permissions
shell-training> chmod -rwx datei2
shell-training> ls -l
total 4
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 19:38 datei1
----------. 1 shell-training shell-training 6 Sep 17 19:38 datei2
```

### Symbolic => Set R-Bit (read permission) for the owner

```bash
shell-training> # only the owner should be able to read
shell-training> chmod u+r datei2
shell-training> ls -l
total 4
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 19:38 datei1
-r--------. 1 shell-training shell-training 6 Sep 17 19:38 datei2
```

---

### Permissions Shorthand

instead of `u=rwx,g=rx,o-rwx` you can simply write `750`

![describes conversion Unix file permissions](./images/rights-string-octal.jpg)

---
### Octal => chmod with 2 to the power of rwx

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

---

### Directories
chmod works the same way for directories. However, the permissions have slightly different effects than on regular files.
+ The read bit (r) allows the user to list files in the respective directory.
+ The write bit (w) allows the user to create, rename or delete files in the respective directory and edit directory attributes.
+ The execute bit (x) allows the user to enter the directory and access files and other directories within it.

---

### What do these permissions do exactly? (Pt1)

```bash
shell-training> # neither user, nor group, nor other should have execute permissions
shell-training> chmod ugo-x temp
shell-training> ls -ld temp
drw-rw-r--. 2 shell-training shell-training 34 Sep 17 19:38 temp
shell-training> ls -l temp/datei*
ls: cannot access 'temp/datei1': Permission denied
ls: cannot access 'temp/datei2': Permission denied
shell-training> cat temp/datei2
cat: temp/datei2: Permission denied
```
---

### What do these permissions do exactly? (Pt2)

```bash
shell-training> # what does it look like with only (x) but WITHOUT (r)?
shell-training> chmod ugo+x temp
shell-training> chmod ugo-r temp
shell-training> ls -ld temp
d-wx-wx--x. 2 shell-training shell-training 34 Sep 17 19:38 temp
shell-training> ls -l temp/
ls: cannot open directory 'temp/': Permission denied
shell-training> cat temp/datei2
Hallo
```

---

### Owner and owner group: chown, chgrp

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
```

---

### Give away a file ...

Changing the file owner requires root permissions, so
run as `root` (i.e., first `sudo -i`) or with `sudo chmod ...`

```bash
root> chown tester:test datei2
root> ls -l
total 4
-rw-------. 1 tester test 0 Sep 17 19:38 datei1
-r--------. 1 tester test 6 Sep 17 19:38 datei2
```


---

### umask
umask sets the initial mode for newly created files or directories. The octal notation is, so to speak, inverse. With umask 000, new files have full permissions.

```bash
shell-training> umask
0002
shell-training> umask -S
u=rwx,g=rwx,o=rx
shell-training> touch DateiA
shell-training> ls -l
total 0
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 20:45 DateiA
```

```bash
shell-training> umask 0077 # neither other nor group should have permissions
shell-training> touch DateiB
shell-training> ls -l
total 0
-rw-rw-r--. 1 shell-training shell-training 0 Sep 17 20:45 DateiA
-rw-------. 1 shell-training shell-training 0 Sep 17 20:48 DateiB
```

---

## Additional Permission Mechanisms

+ chattr, lsattr

```bash
mosdoba> lsattr
-------------------- ./school-of-rock
-------------------- ./deep-purple.md
```

<div class="flex-row">

- (a) - append only file.
- (A) - don't update atime.
- (c) - compress file.
- (C) - no copy-on-write.
- (d) - will not be used by dump.
- (D) - all entries written synchr.
- (e) - file uses extents for block mapping.
- (E) - encrypted on disk.
- (F) - in dir all is not case sensitive
- (h) - file is/was &gt; 2TB.

<br/>

- (i) - file won't be modified.
- (I) - dir. indexed w. hashed trees.
- (j) - journal file- &amp; metadata.
- (N) - data stored in inode
- (P) - project ids must match
- (s) - securely delete.
- (S) - changes are written synchr.
- (t) - disable tail merging.
- (T) - top level hierarchy dir.
- (u) - keep file for undeletion.
- (V) - verify read cryptographically.

</div>

Note:

- good idea
- never used it
- never intend to
- grown linux admins stumble on these
