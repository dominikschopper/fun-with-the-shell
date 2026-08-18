## Comparing Regex Dialects

There are different RegExp parsers that have slightly different dialects.

I'm looking at the following programs here (laboriously typed from my book "Linux in a Nutshell"):
`vi`, `sed`, `gawk` (gnu awk), `grep`, `egrep` (aka `grep -E`)

Uniform in all dialects: `.`, `*`, `^`, `$`, `\` (as escape char), `[aei]`

| Description |   vi      |   sed     |  gawk    |  grep   | egrep     |
| ----------- | --------- | --------- | -------- | ------- | --------- |
| quantifier  | `\{3\}`   |  `\{3\}`  | `{3}`    | `\{3\}` |   `{3}`   |
| quant  `?`  |           |           |    `?`   |    `?`  |    `?`    |
| quant  `+`  |           |           |   `\+`   |    `+`  |    `+`    |
| capt. group | `\(a\)`   |  `\(a\)`  | `(a)`    |         |   `(a)`   |
| reuse capt. |  `\1`     |   `\1`    |          |         |   `\1`    |
| grouping    |           |           | `(a\|b)`  |         | `(a\|b)`   |
| word border | `\<` `\>` | `\<` `\>` |          |         | `\<` `\>` |

