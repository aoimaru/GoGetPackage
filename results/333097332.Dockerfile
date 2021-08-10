[app/sources/333097332.Dockerfile]
digraph {
  "sha256:c90f0b2f50ae4e4d7b0d172061a29db860f97c45836de6e2ab61e2f3fc3434ea" [label="docker-image://docker.io/library/debian:8.1@sha256:0a3f4fcf5dc62755711ae7976c732b29027e7c1cd395036e8b666dcd1c806121" shape="ellipse"];
  "sha256:13e1524fb18e9b8905d31dc31f9760663aa203db3a8affc9a919474f761deefb" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends $BUILD_PACKAGES $PACKAGES         && rm -rf /var/lib/apt/lists/*         && mkdir /tmp/libpst         && cd /tmp/libpst         && wget http://www.five-ten-sg.com/libpst/packages/libpst-$LIBPST_VERSION.tar.gz         && tar --strip-components=1 -xzf libpst-$LIBPST_VERSION.tar.gz         && ./configure         && make         && make install         && cd /         && rm -rf /tmp/libpst         && apt-get -y --force-yes purge $BUILD_PACKAGES         && apt-get -y --force-yes autoremove" shape="box"];
  "sha256:1750c1c8aa4a62b2c5ab92257001440ec42bac1baba8e9695517b3f3b8024f3e" [label="sha256:1750c1c8aa4a62b2c5ab92257001440ec42bac1baba8e9695517b3f3b8024f3e" shape="plaintext"];
  "sha256:c90f0b2f50ae4e4d7b0d172061a29db860f97c45836de6e2ab61e2f3fc3434ea" -> "sha256:13e1524fb18e9b8905d31dc31f9760663aa203db3a8affc9a919474f761deefb" [label=""];
  "sha256:13e1524fb18e9b8905d31dc31f9760663aa203db3a8affc9a919474f761deefb" -> "sha256:1750c1c8aa4a62b2c5ab92257001440ec42bac1baba8e9695517b3f3b8024f3e" [label=""];
}

