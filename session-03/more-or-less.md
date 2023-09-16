#### `more` or `less`?

in Dateien reinschauen und dann darin suchen,<br/>
_Minimal_-Standard mit `more` oder bequemer mit `less`

<pre style="max-width: 70ch"><code style="max-width: 70ch" class="bash">
more /var/log/fake-service.log
less /var/log/fake-service.log
</code></pre>

<ul>

<li class="fragment fade-in-then-out"><strong>more</strong> = most basic pager &nbsp;
    <code>more /var/log/fake-service.log</code>
    <ul>
        <li>nur vorwärts (mit <code>[space]</code>)</li>
        <li>sonst nix</li>
    </ul>
</li>

<li class="fragment"><strong>less</strong> = the pager that does "more" &nbsp;
    <code>less /var/log/fake-service.log</code>
    <ul>
        <li>vorwärts (mit <code>[space]</code>, <code>[PgDown]</code>,
            <code>[&darr;]</code>)
        </li>
        <li>rückwärts (<code>[PgUp]</code>, <code>[&uarr;]</code>)</li>
        <li>abwärts suchen mit <code>/suchterm</code> aufwärts suchen mit
            <code>?suchterm</code>
        </li>
        <li>follow Mode mit <code>[f]<code> (Beenden mit
            <code>[Strg]+[c]<code>)
        </li>
    </ul>
</li>
</ul>

#### so much less

`less` gibt es in verschiedenen weiteren flavours

- `zless` zum direkten Öffnen von gnuzip Dateien `zless ./syslog_05.gz`
- `xzless` zum direkten Öffnen von gnuzip Dateien `xzless ./Documentation.adoc.xz`

