## Exercises on Processes<!-- .element class="c-blue" -->

<div class="colored-code">

- What is the difference between `ps`, `ps -f` and `ps -e`?
- What other parameters does the `ps` command have?
    - What do you notice when searching for more parameters?
- How can you display the PID<sup>*</sup> in the `pstree` command?
- What do you notice when you run the command `ps` or `pstree` with PID<sup>*</sup> multiple times?
- Run the command<br/>
  `start-logging.sh`<br/>
  and then display `pstree`.
- Run the command `fake-logging.pl --count=1500`. Then display `pstree`.
- Search with `pstree` for the process started with the parameter `--count=1500` and display its PID. Then terminate it with `kill`. Verify if it worked.
- Search for it with `ps`
- Run the command `sleep 90 &` (with &) and display the PID<sup>*</sup> of this process. Then terminate it with the "evil" `kill -9`

</div>

<sup>*</sup>PID = Process ID
