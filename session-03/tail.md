### head &amp; tail

- `head` gibt die ersten 10 Zeilen aus
- `tail` gibt die letzten 10 Zeilen aus

<pre style="max-width: 85ch"><code style="max-width: 85ch" class="bash">
# logging output nach '/var/log/fake-service.log' starten
sudo start-logging.sh

head -n 3 /var/log/fake-service.log # die ersten 3 Zeilen
head /var/log/fake-service.log      # die ersten 10 Zeilen (default)
tail -n 3 /var/log/fake-service.log # die letzten 3 Zeilen
tail /var/log/fake-service.log      # die letzten 10 Zeilen (default)
</code></pre>

das ist doch alles boooring? <!-- .element class="fragment red" -->

<div class="fragment">

```bash
# logging output nach '/var/log/fake-service.log' starten
sudo start-logging.sh

# schau mal mit less in die Datei
less /var/log/fake-service.log

# dann mit tail
tail -f /var/log/fake-service.log
```

</div>