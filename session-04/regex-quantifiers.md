### Regex Quantifiers

in extended Syntax

- `a{2}` = `aa`
- `a{2,4}` = `aa` oder `aaa` oder `aaaa`
- `a{0,1}` = kein `a` oder ein `a`
- `a{1,}` = ein bis beliebieg oft `a`
- vordefinierte Quantifier
    - `?` = `{0,1}`
    - `*` = `{0,}`
    - `+` = `{1,}`

<div class="fragment mrg-top-lg">

#### Standard Grep

- Quantifier mit `\{` und `\}` also `a\{1,2\}`
- vordefinierte Quantifier `\?`, `\*`, `\+`

</div>