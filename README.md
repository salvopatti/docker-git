# A simple docker image to use git isolated in a container

## Setup
Add the public ssh key, named id_rsa.pub, in the same folder as the Dockerfile.

Build the image: 
```shell
docker build -t gitdocker_base .
```
Create alias: 
```shell
alias dockergit='docker run --rm -ti --volume `pwd`:/app gitdocker_base'
```

## Usage

```shell
dockergit clone git@github.com:someuser/somerepo.git
```