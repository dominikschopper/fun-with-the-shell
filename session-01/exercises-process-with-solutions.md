## Exercises on Processes

- What is the difference between `ps` and `ps -f` ?
    ```
    # -f shows the process with "full" information
    ```
- What is the difference between `ps` and `ps -e` ?
    ```
    # ps shows the processes of "my" user
    # ps -e shows processes of all users
    ```
- What other parameters does the `ps` command have?<br/>
  What do you notice when searching for more parameters?
    ```
    ps --help
    # there are so many options/parameters that there are "sub"-help pages
    ```
- How can you display the PID* in the `pstree` command?
    ```
    pstree -p
    ```
- What do you notice when you run the command `ps` or `pstree` with PID* multiple times?
    ```
    # pstree displays a higher PID each time
    ```
- Run the command<br/>
  `start-logging.sh`<br/>
  and then display `pstree`.
    ```
    start-logging.sh
    pstree
    ```
- Run the command `start-logging.sh --count=2500` (use the [&uparrow;] key for this). Then display `pstree`.
    ```
    sudo /scripts/start-logging.sh --count=2500
    pstree
    > sshd(1)─┬─fake-logging.pl(2839)
    >         ├─fake-logging.pl(2845)
    ```
    ```
    pstree -a
    > sshd -D
    >   ├─fake-logging.pl /scripts/fake-logging.pl --count=2500 --min=0.1 --max=0.7
    >   ├─fake-logging.pl /scripts/fake-logging.pl --count=2500 --min=0.1 --max=0.7
    ```
- Search with `pstree` for the process started with the parameter `--count=2500` and display its PID. Then terminate it with `kill`. Verify if it worked.
    ```
    ```
- Run the command `sleep 90 &` (with `&`) and display the PID of this process. Then terminate it with the "evil" `kill -9`
    ```
    sleep 90 &
    ps
    > PID TTY          TIME CMD
    > 2799 pts/0    00:00:00 bash
    > 2867 pts/0    00:00:00 sleep
    > 2869 pts/0    00:00:00 ps
    kill -9 2867
    # it will output nothing(!) if successful
    # if you run ps afterwards, then this!!
    ps
    > PID TTY          TIME CMD
    > 2799 pts/0    00:00:00 bash
    > 2872 pts/0    00:00:00 ps
    > [1]+  Killed                  sleep 90
    ```
