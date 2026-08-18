### Terminating Processes<!-- .element class="c-orange" -->

- Terminate a process<!-- .element class="fragment" --> using `kill PID`.<br/>
  Caution! You can terminate most processes, even your own shell!
- Send a kill<!-- .element class="fragment" --> signal using `kill -N PID` where N is a number or a signal name
  and PID is the process number
- Signals<!-- .element class="fragment" -->
  ```bash
  -1     -HUP     # (hang up)
  -9     -KILL    # (non-catchable, non-ignorable kill)
  -15    -TERM    # (software termination signal) = default
  ```
there are many more signals, but they are not relevant for us!

</ul>
