#### Ein Terminal mit einer shell?
Woher bekomme ich das?

Jede/r benötigt einen `ssh` client zB `putty` unter Windows
[https://putty.org/](https://putty.org/)<!-- .element target="_blank" -->

MacOS User öffnen einfach ein Terminal, dort finden sie die lokale shell und dort das `ssh`
Kommando verwenden

Connection Data <!-- .element class="ta-left" -->

```bash
# User
shell-training
# Hostname/IP
ec2-3-71-84-197.eu-central-1.compute.amazonaws.com
3.71.84.197
# Port
22XY

# MacOS: open a Terminal and type
ssh -p 22XY shell-training@ec2-3-71-84-197.eu-central-1.compute.amazonaws.com
```

Portnummern: <!-- .element class="ta-left" -->

<div class="flex-row" style="font-size:0.6em">
<div>

- one &rarr; Port: 2222
- two &rarr; Port: 2223
- two &rarr; Port: 2223
- three &rarr; Port: 2224
- three &rarr; Port: 2224
- three &rarr; Port: 2224

</div>
<div>

- four &rarr; Port: 2225
- five &rarr; Port: 2226
- five &rarr; Port: 2226
- six &rarr; Port: 2227
- six &rarr; Port: 2227
- six &rarr; Port: 2227

</div>
<div>
