### Beenden von Prozessen

- `kill <PID>` beendet einen Prozess. <br/>
  Achtung! Ihr könnt die meisten Prozesse beenden, auch eure eigene Shell!
-  <!-- .element class="fragment" --> Kill Signal `-N` wobei N eine Nummer oder eine Signalname ist
-  <!-- .element class="fragment" --> Signale
    ```js
    - 1   HUP (hang up)
    - 2   INT (interrupt)
    - 3   QUIT (quit)
    - 6   ABRT (abort)
    - 9   KILL (non-catchable, non-ignorable kill)
    - 14  ALRM (alarm clock)
    - 15  TERM (software termination signal)
    ```
