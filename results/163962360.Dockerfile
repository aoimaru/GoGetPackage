[app/sources/163962360.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:ae7cb65716013dc1c13c4099fb5666aa94d158049c64b3c25e4f9cecad63e905" [label="/bin/sh -c gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B" shape="box"];
  "sha256:0fbc7426a289f7755611fa4cae6ec0cf2379eab2ee9129af3c14e875b5632bde" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends         libjemalloc1 \tlibsnappy1         ca-certificates         pwgen         curl     &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c9a97c35c6db2979cf3cf2a4c4e0e5f6f6d50423342cd815abe93e519d32b5e4" [label="/bin/sh -c mkdir /docker-entrypoint-initdb.d" shape="box"];
  "sha256:c6afb079449067d0dbb9bc79c16d6f73e82c5b63d4cb2aa01e8fb8df86c4b50d" [label="/bin/sh -c curl -O ${ARANGO_SIGNATURE_URL} &&           curl -O ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     (echo arangodb3 arangodb3/password password test | debconf-set-selections) &&     (echo arangodb3 arangodb3/password_again password test | debconf-set-selections) &&     DEBIAN_FRONTEND=\"noninteractive\" dpkg -i ${ARANGO_PACKAGE} &&     rm -rf /var/lib/arangodb3/* &&     sed -ri         -e 's!127\\.0\\.0\\.1!0.0.0.0!g'         -e 's!^(file\\s*=).*!\\1 -!'         -e 's!^#\\s*uid\\s*=.*!uid = arangodb!'         -e 's!^#\\s*gid\\s*=.*!gid = arangodb!'         /etc/arangodb3/arangod.conf     &&     DEBIAN_FRONTEND=\"noninteractive\" apt-get purge -y --auto-remove ca-certificates &&     rm -f ${ARANGO_PACKAGE}*" shape="box"];
  "sha256:ad9664b4c154cb6213f9c4a6f38dfed85ec3aebed7b8cf9e7f84ac3f10e96fa7" [label="local://context" shape="ellipse"];
  "sha256:255975899a2ca8c9d6a0a7a1528f5643e25c33fd168f95e293cbadb997b21740" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:50305725dc8c51186f6db139106147f5c503a0da1b83206b7878dbe412dff769" [label="sha256:50305725dc8c51186f6db139106147f5c503a0da1b83206b7878dbe412dff769" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:ae7cb65716013dc1c13c4099fb5666aa94d158049c64b3c25e4f9cecad63e905" [label=""];
  "sha256:ae7cb65716013dc1c13c4099fb5666aa94d158049c64b3c25e4f9cecad63e905" -> "sha256:0fbc7426a289f7755611fa4cae6ec0cf2379eab2ee9129af3c14e875b5632bde" [label=""];
  "sha256:0fbc7426a289f7755611fa4cae6ec0cf2379eab2ee9129af3c14e875b5632bde" -> "sha256:c9a97c35c6db2979cf3cf2a4c4e0e5f6f6d50423342cd815abe93e519d32b5e4" [label=""];
  "sha256:c9a97c35c6db2979cf3cf2a4c4e0e5f6f6d50423342cd815abe93e519d32b5e4" -> "sha256:c6afb079449067d0dbb9bc79c16d6f73e82c5b63d4cb2aa01e8fb8df86c4b50d" [label=""];
  "sha256:c6afb079449067d0dbb9bc79c16d6f73e82c5b63d4cb2aa01e8fb8df86c4b50d" -> "sha256:255975899a2ca8c9d6a0a7a1528f5643e25c33fd168f95e293cbadb997b21740" [label=""];
  "sha256:ad9664b4c154cb6213f9c4a6f38dfed85ec3aebed7b8cf9e7f84ac3f10e96fa7" -> "sha256:255975899a2ca8c9d6a0a7a1528f5643e25c33fd168f95e293cbadb997b21740" [label=""];
  "sha256:255975899a2ca8c9d6a0a7a1528f5643e25c33fd168f95e293cbadb997b21740" -> "sha256:50305725dc8c51186f6db139106147f5c503a0da1b83206b7878dbe412dff769" [label=""];
}

