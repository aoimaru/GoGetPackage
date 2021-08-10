[app/sources/163962274.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:efdc6bb17f7b92615e39f15df8957786b3312344c646abfd26f234909fbb4669" [label="/bin/sh -c apk add --no-cache gnupg pwgen nodejs npm binutils &&     npm install -g foxx-cli &&     rm -rf /root/.npm" shape="box"];
  "sha256:74126a1ab3037f83d62052bf981817234243aa2b0fca3c097893ec713f5da0c2" [label="/bin/sh -c gpg --batch --keyserver hkps://hkps.pool.sks-keyservers.net --recv-keys CD8CB0F1E0AD5B52E93F41E7EA93F5E56E751E9B" shape="box"];
  "sha256:31244aa8ed3f00a9b7f3db1863208119587e667d04a6702d7a6c9cdcd0c9916e" [label="/bin/sh -c mkdir /docker-entrypoint-initdb.d" shape="box"];
  "sha256:7e51c14bf670b9038c97c772791c0fb6d7b18b50a719defe2e83bbc949d13563" [label="/bin/sh -c cd /tmp                                &&     wget ${ARANGO_SIGNATURE_URL}           &&     wget ${ARANGO_PACKAGE_URL}             &&     gpg --verify ${ARANGO_PACKAGE}.asc     &&     ar x ${ARANGO_PACKAGE} data.tar.gz     &&     tar -C / -x -z -f data.tar.gz          &&     sed -ri         -e 's!127\\.0\\.0\\.1!0.0.0.0!g'         -e 's!^(file\\s*=).*!\\1 -!'         -e 's!^\\s*uid\\s*=.*!!'         /etc/arangodb3/arangod.conf        &&     echo chgrp 0 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     echo chmod 775 /var/lib/arangodb3 /var/lib/arangodb3-apps &&     rm -f ${ARANGO_PACKAGE}* data.tar.gz" shape="box"];
  "sha256:832f889cb49333415be9ae84fecfdcf5603bef803475039415816392b5f12dfa" [label="local://context" shape="ellipse"];
  "sha256:d07ef4474441601c30fa54cabcb5c95ed5f3f89364eed0ff4a97de95be09ab38" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:a891c5d02f99602f30e669204bbeef9d9a8c007f77b27482a1ef0ddefb9477bd" [label="sha256:a891c5d02f99602f30e669204bbeef9d9a8c007f77b27482a1ef0ddefb9477bd" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:efdc6bb17f7b92615e39f15df8957786b3312344c646abfd26f234909fbb4669" [label=""];
  "sha256:efdc6bb17f7b92615e39f15df8957786b3312344c646abfd26f234909fbb4669" -> "sha256:74126a1ab3037f83d62052bf981817234243aa2b0fca3c097893ec713f5da0c2" [label=""];
  "sha256:74126a1ab3037f83d62052bf981817234243aa2b0fca3c097893ec713f5da0c2" -> "sha256:31244aa8ed3f00a9b7f3db1863208119587e667d04a6702d7a6c9cdcd0c9916e" [label=""];
  "sha256:31244aa8ed3f00a9b7f3db1863208119587e667d04a6702d7a6c9cdcd0c9916e" -> "sha256:7e51c14bf670b9038c97c772791c0fb6d7b18b50a719defe2e83bbc949d13563" [label=""];
  "sha256:7e51c14bf670b9038c97c772791c0fb6d7b18b50a719defe2e83bbc949d13563" -> "sha256:d07ef4474441601c30fa54cabcb5c95ed5f3f89364eed0ff4a97de95be09ab38" [label=""];
  "sha256:832f889cb49333415be9ae84fecfdcf5603bef803475039415816392b5f12dfa" -> "sha256:d07ef4474441601c30fa54cabcb5c95ed5f3f89364eed0ff4a97de95be09ab38" [label=""];
  "sha256:d07ef4474441601c30fa54cabcb5c95ed5f3f89364eed0ff4a97de95be09ab38" -> "sha256:a891c5d02f99602f30e669204bbeef9d9a8c007f77b27482a1ef0ddefb9477bd" [label=""];
}

