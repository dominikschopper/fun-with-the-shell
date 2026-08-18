### head & tail

- `head` outputs the first 10 lines
- `tail` outputs the last 10 lines

<pre style="max-width: 90ch"><code style="max-width: 90ch" class="bash">
# start logging output to '/var/log/fake-service.log'
sudo /scripts/start-logging.sh

head -n 3 /var/log/fake-service.log # the first 3 lines
head /var/log/fake-service.log      # the first 10 lines (default)
tail -n 3 /var/log/fake-service.log # the last 3 lines
tail /var/log/fake-service.log      # the last 10 lines (default)
</code></pre>

that's all boring? <!-- .element class="fragment red" -->

<div class="fragment">

```bash
# start logging output to '/var/log/fake-service.log'
sudo /scripts/start-logging.sh

# look into the file with more/less
more /var/log/fake-service.log

# then with tail
tail -f /var/log/fake-service.log
```

</div>