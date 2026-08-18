## Tasks for File Permissions

- Create a file `test-rights`,
    - check the permissions
    - set the permissions: &nbsp; `rw- --- ---` &nbsp; in octal (short) notation and check the permissions
    - set the permissions: &nbsp; `rw- rw- ---` &nbsp; in symbolic notation, check the permissions
    - remove the &nbsp; `w` (write) permission from everyone and try<br/>
      `echo "whatever" >> test-rights`<br/>
      to write into the file, what happens? Check with &nbsp; `cat`
    - Open the file with vi and try to save? Can you find a way? What are the permissions now?
    - Give these permissions: &nbsp;  `--- -w- ---` &nbsp; (fastest in octal!) write with `echo` into it. Did it work? What happens when you run &nbsp; `cat test-rights` &nbsp;?
- Create a directory `secret-dir`
    - Remove all permissions from everyone
    - try to move the file `test-rights` into it
    - give yourself only `w` (write) permission and try again
    - set the permissions so that everyone can use the directory, but only the owner can copy files into it. What is the octal value of these permissions?
- Where do you need which permissions to delete the file `secret-dir/test-rights`?
