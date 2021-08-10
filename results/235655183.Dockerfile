[app/sources/235655183.Dockerfile]
digraph {
  "sha256:4b8ebd8be78ec728a36a7948b4fcc240536cc16f404211f0bc2c6b4237963aef" [label="docker-image://docker.io/vulhub/cron:latest" shape="ellipse"];
  "sha256:1242a17e47cf14ab45ed823d046a1bf1c923b1516c6d81708cec8887ad036c05" [label="/bin/sh -c set -ex     && yum -y update     && yum -y install gcc-c++ tcl wget" shape="box"];
  "sha256:7271748edaae8f12a08a2aab113bb35973a7e457e6621658d813c098d497cac4" [label="/bin/sh -c set -ex     && mkdir -p /usr/src/redis     && wget -qO- http://download.redis.io/releases/redis-2.8.24.tar.gz | tar xz -C /usr/src/redis --strip-components=1     && cd /usr/src/redis     && make MALLOC=libc     && make install     && make clean     && cd /     && rm -rf /usr/src/redis" shape="box"];
  "sha256:be8aa63ae1e1dd7ef0ba64924e60de387e0fd5edf5c95e0250344257cbf4d0fe" [label="/bin/sh -c yum -y remove gcc-c++ tcl" shape="box"];
  "sha256:fb11d956997bad2b297cbe9bf09267ba469ce761658ea6fe258f0f1ed7963826" [label="local://context" shape="ellipse"];
  "sha256:4cb44a556c537030a72a9ac9154d59eba77fd2a66fc5446eeb7c4f60a4f3e573" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:b518d51e69deeb4f9ac2d61559189dbf93706224c94a5bb60e31f892dd5c0b76" [label="/bin/sh -c set -ex     && chmod +x /usr/local/bin/docker-entrypoint.sh" shape="box"];
  "sha256:dd9471445e3b74de19c4d139df2d6462843843504b158228e013ad30f049e6b1" [label="sha256:dd9471445e3b74de19c4d139df2d6462843843504b158228e013ad30f049e6b1" shape="plaintext"];
  "sha256:4b8ebd8be78ec728a36a7948b4fcc240536cc16f404211f0bc2c6b4237963aef" -> "sha256:1242a17e47cf14ab45ed823d046a1bf1c923b1516c6d81708cec8887ad036c05" [label=""];
  "sha256:1242a17e47cf14ab45ed823d046a1bf1c923b1516c6d81708cec8887ad036c05" -> "sha256:7271748edaae8f12a08a2aab113bb35973a7e457e6621658d813c098d497cac4" [label=""];
  "sha256:7271748edaae8f12a08a2aab113bb35973a7e457e6621658d813c098d497cac4" -> "sha256:be8aa63ae1e1dd7ef0ba64924e60de387e0fd5edf5c95e0250344257cbf4d0fe" [label=""];
  "sha256:be8aa63ae1e1dd7ef0ba64924e60de387e0fd5edf5c95e0250344257cbf4d0fe" -> "sha256:4cb44a556c537030a72a9ac9154d59eba77fd2a66fc5446eeb7c4f60a4f3e573" [label=""];
  "sha256:fb11d956997bad2b297cbe9bf09267ba469ce761658ea6fe258f0f1ed7963826" -> "sha256:4cb44a556c537030a72a9ac9154d59eba77fd2a66fc5446eeb7c4f60a4f3e573" [label=""];
  "sha256:4cb44a556c537030a72a9ac9154d59eba77fd2a66fc5446eeb7c4f60a4f3e573" -> "sha256:b518d51e69deeb4f9ac2d61559189dbf93706224c94a5bb60e31f892dd5c0b76" [label=""];
  "sha256:b518d51e69deeb4f9ac2d61559189dbf93706224c94a5bb60e31f892dd5c0b76" -> "sha256:dd9471445e3b74de19c4d139df2d6462843843504b158228e013ad30f049e6b1" [label=""];
}

