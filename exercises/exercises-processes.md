## Exercises on Processes<!-- .element class="c-blue" -->


- What is the difference between `ps` and `ps -f` ?
- What is the difference between `ps` and `ps -e` ?
- What other parameters are available for the `ps` command?<br/>
  What do you notice when searching for additional parameters?
- How can you display the PID* in the `pstree` command?
- What do you notice when you run the `ps` or `pstree` command with PID* multiple times?
- Run the command<br/>
  `start-logging.sh`<br/>
  Then display `pstree`.
- Run the command `start-logging.sh --count=2500` and display the results.
- Use `pstree` to find the process that was started with the parameter `--count=2500` and display its PID. Then terminate it with `kill`. Verify that it worked.
- Run the command `sleep 90 &` (with `&`) and display the PID of this process. Then terminate it with the "nasty" `kill -9`

*PID = Process ID!!!
