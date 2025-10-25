### Beenden von Prozessen<!-- .element class="c-orange" -->

- Prozess <!-- .element class="fragment" -->beenden mit `kill PID`.<br/>
  Achtung! Ihr könnt die meisten Prozesse beenden, auch eure eigene Shell!
- Kill<!-- .element class="fragment" --> Signal `kill -N PID` wobei N eine Nummer oder eine Signalname ist
  und PID die Nummer des Prozesses
- Signale<!-- .element class="fragment" -->
  ```bash
  -1     -HUP     # (hang up)
  -9     -KILL    # (non-catchable, non-ignorable kill)
  -15    -TERM    # (software termination signal) = default
  ```
es gibt noch viele weitere Signale, die aber für uns nicht relevant sind!

</ul>