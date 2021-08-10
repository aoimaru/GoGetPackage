[app/sources/253067803.Dockerfile]
digraph {
  "sha256:8d14b330c064e690b31ff04a53f04564b532695c2cc56553bb4db4e9d928c0be" [label="local://context" shape="ellipse"];
  "sha256:1c9c5dd69e6288f5441e8e12c59e5711b62561347f27beadf82603196d905416" [label="docker-image://docker.io/library/openjdk:8u92-alpine" shape="ellipse"];
  "sha256:8faf83aa4dbc6e36d14e22b554cbb1fd6581a1aec0ce6c575bfdd98e217c3945" [label="/bin/sh -c apk add --update bash curl unzip &&     rm -rf /var/cache/apk/*" shape="box"];
  "sha256:f1e2119d073ff09b37a8604ab662cfb57de3cf903aa524ccb4044de10682a6fc" [label="mkdir{path=/opt/holdmail/lib}" shape="note"];
  "sha256:12fdff178069a381ddacd7974b0ddad5ed4a2c85808eddcdbca172988fc53f29" [label="/bin/sh -c curl -sLO https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-${MYSQL_CONNECTOR_VERSION}.zip &&     unzip mysql-connector-java-${MYSQL_CONNECTOR_VERSION}.zip" shape="box"];
  "sha256:0d40a3529058c5e6064284df821fcf649a5ddff3a6e2e535b826a2615601c4de" [label="/bin/sh -c mkdir -p /var/log/holdmail" shape="box"];
  "sha256:6020fc0fa0c55606ad45b1a95d8920df289015af9c27e82a5aa1289aae3fb1e3" [label="mkdir{path=/etc}" shape="note"];
  "sha256:c9d606dc16c7772832a5bfb920fd6b6cd2d666dc9602caab6d3cfdc326aecd14" [label="copy{src=/, dest=/etc/holdmail.properties}" shape="note"];
  "sha256:3f149159720e141270bd8a707966e67f6048d5e5ff3c59bca3105d98dbf5cb30" [label="mkdir{path=/opt/holdmail/bin}" shape="note"];
  "sha256:56e6f1049e5754a124bb7e71ee48414dfbb2b8d7f42c1491060badd33f3a045f" [label="copy{src=/, dest=/opt/holdmail/bin/holdmail.jar}" shape="note"];
  "sha256:f74fe3b607fa89cedbabcb168fa6bb140ab282639ccc2200ea3b9928d3960649" [label="copy{src=/, dest=/opt/holdmail/bin/holdmail.conf}" shape="note"];
  "sha256:29203cc3df33f3645d9048f0872b35b346e1812a20479020ed2ea8d1e226af4e" [label="sha256:29203cc3df33f3645d9048f0872b35b346e1812a20479020ed2ea8d1e226af4e" shape="plaintext"];
  "sha256:1c9c5dd69e6288f5441e8e12c59e5711b62561347f27beadf82603196d905416" -> "sha256:8faf83aa4dbc6e36d14e22b554cbb1fd6581a1aec0ce6c575bfdd98e217c3945" [label=""];
  "sha256:8faf83aa4dbc6e36d14e22b554cbb1fd6581a1aec0ce6c575bfdd98e217c3945" -> "sha256:f1e2119d073ff09b37a8604ab662cfb57de3cf903aa524ccb4044de10682a6fc" [label=""];
  "sha256:f1e2119d073ff09b37a8604ab662cfb57de3cf903aa524ccb4044de10682a6fc" -> "sha256:12fdff178069a381ddacd7974b0ddad5ed4a2c85808eddcdbca172988fc53f29" [label=""];
  "sha256:12fdff178069a381ddacd7974b0ddad5ed4a2c85808eddcdbca172988fc53f29" -> "sha256:0d40a3529058c5e6064284df821fcf649a5ddff3a6e2e535b826a2615601c4de" [label=""];
  "sha256:0d40a3529058c5e6064284df821fcf649a5ddff3a6e2e535b826a2615601c4de" -> "sha256:6020fc0fa0c55606ad45b1a95d8920df289015af9c27e82a5aa1289aae3fb1e3" [label=""];
  "sha256:6020fc0fa0c55606ad45b1a95d8920df289015af9c27e82a5aa1289aae3fb1e3" -> "sha256:c9d606dc16c7772832a5bfb920fd6b6cd2d666dc9602caab6d3cfdc326aecd14" [label=""];
  "sha256:8d14b330c064e690b31ff04a53f04564b532695c2cc56553bb4db4e9d928c0be" -> "sha256:c9d606dc16c7772832a5bfb920fd6b6cd2d666dc9602caab6d3cfdc326aecd14" [label=""];
  "sha256:c9d606dc16c7772832a5bfb920fd6b6cd2d666dc9602caab6d3cfdc326aecd14" -> "sha256:3f149159720e141270bd8a707966e67f6048d5e5ff3c59bca3105d98dbf5cb30" [label=""];
  "sha256:3f149159720e141270bd8a707966e67f6048d5e5ff3c59bca3105d98dbf5cb30" -> "sha256:56e6f1049e5754a124bb7e71ee48414dfbb2b8d7f42c1491060badd33f3a045f" [label=""];
  "sha256:8d14b330c064e690b31ff04a53f04564b532695c2cc56553bb4db4e9d928c0be" -> "sha256:56e6f1049e5754a124bb7e71ee48414dfbb2b8d7f42c1491060badd33f3a045f" [label=""];
  "sha256:56e6f1049e5754a124bb7e71ee48414dfbb2b8d7f42c1491060badd33f3a045f" -> "sha256:f74fe3b607fa89cedbabcb168fa6bb140ab282639ccc2200ea3b9928d3960649" [label=""];
  "sha256:8d14b330c064e690b31ff04a53f04564b532695c2cc56553bb4db4e9d928c0be" -> "sha256:f74fe3b607fa89cedbabcb168fa6bb140ab282639ccc2200ea3b9928d3960649" [label=""];
  "sha256:f74fe3b607fa89cedbabcb168fa6bb140ab282639ccc2200ea3b9928d3960649" -> "sha256:29203cc3df33f3645d9048f0872b35b346e1812a20479020ed2ea8d1e226af4e" [label=""];
}

