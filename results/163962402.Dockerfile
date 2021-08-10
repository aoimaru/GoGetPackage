[app/sources/163962402.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:3809c55258c9a0b0826c9ca949a338d0c1472441103cf5cb2ab473a47ec6e4e5" [label="/bin/sh -c gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B" shape="box"];
  "sha256:9fcef35055befd8a68acf2f8b2f11ee1e55cba9bef15f35dc407012f4e674f2c" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 \tlibsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:bdba8d9c77e1d7b37c81934fd88123ece5400ceba59333782456b0caed1c745a" [label="/bin/sh -c mkdir /docker-entrypoint-initdb.d" shape="box"];
  "sha256:d755a9ad13a824fbd423f666d1be4b025702bbc00743bef57da48b7704d4cdb9" [label="/bin/sh -c curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND=\"noninteractive\" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\\.0\\.0\\.1!0.0.0.0!g'         -e 's!^(file\\s*=).*!\\1 -!'         -e 's!^#\\s*uid\\s*=.*!uid = arangodb!'         -e 's!^#\\s*gid\\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND=\"noninteractive\" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*" shape="box"];
  "sha256:61f0cf639b1af641998c30493dfb0740c7b82d74d5fd6bf26235328d051d1def" [label="local://context" shape="ellipse"];
  "sha256:1f6e8955200967ebc05de29bf3a6df062afd735b2f11dbe9e53cb63847e831e4" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:beb05808122eb61b1a7b6fb9b9320950c66b1c2131008002e8604ae726d360ae" [label="sha256:beb05808122eb61b1a7b6fb9b9320950c66b1c2131008002e8604ae726d360ae" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:3809c55258c9a0b0826c9ca949a338d0c1472441103cf5cb2ab473a47ec6e4e5" [label=""];
  "sha256:3809c55258c9a0b0826c9ca949a338d0c1472441103cf5cb2ab473a47ec6e4e5" -> "sha256:9fcef35055befd8a68acf2f8b2f11ee1e55cba9bef15f35dc407012f4e674f2c" [label=""];
  "sha256:9fcef35055befd8a68acf2f8b2f11ee1e55cba9bef15f35dc407012f4e674f2c" -> "sha256:bdba8d9c77e1d7b37c81934fd88123ece5400ceba59333782456b0caed1c745a" [label=""];
  "sha256:bdba8d9c77e1d7b37c81934fd88123ece5400ceba59333782456b0caed1c745a" -> "sha256:d755a9ad13a824fbd423f666d1be4b025702bbc00743bef57da48b7704d4cdb9" [label=""];
  "sha256:d755a9ad13a824fbd423f666d1be4b025702bbc00743bef57da48b7704d4cdb9" -> "sha256:1f6e8955200967ebc05de29bf3a6df062afd735b2f11dbe9e53cb63847e831e4" [label=""];
  "sha256:61f0cf639b1af641998c30493dfb0740c7b82d74d5fd6bf26235328d051d1def" -> "sha256:1f6e8955200967ebc05de29bf3a6df062afd735b2f11dbe9e53cb63847e831e4" [label=""];
  "sha256:1f6e8955200967ebc05de29bf3a6df062afd735b2f11dbe9e53cb63847e831e4" -> "sha256:beb05808122eb61b1a7b6fb9b9320950c66b1c2131008002e8604ae726d360ae" [label=""];
}

