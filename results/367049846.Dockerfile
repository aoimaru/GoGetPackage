[app/sources/367049846.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:3025c9e8eaeaa3b094c0e754321e5fdb398c7e6ea84f44e0ffa335d3a13a3b18" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tca-certificates \t\twget                 curl                 vim \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:616e1ef75e76d380a6a8e6717575a5d71069d33780a7aaaadc4b589cd3643ad7" [label="/bin/sh -c set -x \t&& wget -O /usr/local/bin/gosu \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)\" \t&& wget -O /usr/local/bin/gosu.asc \"https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc\" \t&& export GNUPGHOME=\"$(mktemp -d)\" \t&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 \t&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu \t&& rm -r \"$GNUPGHOME\" /usr/local/bin/gosu.asc \t&& chmod +x /usr/local/bin/gosu \t&& gosu nobody true" shape="box"];
  "sha256:079a52942f0a50b0db8ea2ae58e5e122e3bcee81844b915df1eac0d9b19d3a47" [label="/bin/sh -c echo \"Asia/Shanghai\" > /etc/timezone     && ln -sf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime" shape="box"];
  "sha256:8ccf2bcac18bde1c9213893d188d92b407a07f7c62dc7b1f1cc844cfdc827bb2" [label="sha256:8ccf2bcac18bde1c9213893d188d92b407a07f7c62dc7b1f1cc844cfdc827bb2" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:3025c9e8eaeaa3b094c0e754321e5fdb398c7e6ea84f44e0ffa335d3a13a3b18" [label=""];
  "sha256:3025c9e8eaeaa3b094c0e754321e5fdb398c7e6ea84f44e0ffa335d3a13a3b18" -> "sha256:616e1ef75e76d380a6a8e6717575a5d71069d33780a7aaaadc4b589cd3643ad7" [label=""];
  "sha256:616e1ef75e76d380a6a8e6717575a5d71069d33780a7aaaadc4b589cd3643ad7" -> "sha256:079a52942f0a50b0db8ea2ae58e5e122e3bcee81844b915df1eac0d9b19d3a47" [label=""];
  "sha256:079a52942f0a50b0db8ea2ae58e5e122e3bcee81844b915df1eac0d9b19d3a47" -> "sha256:8ccf2bcac18bde1c9213893d188d92b407a07f7c62dc7b1f1cc844cfdc827bb2" [label=""];
}

