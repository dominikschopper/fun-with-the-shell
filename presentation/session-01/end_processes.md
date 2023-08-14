### Beenden von Prozessen

<ul>
<li>
    <code>kill PID</code> beendet einen Prozess. <br/>
    Achtung! Ihr könnt die meisten Prozesse beenden, auch eure eigene Shell!
</li>
<li class="fragment">
    Kill Signal <code>-N</code> wobei N eine Nummer oder eine Signalname ist
</li>
<li class="fragment">
    Signale

```bash
-1     -HUP     # (hang up)
-2     -INT     # (interrupt)
-3     -QUIT    # (quit)
-6     -ABRT    # (abort)
-9     -KILL    # (non-catchable, non-ignorable kill)
-14    -ALRM    # (alarm clock)
-15    -TERM    # (software termination signal)
```
</li>
</ul>