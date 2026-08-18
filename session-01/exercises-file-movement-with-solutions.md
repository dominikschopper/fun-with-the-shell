## Exercises on Moving/Creating/Deleting

It is not allowed to type existing paths/filenames. Always enter only the next required letters!

- what directory are you currently in?
    ```
    pwd
    ```
- navigate to the directory `gallisches-dorf`
    ```
    cd g<tab><enter>
    ```
- go back to the previous directory (check with `pwd`)
    ```
    cd ..
    ```
- can you find an "abbreviation command" for this?
    ```
    cd - # or
    cd   # always goes back to the home directory
    ```
- go to the parent directory (check with `pwd`)
    ```
    cd ..
    pwd
    ```
- go to your home directory using an absolute path.
    ```
    cd /home/shell-training
    ```
- copy the file `asterix.haus` into the directory `obelix` with the name `asterix-ferienhaus`
    ```
    cp g<tab>/a<tab>/<tab> g<tab>/o<tab>/asterix-ferienhaus
    ```
- delete the file `asterix-ferienhaus` using the **absolute** path!
    ```
    rm /h<tab>/s<tab>/g<tab>/o<tab>/a<tab>
    # check with [↑] [pos1] replace rm with ls
    ```
- copy the directory `miraculix` with its contents in the folder `gallisches-dorf` the target directory should be named `zweiter-druide`. Also rename the new house file to `zweiter-druide.haus`
    ```
    cp -r g<tab>/m<tab> g<tab>/zweiter-druide
    mv g<tab>/z<tab>/<tab> g<tab>/z<tab>/zweiter-druide.haus
    # alternatively
    mkdir g<tab>/zweiter-druide
    mv m<tab>/<tab> z<tab>/zweiter-druide.haus
    # more alternatives possible
    ```
- delete the newly created directory
    ```
    rm -r g<tab>/z<tab>
    ```
- can you find a way to create the directory `methusalix` and the subdirectory `methusalix/scheune` with a single command?
    ```
    mkdir -p g<tab>/methusalix/scheune # -p creates "parent" directories as well
    ```
- what does `ls -a` show you?
    ```
    # all "hidden" files = files that start with a "."
    # included in every directory are the entries "." and ".."
    ```
- delete `methusalix` and subdirectories using `rmdir`
    ```
    rmdir g<tab>/me<tab>/<tab>
    rmdir g<tab>/me<tab>
    ```
- create a copy with the following command `sudo cp ./miraculix/miraculix.haus ./miraculix/2miraculix.haus`. What do you notice about the created files? What happens if you try to delete them with `rm -r`? Why?
    ```
    sudo cp g<tab>/m<tab>/<tab> g<tab>/m<tab>/2miraculix.haus
    # sudo executes (by default) a command as the "root" user
    ls -l gallisches-dorf/miraculix/
    -rw-r--r--. 1 root           root           1751 Sep 17 17:36 2miraculix.haus
    -rw-r--r--. 1 shell-training shell-training 1751 Sep 15 06:17 miraculix.haus
    # since the "cp" command was executed as "root", this file now belongs to "root"
    # rm by default asks for permission, but can be forced with "-f"
    ```
