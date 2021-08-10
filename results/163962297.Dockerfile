[app/sources/163962297.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:ba8ac1edddd093076a80fa5ce782d2a3928e067c6f627e2eb4dc9f9aac558083" [label="/bin/sh -c gpg --keyserver ha.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B" shape="box"];
  "sha256:37cc778538a64fa9c7f2c638b8d9960de9a3f043c11de1fb5e9db81e3c7c23f7" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends         ca-certificates         wget     &&     rm -rf /var/lib/apt/lists/* &&     wget ${ARANGO_SIGNATURE_URL} &&           wget ${ARANGO_PACKAGE_URL} &&             gpg --verify ${ARANGO_PACKAGE}.asc &&     dpkg -i ${ARANGO_PACKAGE} &&     sed -ri         -e 's!127\\.0\\.0\\.1!0.0.0.0!g'         -e 's!^(file\\s*=).*!\\1 -!'         /etc/arangodb/arangod.conf     &&     apt-get purge -y --auto-remove ca-certificates wget &&     rm -f ${ARANGO_PACKAGE}*" shape="box"];
  "sha256:92c382ce3f7d89dccccccd1b432c156feb075fc25d6de9b0d0f13ebc1541e528" [label="sha256:92c382ce3f7d89dccccccd1b432c156feb075fc25d6de9b0d0f13ebc1541e528" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:ba8ac1edddd093076a80fa5ce782d2a3928e067c6f627e2eb4dc9f9aac558083" [label=""];
  "sha256:ba8ac1edddd093076a80fa5ce782d2a3928e067c6f627e2eb4dc9f9aac558083" -> "sha256:37cc778538a64fa9c7f2c638b8d9960de9a3f043c11de1fb5e9db81e3c7c23f7" [label=""];
  "sha256:37cc778538a64fa9c7f2c638b8d9960de9a3f043c11de1fb5e9db81e3c7c23f7" -> "sha256:92c382ce3f7d89dccccccd1b432c156feb075fc25d6de9b0d0f13ebc1541e528" [label=""];
}

