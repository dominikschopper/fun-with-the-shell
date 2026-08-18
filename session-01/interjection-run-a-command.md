### Typing a Command<!-- .element class="c-purple" -->
(Part 1)

Let's take a step back: How can we simply execute a binary by typing a word?<!-- .element class="c-pink" -->

- <!-- .element class="fragment" --> the first "word" of an input line must be an executable or the filename of an executable binary.
- <!-- .element class="fragment" --> the command <u class="c-orange">must contain a full path</u>
- <!-- .element class="fragment" --> <u class="c-green">unless</u>, the command is located in a directory in the <code class="c-green">$PATH</code> variable
    - <!-- .element class="fragment" --> What directories are in $PATH? Display with &nbsp; <code>echo $PATH</code>
    - <!-- .element class="fragment" --> more details on that later

notes:

- always use auto-complete! with the [Tab]
- commands can also be auto-completed
