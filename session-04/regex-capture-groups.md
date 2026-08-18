### Regex Capture Groups

With parentheses `(...)` pattern ranges can be delimited and saved

For example, in the input below, every word that begins with `B` should be put in quotes

```text
In Berlin findet man u.a. viele Buchhandlungen, Einige haben bereits
ihren Bankrott anmelden müssen, andere sind bei Banken verschuldet.
```

Search string: `(B[a-z])` Replacement `"$1"` or `"\1"`

`$1` or `\1` stand for the first parenthesis in the pattern, `$2` for the second, etc.

<p class="ta-right"><a href="#/regex-comparison">Regex Comparison</a></p>