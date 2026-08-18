### How do Files Work?

#### Filesystem Basics

- Filesystems are **inode-based**, inodes contain metadata for all entries: `stat filename`
- <!-- .element class="fragment" -->e.g., they contain for each entry in the FS
    - Timestamps (atime, mtime, ctime)
    - Permissions (Owner, Groups, Rights, ...)
    - the IDs of the data blocks and the
    - Link count
- <!-- .element class="fragment" -->Directories contain the reference to the inode and
    **the file name** (a "link")
- <!-- .element class="fragment" -->Inodes with link count 0 are free
- <!-- .element class="fragment" -->The size of the data blocks (and the number of inodes) are configurable
- <!-- .element class="fragment" -->You can create multiple so-called `hard links` to files without duplicating the content
    ```bash
    # hard linking
    ln ./file1 /somewhere/else/other-name
    ls -li ./file1 /somewhere/else/other-name
    ```


---


#### Hard Links

- The directory entries `.` and `..` are hard links to the current directory and are created automatically
when the directory is created
- Hard links can only be created within the same filesystem

#### Soft Links vs Hard Links

So-called soft links are actually just text files that refer to the original

```bash
# soft linking
ln -s ./file2 /other/location/other-name
ls -li ./file2 /other/location/other-name
```

lorem