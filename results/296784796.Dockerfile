[app/sources/296784796.Dockerfile]
digraph {
  "sha256:924861369b01a8407718d82b04a1b964eb9e0e8bcc2f69d31fbd8f6eca65deb9" [label="docker-image://docker.io/library/node:8.9-alpine" shape="ellipse"];
  "sha256:400171039a3f151026fb022249d8fa91bec5510e93ea51ee31b98bb74d44af67" [label="/bin/sh -c set -x   && apk add --update --no-cache bash ca-certificates" shape="box"];
  "sha256:2e4ab68bd162617b6a4f103e997948b4ccd78b7f2c0620f67fbaf499fb54b298" [label="/bin/sh -c npm install elasticdump@3.4.0 -g" shape="box"];
  "sha256:93fdfa9628e31e32a29f769b6a7a6369e1de6025cfc25c730fdb0c5dfd388a48" [label="local://context" shape="ellipse"];
  "sha256:350aa8ad9dfd0bb5b71060a5b366cfd3a7ef012d28e872acf9ef0312ade3163d" [label="copy{src=/osm, dest=/usr/local/bin/osm}" shape="note"];
  "sha256:eb108b5ecfa0798d82fe122c51499f8d597802e203e5557c84406d05d640e07b" [label="copy{src=/elasticsearch-tools.sh, dest=/usr/local/bin/elasticsearch-tools.sh}" shape="note"];
  "sha256:ceb1871eb4ecd4bd70239b357be627cace2571b166c6217a81d15ae45b60a947" [label="sha256:ceb1871eb4ecd4bd70239b357be627cace2571b166c6217a81d15ae45b60a947" shape="plaintext"];
  "sha256:924861369b01a8407718d82b04a1b964eb9e0e8bcc2f69d31fbd8f6eca65deb9" -> "sha256:400171039a3f151026fb022249d8fa91bec5510e93ea51ee31b98bb74d44af67" [label=""];
  "sha256:400171039a3f151026fb022249d8fa91bec5510e93ea51ee31b98bb74d44af67" -> "sha256:2e4ab68bd162617b6a4f103e997948b4ccd78b7f2c0620f67fbaf499fb54b298" [label=""];
  "sha256:2e4ab68bd162617b6a4f103e997948b4ccd78b7f2c0620f67fbaf499fb54b298" -> "sha256:350aa8ad9dfd0bb5b71060a5b366cfd3a7ef012d28e872acf9ef0312ade3163d" [label=""];
  "sha256:93fdfa9628e31e32a29f769b6a7a6369e1de6025cfc25c730fdb0c5dfd388a48" -> "sha256:350aa8ad9dfd0bb5b71060a5b366cfd3a7ef012d28e872acf9ef0312ade3163d" [label=""];
  "sha256:350aa8ad9dfd0bb5b71060a5b366cfd3a7ef012d28e872acf9ef0312ade3163d" -> "sha256:eb108b5ecfa0798d82fe122c51499f8d597802e203e5557c84406d05d640e07b" [label=""];
  "sha256:93fdfa9628e31e32a29f769b6a7a6369e1de6025cfc25c730fdb0c5dfd388a48" -> "sha256:eb108b5ecfa0798d82fe122c51499f8d597802e203e5557c84406d05d640e07b" [label=""];
  "sha256:eb108b5ecfa0798d82fe122c51499f8d597802e203e5557c84406d05d640e07b" -> "sha256:ceb1871eb4ecd4bd70239b357be627cace2571b166c6217a81d15ae45b60a947" [label=""];
}

