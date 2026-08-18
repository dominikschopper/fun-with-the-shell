#### `more` or `less`?

Look into files and then search within them,<br/>
_Minimal_ standard with `more` or more comfortable with `less`

<pre style="max-width: 70ch"><code style="max-width: 70ch" class="bash">
more /var/log/fake-service.log
less /var/log/fake-service.log
</code></pre>

<ul>

<li class="fragment fade-in-then-out"><strong>more</strong> = most basic pager &nbsp;
    <code>more /var/log/fake-service.log</code>
    <ul>
        <li>forward only (with <code>[space]</code>)</li>
        <li>nothing else</li>
    </ul>
</li>

<li class="fragment"><strong>less</strong> = the pager that does "more" &nbsp;
    <code>less /var/log/fake-service.log</code>
    <ul>
        <li>forward (with <code>[space]</code>, <code>[PgDown]</code>,
            <code>[&darr;]</code>)
        </li>
        <li>backward (<code>[PgUp]</code>, <code>[&uarr;]</code>)</li>
        <li>search downward with <code>/search-term</code> search upward with
            <code>?search-term</code>
        </li>
        <li>follow mode with <code>[f]</code> (exit with
            <code>[Ctrl]+[c]</code>)
        </li>
    </ul>
</li>
</ul>

<div class="fragment">

#### so much less

`less` comes in various other flavors

- `zless` to directly open gzip files `zless ./syslog_05.gz`
- `xzless` to directly open xz compressed files `xzless ./Documentation.adoc.xz`

</div>
