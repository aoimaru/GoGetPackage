[app/sources/198551753.Dockerfile]
digraph {
  "sha256:a04e7aac08d612d5ae0028230bfe1a78c45452b60bc7fa36bf13b4169d35bed6" [label="local://context" shape="ellipse"];
  "sha256:0a9fcc40de488e55b715ca822b3f75a20949d310ba9b00fae62d83419afe6d09" [label="docker-image://docker.io/debezium/connect-base:0.4" shape="ellipse"];
  "sha256:6b131e02a789964ab4f395474b021418aabcdf97a441341866bd15865a5919dd" [label="/bin/sh -c mkdir $KAFKA_CONNECT_PLUGINS_DIR/debezium" shape="box"];
  "sha256:56733a210c7ec7b827a6adaaed322b2d9916ec85d4b055fe52c614f498b74fff" [label="copy{src=/debezium-connector-mysql--SNAPSHOT-plugin.tar.gz, dest=/debezium-mysql-plugin.tar.gz}" shape="note"];
  "sha256:11c59dbe9950c33fd8168d862fd955a329a6ae49ebe5e84760ca3767d277f496" [label="copy{src=/debezium-connector-mongodb--SNAPSHOT-plugin.tar.gz, dest=/debezium-mongodb-plugin.tar.gz}" shape="note"];
  "sha256:e1eb92692030350f9ba6b5274e79b51e52690ade950be3816acdf5ed2f980e1a" [label="copy{src=/debezium-connector-postgres--SNAPSHOT-plugin.tar.gz, dest=/debezium-postgres-plugin.tar.gz}" shape="note"];
  "sha256:5b4efb68817c9495a1a27ee76f2c6bd29bfa113fd8b4b7e3558e235e91f49954" [label="/bin/sh -c tar -xzf $KAFKA_CONNECT_PLUGINS_DIR/debezium-mysql-plugin.tar.gz -C $KAFKA_CONNECT_PLUGINS_DIR/debezium --strip 1 &&     tar -xzf $KAFKA_CONNECT_PLUGINS_DIR/debezium-mongodb-plugin.tar.gz -C $KAFKA_CONNECT_PLUGINS_DIR/debezium --strip 1 &&     tar -xzf $KAFKA_CONNECT_PLUGINS_DIR/debezium-postgres-plugin.tar.gz -C $KAFKA_CONNECT_PLUGINS_DIR/debezium --strip 1" shape="box"];
  "sha256:4fac2a97ee05bdb086c8a8397b5689321adbd13905b241ab6a6f65ca6c6bf430" [label="sha256:4fac2a97ee05bdb086c8a8397b5689321adbd13905b241ab6a6f65ca6c6bf430" shape="plaintext"];
  "sha256:0a9fcc40de488e55b715ca822b3f75a20949d310ba9b00fae62d83419afe6d09" -> "sha256:6b131e02a789964ab4f395474b021418aabcdf97a441341866bd15865a5919dd" [label=""];
  "sha256:6b131e02a789964ab4f395474b021418aabcdf97a441341866bd15865a5919dd" -> "sha256:56733a210c7ec7b827a6adaaed322b2d9916ec85d4b055fe52c614f498b74fff" [label=""];
  "sha256:a04e7aac08d612d5ae0028230bfe1a78c45452b60bc7fa36bf13b4169d35bed6" -> "sha256:56733a210c7ec7b827a6adaaed322b2d9916ec85d4b055fe52c614f498b74fff" [label=""];
  "sha256:56733a210c7ec7b827a6adaaed322b2d9916ec85d4b055fe52c614f498b74fff" -> "sha256:11c59dbe9950c33fd8168d862fd955a329a6ae49ebe5e84760ca3767d277f496" [label=""];
  "sha256:a04e7aac08d612d5ae0028230bfe1a78c45452b60bc7fa36bf13b4169d35bed6" -> "sha256:11c59dbe9950c33fd8168d862fd955a329a6ae49ebe5e84760ca3767d277f496" [label=""];
  "sha256:11c59dbe9950c33fd8168d862fd955a329a6ae49ebe5e84760ca3767d277f496" -> "sha256:e1eb92692030350f9ba6b5274e79b51e52690ade950be3816acdf5ed2f980e1a" [label=""];
  "sha256:a04e7aac08d612d5ae0028230bfe1a78c45452b60bc7fa36bf13b4169d35bed6" -> "sha256:e1eb92692030350f9ba6b5274e79b51e52690ade950be3816acdf5ed2f980e1a" [label=""];
  "sha256:e1eb92692030350f9ba6b5274e79b51e52690ade950be3816acdf5ed2f980e1a" -> "sha256:5b4efb68817c9495a1a27ee76f2c6bd29bfa113fd8b4b7e3558e235e91f49954" [label=""];
  "sha256:5b4efb68817c9495a1a27ee76f2c6bd29bfa113fd8b4b7e3558e235e91f49954" -> "sha256:4fac2a97ee05bdb086c8a8397b5689321adbd13905b241ab6a6f65ca6c6bf430" [label=""];
}

