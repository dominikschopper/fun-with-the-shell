### Regex: B Quantifiers

In extended syntax

- `a{2}` = `aa`
- `a{2,4}` = `aa` or `aaa` or `aaaa`
- `a{0,1}` = no `a` or one `a`
- `a{1,}` = one to any number of `a`s
- Predefined quantifiers
    - `?` = `{0,1}`
    - `*` = `{0,}`
    - `+` = `{1,}`

<div class="fragment mrg-top-lg">

#### Standard Grep

- Quantifier with `\{` and `\}` so `a\{1,2\}`
- Predefined quantifiers `\?`, `\*`, `\+`

</div>