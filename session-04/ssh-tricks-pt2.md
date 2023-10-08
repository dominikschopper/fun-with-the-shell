### Login ohne Parameter und mit Host-Alias

1. erstelle eine Datei `.ssh/config` auf Deinem Rechner
1. Erstelle darin z.B. einen solchen Block


```
Host foo-alias
    User shell-training
    Port 2244
    Hostname ec2-3-123-21-106.eu-central-1.compute.amazonaws.com
```

<div class="fragment">

Login nun mit<!-- .element class="ta-left" style="color:darkgreen" -->
```bash
ssh foo-alias
```

statt mit<!-- .element class="red ta-left" -->
```bash
ssh -p 2244 shell-training@ec2-3-123-21-106.eu-central-1.compute.amazonaws.com
```

</div>