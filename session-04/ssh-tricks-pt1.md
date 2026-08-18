## SSH Tricks

#### Login without password

<div class="mrg-left-xl">

1. Create an SSH key pair
    - with new encryption `ssh-keygen -t ed25519 -a 100` or
    - with old encryption `ssh-keygen -t rsa -b 4096 -o -a 100`
1. Copy the content of the public key file to the server, to the end of the `.ssh/authorized_keys` file.
Set the file to 600 when creating
```bash
# Create .ssh directory on remote server
ssh user@server "mkdir .ssh -m 700"
# Copy the content of your public key to the server
cat .ssh/my-public-keyfile | ssh user@server "tee >> .ssh/authorized_keys"
# Make the file readable only for the owner
ssh user@server "chmod 600 .ssh/authorized_keys"
```
From now on you will only be asked for the passphrase of the key when logging in!<!-- .element class="fragment" style="color:darkgreen;" -->

1. After each reboot of your system, add the private key to your ssh-agent.
    1. On Mac, for example with `ssh-add --apple-use-keychain ~/.ssh/private-keyfile`<br/>
    1. On Linux first run &nbsp; `eval $(ssh-agent)` &nbsp; to start the ssh-agent
       and then `ssh-add ~/.ssh/private-keyfile`.

From now on you will no longer be asked for the key's passphrase!<!-- .element class="fragment" style="color:darkgreen;" -->

</div>