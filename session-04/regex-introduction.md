## Regex Basics <!-- .element class="ta-left" -->

- A regular expression (= RegEx) is a search pattern
- It is supported in practically all programming languages
- The commands `grep`, `vi` or `less` use it
- But there are specific dialects (a bit like SQL) [see dialect slide](#/regex-comparison)
    - Whenever possible, enable extended syntax = simpler `\<\(\w\\+)\t`
- A RegEx usually works line by line(!) = it matches between two `\n`

### How is a Regex structured? <!-- .element class="ta-left" -->

- A character / a character class
- A quantifier
- Anchors
- Capture Groups

Regex <!-- .element class="ta-left" --> are case-sensitive!! = **Turn off with `-i` (grep) or `\c` (vi)**

Regex <!-- .element class="ta-left" --> are greedy!! = **They always match as much as they can**
