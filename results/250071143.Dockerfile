[app/sources/250071143.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:7a8041e6688ae4f28ac34b6dbb1fb8a75841c3ad1e0dfae8b27cdc4d9687ea8a" [label="/bin/sh -c apk upgrade --update     && apk add bash tzdata     && mkdir ${TWEMPROXY_CONFIG_DIR}     && ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime     && echo ${TZ} > /etc/timezone     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:603a34059e972b13186c9dabdb206d9c280d7a77dd93c63bc28becd65a943d35" [label="/bin/sh -c apk upgrade --update  \t&& apk add libtool build-base make automake autoconf wget ca-certificates  \t&& wget ${TWEMPROXY_DOWNLOAD_URL} -O twemproxy.tar.gz  \t&& tar -zxvf twemproxy.tar.gz  \t&& (cd twemproxy-${TWEMPROXY_VERSION}  \t&& autoreconf -fvi  \t&& ./configure --prefix=/  \t&& make -j2  \t&& make install)" shape="box"];
  "sha256:d9e2c557e58e9c6e0fe498237dbb8da3809a4e1ff7547c44a431459c869cd638" [label="copy{src=/sbin/nutcracker, dest=/sbin/}" shape="note"];
  "sha256:eefd05aa05366881c4bccd3ab9d558822c820ddd1ea98deff3d87c6c33f6158b" [label="local://context" shape="ellipse"];
  "sha256:df9657a2ab3dc8a5ba4f3142d0ad93c2135c2befa109ade7ada92d92ed418379" [label="copy{src=/config.yml, dest=/etc/twemproxy}" shape="note"];
  "sha256:b46c5cc4df9e9c2454c9bb9598811a11a05fbf06d202997858c1ba22ad0722a2" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:14365b7a17a5edf2c173be4ac63912bbf793a2e256abe54eb603c3cf324af42e" [label="sha256:14365b7a17a5edf2c173be4ac63912bbf793a2e256abe54eb603c3cf324af42e" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:7a8041e6688ae4f28ac34b6dbb1fb8a75841c3ad1e0dfae8b27cdc4d9687ea8a" [label=""];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:603a34059e972b13186c9dabdb206d9c280d7a77dd93c63bc28becd65a943d35" [label=""];
  "sha256:7a8041e6688ae4f28ac34b6dbb1fb8a75841c3ad1e0dfae8b27cdc4d9687ea8a" -> "sha256:d9e2c557e58e9c6e0fe498237dbb8da3809a4e1ff7547c44a431459c869cd638" [label=""];
  "sha256:603a34059e972b13186c9dabdb206d9c280d7a77dd93c63bc28becd65a943d35" -> "sha256:d9e2c557e58e9c6e0fe498237dbb8da3809a4e1ff7547c44a431459c869cd638" [label=""];
  "sha256:d9e2c557e58e9c6e0fe498237dbb8da3809a4e1ff7547c44a431459c869cd638" -> "sha256:df9657a2ab3dc8a5ba4f3142d0ad93c2135c2befa109ade7ada92d92ed418379" [label=""];
  "sha256:eefd05aa05366881c4bccd3ab9d558822c820ddd1ea98deff3d87c6c33f6158b" -> "sha256:df9657a2ab3dc8a5ba4f3142d0ad93c2135c2befa109ade7ada92d92ed418379" [label=""];
  "sha256:df9657a2ab3dc8a5ba4f3142d0ad93c2135c2befa109ade7ada92d92ed418379" -> "sha256:b46c5cc4df9e9c2454c9bb9598811a11a05fbf06d202997858c1ba22ad0722a2" [label=""];
  "sha256:eefd05aa05366881c4bccd3ab9d558822c820ddd1ea98deff3d87c6c33f6158b" -> "sha256:b46c5cc4df9e9c2454c9bb9598811a11a05fbf06d202997858c1ba22ad0722a2" [label=""];
  "sha256:b46c5cc4df9e9c2454c9bb9598811a11a05fbf06d202997858c1ba22ad0722a2" -> "sha256:14365b7a17a5edf2c173be4ac63912bbf793a2e256abe54eb603c3cf324af42e" [label=""];
}

