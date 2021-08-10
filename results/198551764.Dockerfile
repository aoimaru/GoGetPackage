[app/sources/198551764.Dockerfile]
digraph {
  "sha256:e79b411666c7db771a18a5c52ff1a407e86e8be4a0954ba3d17874c57a7014f2" [label="docker-image://docker.io/debezium/connect-base:0.8" shape="ellipse"];
  "sha256:85d81ef5132710af613047263f7c2bcac8206fe29e8dabb40e1c1390b7859fb6" [label="/bin/sh -c eval $MD5SUMS &&    for CONNECTOR in {mysql,mongodb,postgres}; do     curl -fSL -o /tmp/plugin.tar.gz                  $MAVEN_REPO_CORE/io/debezium/debezium-connector-$CONNECTOR/$DEBEZIUM_VERSION/debezium-connector-$CONNECTOR-$DEBEZIUM_VERSION-plugin.tar.gz &&    declare MD5_PARAM_NAME=\"${CONNECTOR^^}_MD5\" &&    echo \"${!MD5_PARAM_NAME}  /tmp/plugin.tar.gz\" | md5sum -c - &&    tar -xzf /tmp/plugin.tar.gz -C $KAFKA_CONNECT_PLUGINS_DIR &&    rm -f /tmp/plugin.tar.gz;     done;" shape="box"];
  "sha256:e5c4fb0ceb17d81134e9a81b4f16e6fb9e85a393cc000bfe7f05c50c380b2059" [label="/bin/sh -c eval $MD5SUMS &&    for CONNECTOR in oracle; do     curl -fSL -o /tmp/plugin.tar.gz                  $MAVEN_REPO_INCUBATOR/io/debezium/debezium-connector-$CONNECTOR/$DEBEZIUM_VERSION/debezium-connector-$CONNECTOR-$DEBEZIUM_VERSION-plugin.tar.gz &&    declare MD5_PARAM_NAME=\"${CONNECTOR^^}_MD5\" &&    echo \"${!MD5_PARAM_NAME}  /tmp/plugin.tar.gz\" | md5sum -c - &&    tar -xzf /tmp/plugin.tar.gz -C $KAFKA_CONNECT_PLUGINS_DIR &&    rm -f /tmp/plugin.tar.gz;     done;" shape="box"];
  "sha256:be4d568626f987e68447424f3ea3a880a0cb43995bbe69fc5954761fbdcf0fac" [label="sha256:be4d568626f987e68447424f3ea3a880a0cb43995bbe69fc5954761fbdcf0fac" shape="plaintext"];
  "sha256:e79b411666c7db771a18a5c52ff1a407e86e8be4a0954ba3d17874c57a7014f2" -> "sha256:85d81ef5132710af613047263f7c2bcac8206fe29e8dabb40e1c1390b7859fb6" [label=""];
  "sha256:85d81ef5132710af613047263f7c2bcac8206fe29e8dabb40e1c1390b7859fb6" -> "sha256:e5c4fb0ceb17d81134e9a81b4f16e6fb9e85a393cc000bfe7f05c50c380b2059" [label=""];
  "sha256:e5c4fb0ceb17d81134e9a81b4f16e6fb9e85a393cc000bfe7f05c50c380b2059" -> "sha256:be4d568626f987e68447424f3ea3a880a0cb43995bbe69fc5954761fbdcf0fac" [label=""];
}

