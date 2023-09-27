### Regex: A Character Classes

extended syntax für `grep -E` oder `egrep`

alle Character (Classes) sind case sensitive!

- einfachste Character Class: `a` &nbsp; `e` &nbsp; `r`
- Gruppen: `[aeiou]` oder `[a-z0-9]` oder `[^r]`
- vordefinierte Gruppen z.B.:
    - `.` = ein _beliebiges_ Zeichen
    - `\w` = `[A-Za-z0-9_]` gegen `\W` = `[^A-Za-z0-9_]`
    - `\d` = `[0-9]` gegen `\D` = `[^0-9]`
    - `\s` = `[ \t\n\x0B\f\r]` gegen `\S` = `[^ \t\n\x0B\f\r]`

<p class="ta-right"><a href="#/regex-comparison">Regex Comparison</a></p>

