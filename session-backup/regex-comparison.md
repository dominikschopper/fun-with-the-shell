## comparing regex dialects

Es gibt unterschiedliche RegExp Parser, die leicht unterschiedliche Dialekte haben.

Ich schaue mir hier (aus meinem Buch "Linux in a Nutshell" mühsam abgetippt) folgende Programme an:
`vi`, `sed`, `gawk` (gnu awk), `grep`, `egrep` (aka `grep -E`)

in allen Dialekten einheitlich: `.`, `*`, `^`, `$`, `\` (als escape char), `[aei]`

| Beschr.     |   vi      |   sed     |  gawk    |  grep   | egrep     |
| ----------- | --------- | --------- | -------- | ------- | --------- |
| quantif.    | `\{3\}`   |  `\{3\}`  | `{3}`    | `\{3\}` |   `{3}`   |
| quant  `?`  |           |           |    `?`   |    `?`  |    `?`    |
| quant  `+`  |           |           |   `\+`   |    `+`  |    `+`    |
| capt.group  | `\(a\)`   |  `\(a\)`  | `(a)`    |         |   `(a)`   |
| reuse capt. |  `\1`     |   `\1`    |          |         |   `\1`    |
| grouping    |           |           | `(a|b)`  |         | `(a|b)`   |
| word border | `\<` `\>` | `\<` `\>` |          |         | `\<` `\>` |

