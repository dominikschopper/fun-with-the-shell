### find

Search for files that:

- end with ".doc" in the filename
- directories that ...
- are older than X days
- are larger/smaller than X bytes

The tool of choice is `find`

find has a few "small" peculiarities:

- long parameters with a `-` prefix, such as `find ... -name foo.txt`
- for numeric specifications "greater than" is a `+` "less than" is a `-`

#### find command structure

```bash
find <startdir> -type d -name xyz ...
# Memory aid: find from <startdir> all "directories" named "xyz"
```
