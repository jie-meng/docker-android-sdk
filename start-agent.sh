#!/bin/sh

if [ "$#" -ne 1 ] ; then
    echo "Usage: $0 master_ip" >&2
fi

docker stop android-agent-1
docker stop android-agent-2
docker stop android-agent-3
docker stop android-agent-4

docker run -d --rm --name android-agent-1 jmengxy/android-sdk:jenkins-3.15-3859397-26-26.0.2 http://$1:8080/ 5688676easdfasdfasdfadsfasdfasdfasdf android-agent-1
docker run -d --rm --name android-agent-1 jmengxy/android-sdk:jenkins-3.15-3859397-26-26.0.2 http://$1:8080/ 43566easdfasdfasdfadsfasdfasdfasdf android-agent-2
docker run -d --rm --name android-agent-1 jmengxy/android-sdk:jenkins-3.15-3859397-26-26.0.2 http://$1:8080/ 456346easdfasdfasdfadsfasdfasdfasdf android-agent-3
docker run -d --rm --name android-agent-1 jmengxy/android-sdk:jenkins-3.15-3859397-26-26.0.2 http://$1:8080/ 2346easdfasdfasdfadsfasdfasdfasdf android-agent-4
