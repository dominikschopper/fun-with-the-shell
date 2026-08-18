### Regex: A Character Classes

Extended syntax for `grep -E` or `egrep`

All character classes are case sensitive!

- Simplest character class: `a` &nbsp; `e` &nbsp; `r`
- Groups: `[aeiou]` or `[a-z0-9]` or `[^r]`
- Predefined groups e.g.:
    - `.` = any _arbitrary_ character
    - `\w` = `[A-Za-z0-9_]` vs `\W` = `[^A-Za-z0-9_]`
    - `\d` = `[0-9]` vs `\D` = `[^0-9]`
    - `\s` = `[ \t\n\x0B\f\r]` vs `\S` = `[^ \t\n\x0B\f\r]`

<p class="ta-right"><a href="#/regex-comparison">Regex Comparison</a></p>

