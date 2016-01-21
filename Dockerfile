FROM            debian:jessie
MAINTAINER      Orbweb Inc. <devs@orbweb.com>

RUN             apt-get update && \
                apt-get install -y curl ca-certificates && \
                curl -s https://www.parse.com/downloads/cloud_code/installer.sh | /bin/bash

ENTRYPOINT      ["parse"]
