# docker-android-sdk

This repo is origined from
[zhywang/android-sdk-docker](https://github.com/zhywang/android-sdk-docker)

This repo contains the Dockerfile of Android SDK Docker Image, you can get the image from [Docker Hub](https://hub.docker.com/r/jmengxy/android-sdk).

The image is based on Debian Jessie backports and OpenJdk8.

## Version

The image is tagged in format `$ANDROID_SDK_VERSION-$ANDROID_VERSION-$ANDROID_BUILD_TOOLS_VERSION`

For example, tag `24.4.1-25-25.0.1` means with Android SDK 24.4.1, Android 7.1.1 and Build Tools 25.0.1.


## Add docker agent node for Jenkins Steps

- Jenkins -> Manage Jenkins -> Configure Global Security -> TCP port for JNLP agents Fixed : (any port)

- Jenkins -> Build executors -> New Node -> { name: android-agent-1, of executors: 1, Remote directory: /opt/jenkins, Label: android, Usage: Only build jobs with label expressions matching this node, Launch method: Launch agent via Java Web Start, Availability: Keep this agent online as much as possible }

- start agent command `docker run -d --rm --name android-agent-1 jmengxy/android-sdk:jenkins-3.15-3859397-26-26.0.2  http://(ip):8080 (secret) android-agent-1`
