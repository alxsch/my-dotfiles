#!/bin/sh

alias dklf='docker logs -f'
alias dkt='docker stats --format "table {{.Name}}\t{{.CPUPerc}}\t{{.MemUsage}}\t{{.NetIO}}"'
alias dkps="docker ps --format '{{.ID}} ~ {{.Names}} ~ {{.Status}} ~ {{.Image}}'"

#Docker-compose
alias dkcupdate="docker-compose pull && docker-compose up -d"
alias dkcpull="docker-compose pull"
alias dkcrestart="docker-compose restart"
alias dkcup="docker-compose up"

#Generate dockercompose project
dockerinit () {
    mkdir "$1" && \
    echo "---
version: \"3\"

services:

    app:
        image: app
        ports:
            - \"##:##\"

environment:
    TEST_VAR=test" > "$1"/docker-compose.yml;
}

dkcupdateall(){
    find /main-pool/data/configs/dockercompose/ -iname "docker-compose.yml" -print 2>/dev/null
    docker-compose pull && docker-compose up -d
}

dkclean() {
  docker rm "$(docker ps --all -q -f status=exited)"
  docker volume rm "$(docker volume ls -qf dangling=true)"
}

dkprune() {
  docker system prune -af
}

dktop() {
  docker stats --format "table {{.Container}}\t{{.Name}}\t{{.CPUPerc}}  {{.MemPerc}}\t{{.NetIO}}\t{{.BlockIO}}"
}

dkstats() {
  if [ $# -eq 0 ]
    then docker stats --no-stream;
    else docker stats --no-stream | grep "$1";
  fi
}

alias dkupause="docker unpause $(docker ps -q)"
alias dkpause="docker pause $(docker ps -q)"
