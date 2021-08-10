[app/sources/345367981.Dockerfile]
digraph {
  "sha256:d45f550eea5f9234d071e46c87d9bccb1413ee5ea03bf91d7812316c2b0f2679" [label="docker-image://docker.io/balenalib/artik530-ubuntu:xenial-run" shape="ellipse"];
  "sha256:81fab5977e2b2c84726e3edf92325fd9860453d6d98c0bb3cce37fd17c656548" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tlibc6-dev \t\tmake \t\tpkg-config \t\tgit \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:60c10331a3c53198606937d7d6ede98e3a8e07704300fabcded75398bbdfde31" [label="/bin/sh -c set -x \t&& fetchDeps=' \t\tcurl \t' \t&& apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* \t&& mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"f61434190664769e4269d6175c62c891f652dac066c410566ff76da1c18c3c15  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz \t&& apt-get purge -y --auto-remove $fetchDeps" shape="box"];
  "sha256:f7f3e960f4e934b7edd9a719454a2f8818487808002c79806aeba6a2108d0ec5" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:d829ccfaf9f37dd98b526233962fead68849296aaf0a0041277af783bdf6b807" [label="mkdir{path=/go}" shape="note"];
  "sha256:a41f5dfc78cdd4a51f3c9bb67cd0b01c087f3c37c82230016b3f3fd73a598213" [label="sha256:a41f5dfc78cdd4a51f3c9bb67cd0b01c087f3c37c82230016b3f3fd73a598213" shape="plaintext"];
  "sha256:d45f550eea5f9234d071e46c87d9bccb1413ee5ea03bf91d7812316c2b0f2679" -> "sha256:81fab5977e2b2c84726e3edf92325fd9860453d6d98c0bb3cce37fd17c656548" [label=""];
  "sha256:81fab5977e2b2c84726e3edf92325fd9860453d6d98c0bb3cce37fd17c656548" -> "sha256:60c10331a3c53198606937d7d6ede98e3a8e07704300fabcded75398bbdfde31" [label=""];
  "sha256:60c10331a3c53198606937d7d6ede98e3a8e07704300fabcded75398bbdfde31" -> "sha256:f7f3e960f4e934b7edd9a719454a2f8818487808002c79806aeba6a2108d0ec5" [label=""];
  "sha256:f7f3e960f4e934b7edd9a719454a2f8818487808002c79806aeba6a2108d0ec5" -> "sha256:d829ccfaf9f37dd98b526233962fead68849296aaf0a0041277af783bdf6b807" [label=""];
  "sha256:d829ccfaf9f37dd98b526233962fead68849296aaf0a0041277af783bdf6b807" -> "sha256:a41f5dfc78cdd4a51f3c9bb67cd0b01c087f3c37c82230016b3f3fd73a598213" [label=""];
}

