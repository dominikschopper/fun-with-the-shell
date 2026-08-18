### Login without parameters and with host alias

1. Create a `.ssh/config` file on your computer
1. Create such a block in it, for example


```
Host foo-alias
    User shell-training
    Port 2244
    Hostname ec2-3-123-21-106.eu-central-1.compute.amazonaws.com
```

<div class="fragment">

Now login with<!-- .element class="ta-left" style="color:darkgreen" -->
```bash
ssh foo-alias
```

instead of<!-- .element class="red ta-left" -->
```bash
ssh -p 2244 shell-training@ec2-3-123-21-106.eu-central-1.compute.amazonaws.com
```

</div>