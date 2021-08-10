[app/sources/268132249.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:30f57c57bd8c415b9873ca1377e6db53bca7b504122df20072eb996862baabd0" [label="mkdir{path=/data}" shape="note"];
  "sha256:b69078366e88055037de6b027d96d6d79a7778b7cf9f2e8e5a72009d4b894db7" [label="local://context" shape="ellipse"];
  "sha256:28a274d49cd3c327c6cf6c031193b6e822630e0bf1594748960e390b789ca922" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:49cada39240d51fa9e4f0c359cc270b0094c3d2ee763bddb845ed924fd19a24d" [label="/bin/sh -c set -exo pipefail   && apk add --no-cache --virtual .build-deps     build-base     linux-headers     openssl   && wget -O /usr/local/bin/gosu https://github.com/tianon/gosu/releases/download/1.10/gosu-amd64   && chmod +x /usr/local/bin/gosu   && cd /tmp   && wget https://github.com/antirez/redis/archive/${REDIS_VERSION}.tar.gz   && tar xzf ${REDIS_VERSION}.tar.gz   && cd /tmp/redis-${REDIS_VERSION}   && make   && make install   && cp redis.conf /etc/redis.conf   && sed -i -e 's/bind 127.0.0.1/bind 0.0.0.0/' /etc/redis.conf   && adduser -D redis   && apk del .build-deps   && rm -rf /tmp/*" shape="box"];
  "sha256:f463e0bc75ebb611e4a1856ba8b8f03b0a11791bf8503411b1852a8a1a908b1e" [label="sha256:f463e0bc75ebb611e4a1856ba8b8f03b0a11791bf8503411b1852a8a1a908b1e" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:30f57c57bd8c415b9873ca1377e6db53bca7b504122df20072eb996862baabd0" [label=""];
  "sha256:30f57c57bd8c415b9873ca1377e6db53bca7b504122df20072eb996862baabd0" -> "sha256:28a274d49cd3c327c6cf6c031193b6e822630e0bf1594748960e390b789ca922" [label=""];
  "sha256:b69078366e88055037de6b027d96d6d79a7778b7cf9f2e8e5a72009d4b894db7" -> "sha256:28a274d49cd3c327c6cf6c031193b6e822630e0bf1594748960e390b789ca922" [label=""];
  "sha256:28a274d49cd3c327c6cf6c031193b6e822630e0bf1594748960e390b789ca922" -> "sha256:49cada39240d51fa9e4f0c359cc270b0094c3d2ee763bddb845ed924fd19a24d" [label=""];
  "sha256:49cada39240d51fa9e4f0c359cc270b0094c3d2ee763bddb845ed924fd19a24d" -> "sha256:f463e0bc75ebb611e4a1856ba8b8f03b0a11791bf8503411b1852a8a1a908b1e" [label=""];
}

