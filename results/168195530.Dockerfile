[app/sources/168195530.Dockerfile]
digraph {
  "sha256:2b37064532e2f14bbfe5ab6235bfd5a323aca6335ca507e16796adbaef2aeaee" [label="docker-image://docker.io/sameersbn/gitlab:8.4.4" shape="ellipse"];
  "sha256:1f0224e2c96736cb4dc441236fa2d14586740f91f9a99db95675c3e34acc874b" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:810fed3708b37d460acb5afe5c32f4694eea64f0fb7718623024b0cd3fbfaae2" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential libfuse-dev libcurl4-openssl-dev libxml2-dev automake libtool" shape="box"];
  "sha256:7a7b23549fd518f9f3b5e468f9334ede6b0b4ba2f3b2c9ff6837c14ab17e419f" [label="/bin/sh -c curl -L https://github.com/s3fs-fuse/s3fs-fuse/archive/v1.79.tar.gz | tar zxv -C /usr/src" shape="box"];
  "sha256:cfcd8278523dffe359fe308a40b0b841151086242974be914fb087efd086b58a" [label="/bin/sh -c cd /usr/src/s3fs-fuse-1.79 && ./autogen.sh && ./configure --prefix=/usr && make && make install && cd / && rm -rf /usr/src/s3fs-fuse-1.79" shape="box"];
  "sha256:8b3322cc7c934b2dcbe5de5527c21e54198ffc2d3a20a27c3996f5456830bcb5" [label="/bin/sh -c mkdir -p /home/git/s3fs" shape="box"];
  "sha256:44d011e98737ed3a4c22863fcb52fa080185d5fec84688ab675b28cace758f14" [label="sha256:44d011e98737ed3a4c22863fcb52fa080185d5fec84688ab675b28cace758f14" shape="plaintext"];
  "sha256:2b37064532e2f14bbfe5ab6235bfd5a323aca6335ca507e16796adbaef2aeaee" -> "sha256:1f0224e2c96736cb4dc441236fa2d14586740f91f9a99db95675c3e34acc874b" [label=""];
  "sha256:1f0224e2c96736cb4dc441236fa2d14586740f91f9a99db95675c3e34acc874b" -> "sha256:810fed3708b37d460acb5afe5c32f4694eea64f0fb7718623024b0cd3fbfaae2" [label=""];
  "sha256:810fed3708b37d460acb5afe5c32f4694eea64f0fb7718623024b0cd3fbfaae2" -> "sha256:7a7b23549fd518f9f3b5e468f9334ede6b0b4ba2f3b2c9ff6837c14ab17e419f" [label=""];
  "sha256:7a7b23549fd518f9f3b5e468f9334ede6b0b4ba2f3b2c9ff6837c14ab17e419f" -> "sha256:cfcd8278523dffe359fe308a40b0b841151086242974be914fb087efd086b58a" [label=""];
  "sha256:cfcd8278523dffe359fe308a40b0b841151086242974be914fb087efd086b58a" -> "sha256:8b3322cc7c934b2dcbe5de5527c21e54198ffc2d3a20a27c3996f5456830bcb5" [label=""];
  "sha256:8b3322cc7c934b2dcbe5de5527c21e54198ffc2d3a20a27c3996f5456830bcb5" -> "sha256:44d011e98737ed3a4c22863fcb52fa080185d5fec84688ab675b28cace758f14" [label=""];
}

