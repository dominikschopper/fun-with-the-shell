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
-9     -KILL    # (non-catchable, non-ignorable kill)
-15    -TERM    # (software termination signal)
```
es gibt noch viele weitere Signale, die aber für uns nicht relevant sind!
</li>
</ul>