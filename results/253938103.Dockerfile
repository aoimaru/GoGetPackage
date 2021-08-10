[app/sources/253938103.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:d133b6c1ce25e2edcb4165f619c702fd0d366c0edc545737a9ca62ced8a0ceca" [label="/bin/sh -c groupadd -r postgres && useradd -r -g postgres postgres" shape="box"];
  "sha256:6791a5073c9c98bb0d843cd2cfc7d70b5a435df266baef955081d5be21db0437" [label="/bin/sh -c mkdir /docker-entrypoint-initdb.d" shape="box"];
  "sha256:b7b7e433a97350e2a9c573c4a81a73d562a77c9262160b39e269296343607959" [label="/bin/sh -c apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys B97B0AFCAA1A47F044F244A07FCC7D46ACCC4CF8" shape="box"];
  "sha256:1f972cbe85521a9ec4055037dc152906541cbb52db133f17d63de1e613ddf655" [label="/bin/sh -c echo 'deb http://apt.postgresql.org/pub/repos/apt/ jessie-pgdg main' $PG_MAJOR > /etc/apt/sources.list.d/pgdg.list" shape="box"];
  "sha256:f20383870e31af8c51920fe9477325cd407b57ccefb9c2017af19a8f0cb325e4" [label="/bin/sh -c gpg --keyserver pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4" shape="box"];
  "sha256:23f4f06a89f1401d2181f90618ab72140e1efc07be1745e5f95ae0dbdd6cf7bd" [label="/bin/sh -c apt-get update && apt-get install -y ca-certificates wget curl unzip zip jq locales postgresql-common \t&& wget -O /usr/local/bin/gosu \"https://github.com/tianon/gosu/releases/download/1.2/gosu-$(dpkg --print-architecture)\" \t&& wget -O /usr/local/bin/gosu.asc \"https://github.com/tianon/gosu/releases/download/1.2/gosu-$(dpkg --print-architecture).asc\" \t&& gpg --verify /usr/local/bin/gosu.asc \t&& rm /usr/local/bin/gosu.asc \t&& chmod +x /usr/local/bin/gosu \t&& localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8 \t&& sed -ri 's/#(create_main_cluster) .*$/\\1 = false/' /etc/postgresql-common/createcluster.conf \t&& apt-get install -y --no-install-recommends \t\tpostgresql-$PG_MAJOR \t\tpostgresql-contrib-$PG_MAJOR \t&& apt-get clean &&   rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4c827666847757d1e8df8c64e508a9fbd74159dd5f74e744b576c65d2d6402b9" [label="/bin/sh -c mkdir -p /var/run/postgresql && chown -R postgres /var/run/postgresql" shape="box"];
  "sha256:566b5ef4c217bef2173a8588c00a8a73dd6ecd7866641628e10749687174dca2" [label="/bin/sh -c mkdir -p /tmp/consul  && wget -O consul.zip https://releases.hashicorp.com/consul/0.9.0/consul_0.9.0_linux_amd64.zip  && unzip consul.zip -d /usr/local/bin  && rm consul.zip" shape="box"];
  "sha256:c6f049d50607af812418fa2ce2e93c035c1abe48e9d8e116a6f5fd03e0da95b0" [label="/bin/sh -c mkdir -p /etc/consul.d" shape="box"];
  "sha256:0cadbf55fd85fad62829af905d7c9ef322871b1029185aa639aead921cd2fea3" [label="local://context" shape="ellipse"];
  "sha256:35f89c3f21e57e2ea9c5086fbc082b4444602aef6d700489e3fdd37ff0462a00" [label="copy{src=/database.json, dest=/etc/consul.d/database.json}" shape="note"];
  "sha256:c8b89bdfad3bd49d84f049fe40694751c130578134f108c64ada4982bc19f01d" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:31809f334df7b206216455d31d7e7bc5c3e55438309ad40e0ecda1f31e4b4ba6" [label="sha256:31809f334df7b206216455d31d7e7bc5c3e55438309ad40e0ecda1f31e4b4ba6" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:d133b6c1ce25e2edcb4165f619c702fd0d366c0edc545737a9ca62ced8a0ceca" [label=""];
  "sha256:d133b6c1ce25e2edcb4165f619c702fd0d366c0edc545737a9ca62ced8a0ceca" -> "sha256:6791a5073c9c98bb0d843cd2cfc7d70b5a435df266baef955081d5be21db0437" [label=""];
  "sha256:6791a5073c9c98bb0d843cd2cfc7d70b5a435df266baef955081d5be21db0437" -> "sha256:b7b7e433a97350e2a9c573c4a81a73d562a77c9262160b39e269296343607959" [label=""];
  "sha256:b7b7e433a97350e2a9c573c4a81a73d562a77c9262160b39e269296343607959" -> "sha256:1f972cbe85521a9ec4055037dc152906541cbb52db133f17d63de1e613ddf655" [label=""];
  "sha256:1f972cbe85521a9ec4055037dc152906541cbb52db133f17d63de1e613ddf655" -> "sha256:f20383870e31af8c51920fe9477325cd407b57ccefb9c2017af19a8f0cb325e4" [label=""];
  "sha256:f20383870e31af8c51920fe9477325cd407b57ccefb9c2017af19a8f0cb325e4" -> "sha256:23f4f06a89f1401d2181f90618ab72140e1efc07be1745e5f95ae0dbdd6cf7bd" [label=""];
  "sha256:23f4f06a89f1401d2181f90618ab72140e1efc07be1745e5f95ae0dbdd6cf7bd" -> "sha256:4c827666847757d1e8df8c64e508a9fbd74159dd5f74e744b576c65d2d6402b9" [label=""];
  "sha256:4c827666847757d1e8df8c64e508a9fbd74159dd5f74e744b576c65d2d6402b9" -> "sha256:566b5ef4c217bef2173a8588c00a8a73dd6ecd7866641628e10749687174dca2" [label=""];
  "sha256:566b5ef4c217bef2173a8588c00a8a73dd6ecd7866641628e10749687174dca2" -> "sha256:c6f049d50607af812418fa2ce2e93c035c1abe48e9d8e116a6f5fd03e0da95b0" [label=""];
  "sha256:c6f049d50607af812418fa2ce2e93c035c1abe48e9d8e116a6f5fd03e0da95b0" -> "sha256:35f89c3f21e57e2ea9c5086fbc082b4444602aef6d700489e3fdd37ff0462a00" [label=""];
  "sha256:0cadbf55fd85fad62829af905d7c9ef322871b1029185aa639aead921cd2fea3" -> "sha256:35f89c3f21e57e2ea9c5086fbc082b4444602aef6d700489e3fdd37ff0462a00" [label=""];
  "sha256:35f89c3f21e57e2ea9c5086fbc082b4444602aef6d700489e3fdd37ff0462a00" -> "sha256:c8b89bdfad3bd49d84f049fe40694751c130578134f108c64ada4982bc19f01d" [label=""];
  "sha256:0cadbf55fd85fad62829af905d7c9ef322871b1029185aa639aead921cd2fea3" -> "sha256:c8b89bdfad3bd49d84f049fe40694751c130578134f108c64ada4982bc19f01d" [label=""];
  "sha256:c8b89bdfad3bd49d84f049fe40694751c130578134f108c64ada4982bc19f01d" -> "sha256:31809f334df7b206216455d31d7e7bc5c3e55438309ad40e0ecda1f31e4b4ba6" [label=""];
}

