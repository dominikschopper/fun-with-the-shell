# Shell Training

## Our Training Presentation

1. install needed dep.s (moentarily just `live-server`)
  ```bash
  npm install
  ```

2. start the http-server to serve the presentation
  ```bash
  npm start
  ```

then open in chrome-based(!) browsers

- [the presentation in the index.html](http://localhost:8088/)

## creating docker containers for each trainee

1. create an AWS instance (currently 4GB RAM, small CPU, use a free version of AWS Linux, which is rpm based)
  **add/choose your ssh key while creating the instance**
1. login (as ec2-user) and install docker
  ```bash
    # sudo yum update # nott needed for a freshly installed instance
    sudo yum install docker
    sudo usermod -a -G docker ec2-user
    newgrp docker # get the docker group without logout/login
    sudo systemctl enable docker.service
    sudo systemctl start docker.service
    # test if it worked
    docker info
  ```
1. in a local shell<br/>
  copy the `container` folder into the aws instance
  ```bash
    cd .../fun-with-the-shell/
    scp -r container ec2-user@aws-hostname:
  ```
1. create the image from the dockerfile on the instance<br/>
  so grab the shell in the aws container again
  ```bash
    cd container
    docker build -t shell-training .
  ```
  > if an error ocurrs like "... public key not correct ..." while doing the dnf command
  > then delete the almalinux image with `docker image rm almalinux`
1. start all instances with the script `container/start-containers.sh`
  be sure to check the script has _line 6_ commented out or **nothing will happen**
1. add a rule to alloe incoming access to the ports 2021-2036 under the point security groups