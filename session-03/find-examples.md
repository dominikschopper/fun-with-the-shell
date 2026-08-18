### find examples

- find all entries in directory `gallisches-dorf` named "asterix.haus"
    ```bash
    find ./gallisches-dorf -name asterix.haus
    ```
    <!-- .element class="fragment" -->
- find all directories at your location that end with "um"
    ```bash
    find . -type d -name "*um"
    ```
    <!-- .element class="fragment" -->
- find all files from filesystem root that were modified more than 15 days ago and whose name starts with "readme", ignoring uppercase/lowercase
    ```bash
    find / -type f -ctime +15 -iname "README*"
    ```
    <!-- .element class="fragment" -->

**Important Options:**

- `-name ...` or `-iname ...`, Warning!! `*` or `?` must be quoted
- `-type` = `d`: directories, `f`: files, `l`: symbolic links
- `-mtime`, `-ctime`, `-atime` in days! With `+` or `-` or exactly!
- `-newer ref-file` Newer than reference file!
- Special case `-exec ... ` executes a command for each file
