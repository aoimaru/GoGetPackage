[app/sources/279414764.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:afde496bd7c111181f3f6c69d2d3d36114c802f6a000e4c05fbd57923aa2c8bf" [label="/bin/sh -c groupadd -r groestlcoin && useradd -r -m -g groestlcoin groestlcoin" shape="box"];
  "sha256:22e8417227c680a85c67f3dcda177fc0ffc21b6cc88588f217f4ba6046fdc65a" [label="/bin/sh -c set -ex \t&& apt-get update \t&& apt-get install -qq --no-install-recommends ca-certificates dirmngr gosu pgp wget \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c8765520ffa3d7c59636ce8629514180cb98740ee68cb558ef3ef12d3c1c2736" [label="/bin/sh -c set -ex \t&& cd /tmp \t&& wget -qO $GROESTLCOIN_TARBALL \"$GROESTLCOIN_URL\" \t&& for server in $(shuf -e ha.pool.sks-keyservers.net                              hkp://p80.pool.sks-keyservers.net:80                              keyserver.ubuntu.com                              hkp://keyserver.ubuntu.com:80                              pgp.mit.edu) ; do          gpg --batch --keyserver \"$server\" --recv-keys \"$GROESTLCOIN_PGP_KEY\" && break || : ;      done \t&& wget -qO groestlcoin.asc \"$GROESTLCOIN_ASC_URL\" \t&& gpg --verify groestlcoin.asc \t&& grep $GROESTLCOIN_TARBALL groestlcoin.asc | tee SHA256SUMS.asc \t&& sha256sum -c SHA256SUMS.asc \t&& tar -xzvf $GROESTLCOIN_TARBALL -C /usr/local/ --strip-components=1 --exclude=*-qt \t&& rm -rf /tmp/*" shape="box"];
  "sha256:4831c4036b1d138baf2050108bbd7d9f9aeabe32094cd910ee942481d0aab258" [label="/bin/sh -c mkdir \"$GROESTLCOIN_DATA\" \t&& chown -R groestlcoin:groestlcoin \"$GROESTLCOIN_DATA\" \t&& ln -sfn \"$GROESTLCOIN_DATA\" /home/groestlcoin/.groestlcoin \t&& chown -h groestlcoin:groestlcoin /home/groestlcoin/.groestlcoin" shape="box"];
  "sha256:e17d31ce96a124973e9365d6a40ea8b38e0fd0fd629adfab66ad33a1ade9fe36" [label="local://context" shape="ellipse"];
  "sha256:9add29973334662042bb7de67e0235636c3fdd403d64a51095718f37dc164a2b" [label="copy{src=/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:cbc361d09b47de4bd1efb920ff5471a30a2a425a4225acb5dd5b83b9d0155b5a" [label="sha256:cbc361d09b47de4bd1efb920ff5471a30a2a425a4225acb5dd5b83b9d0155b5a" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:afde496bd7c111181f3f6c69d2d3d36114c802f6a000e4c05fbd57923aa2c8bf" [label=""];
  "sha256:afde496bd7c111181f3f6c69d2d3d36114c802f6a000e4c05fbd57923aa2c8bf" -> "sha256:22e8417227c680a85c67f3dcda177fc0ffc21b6cc88588f217f4ba6046fdc65a" [label=""];
  "sha256:22e8417227c680a85c67f3dcda177fc0ffc21b6cc88588f217f4ba6046fdc65a" -> "sha256:c8765520ffa3d7c59636ce8629514180cb98740ee68cb558ef3ef12d3c1c2736" [label=""];
  "sha256:c8765520ffa3d7c59636ce8629514180cb98740ee68cb558ef3ef12d3c1c2736" -> "sha256:4831c4036b1d138baf2050108bbd7d9f9aeabe32094cd910ee942481d0aab258" [label=""];
  "sha256:4831c4036b1d138baf2050108bbd7d9f9aeabe32094cd910ee942481d0aab258" -> "sha256:9add29973334662042bb7de67e0235636c3fdd403d64a51095718f37dc164a2b" [label=""];
  "sha256:e17d31ce96a124973e9365d6a40ea8b38e0fd0fd629adfab66ad33a1ade9fe36" -> "sha256:9add29973334662042bb7de67e0235636c3fdd403d64a51095718f37dc164a2b" [label=""];
  "sha256:9add29973334662042bb7de67e0235636c3fdd403d64a51095718f37dc164a2b" -> "sha256:cbc361d09b47de4bd1efb920ff5471a30a2a425a4225acb5dd5b83b9d0155b5a" [label=""];
}

