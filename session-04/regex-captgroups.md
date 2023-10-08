### Regex Capture Groups

Mit Klammern `(...)` können Pattern-Bereiche abgegrenzt und auch gespeichert werden

zB im u.a. Input soll jedes Wort, das mit `B` beginnt in Anführungszeichen gesetzt werden

```text
In Berlin findet man u.a. viele Buchhandlungen, Einige haben bereits
ihren Bankrott anmelden müssen, andere sind bei Banken verschuldet.
```

Suchstring: `(B[a-z])` Ersetzung `"$1"` bzw. `"\1"`

`$1` oder `\1` stehen dafür für die erste Klammer im Muster, `$2` für die Zweite ...

<p class="ta-right"><a href="#/regex-comparison">Regex Comparison</a></p>