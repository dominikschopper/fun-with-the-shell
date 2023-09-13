## comparing regex dialects

<style>
    html .reveal table td, html .reveal table th,
    html .reveal table tbody tr:last-child th,
    html .reveal table tbody tr:last-child td { border: 1px solid black; }
</style>

| Beschr.     |   ed    |   vi      |  sed    |  gawk    |  grep   | egrep    |
| ----------- | ------- | --------- | ------- | -------- | ------- | -------- |
| char.class  | `[ae]`  | `[ae]`    | `[ae]`  | `[ae]`   | `[ae]`  | `[ae]`   |
| quantif.    | `\{3\}` | `\{3\}`   | `\{3\}` | `{3}`    | `\{3\}` | `{3}`    |
| quant   ?   |         |           |         |    `?`   |    `?`  |    `?`   |
| quant   +   |         |           |         |    `+`   |    `+`  |    `+`   |
| capt.group  | `\(a\)` | `\(a\)`   | `\(a\)` | `(a)`    |         | `(a)`    |
| reuse capt. |  `\1`   |  `\1`     |  `\1`   |          |         |          |
| grouping    |         |           |         | `(a\|b)` |         | `(a\|b)` |
| grouping    |         |           |         | `(a\|b)` |         | `(a\|b)` |
| word border |         | `\<` `\>` |         |          |         |          |


