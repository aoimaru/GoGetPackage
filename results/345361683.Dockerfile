[app/sources/345361683.Dockerfile]
digraph {
  "sha256:1c30103f0725f26c890e5f9d718f2a713ef1b2fe9e787ad54122788bcca43ec1" [label="docker-image://docker.io/balenalib/via-vab820-quad-ubuntu:trusty-run" shape="ellipse"];
  "sha256:63b7690668b9c84ff4461aa093168b03efe5eee2543510cf58f5ff5c6b729339" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:f5f5c4f0810c035be8c43f4d3b40be0259153779302780e74766cf39ac807c15" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:9f843be4f4b14ee46891024451085d0fab191d563bd1981869d29274578fb31f" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:1d3033bd4956e554da263740983a255995395addd63475a833a1db2b303a2951" [label="mkdir{path=/go}" shape="note"];
  "sha256:94fd2f70ae09a294c6db019d34b2ef50f0f5da4353542af353689f460bb6b946" [label="sha256:94fd2f70ae09a294c6db019d34b2ef50f0f5da4353542af353689f460bb6b946" shape="plaintext"];
  "sha256:1c30103f0725f26c890e5f9d718f2a713ef1b2fe9e787ad54122788bcca43ec1" -> "sha256:63b7690668b9c84ff4461aa093168b03efe5eee2543510cf58f5ff5c6b729339" [label=""];
  "sha256:63b7690668b9c84ff4461aa093168b03efe5eee2543510cf58f5ff5c6b729339" -> "sha256:f5f5c4f0810c035be8c43f4d3b40be0259153779302780e74766cf39ac807c15" [label=""];
  "sha256:f5f5c4f0810c035be8c43f4d3b40be0259153779302780e74766cf39ac807c15" -> "sha256:9f843be4f4b14ee46891024451085d0fab191d563bd1981869d29274578fb31f" [label=""];
  "sha256:9f843be4f4b14ee46891024451085d0fab191d563bd1981869d29274578fb31f" -> "sha256:1d3033bd4956e554da263740983a255995395addd63475a833a1db2b303a2951" [label=""];
  "sha256:1d3033bd4956e554da263740983a255995395addd63475a833a1db2b303a2951" -> "sha256:94fd2f70ae09a294c6db019d34b2ef50f0f5da4353542af353689f460bb6b946" [label=""];
}

