[app/sources/198551860.Dockerfile]
digraph {
  "sha256:b43ea07a4c2e1f173e5b9a9eca285462300e253c8c9b2ad328c59b811daf7fcd" [label="docker-image://docker.io/debezium/jdk8:8u92" shape="ellipse"];
  "sha256:364e7a02764e122b920d3b941571e2898cfe3e50bd7e3f169eb45378e7099131" [label="/bin/sh -c groupadd -r kafka -g 1001 && useradd -u 1001 -r -g kafka -m -d $KAFKA_HOME -s /sbin/nologin -c \"Kafka user\" kafka &&     chmod 755 $KAFKA_HOME" shape="box"];
  "sha256:7ca65b4de8e15c0297c491171efaeff6b08b1db6fbb54631e61b0ac1ea6ec014" [label="/bin/sh -c mkdir $KAFKA_HOME/data &&     mkdir $KAFKA_HOME/logs" shape="box"];
  "sha256:e1957a4c8f26bfe2f6d1be9e8501b304cd25b043d91ff575c4a34edc46b39a70" [label="/bin/sh -c curl -fSL -o /tmp/kafka.tgz $(curl --stderr /dev/null https://www.apache.org/dyn/closer.cgi\\?as_json\\=1 | sed -rn 's/.*\"preferred\":.*\"(.*)\"/\\1/p')kafka/$KAFKA_VERSION/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz" shape="box"];
  "sha256:dec510c15dc9fae9c3ed8442ad9db0a1937f02dc52dcb40ef4a5772e41630ccf" [label="/bin/sh -c echo \"$MD5HASH  /tmp/kafka.tgz\" | md5sum -c - &&    tar -xzf /tmp/kafka.tgz -C $KAFKA_HOME --strip-components 1 &&    rm -f /tmp/kafka.tgz" shape="box"];
  "sha256:c7499f0efc7777270d0aff3b8f5dcece132bbac258eeb2a5ac4a88e941ad969e" [label="local://context" shape="ellipse"];
  "sha256:42254034d4ef373c6db2ccf53dd04c9603b784e9487d04eebf73b0f2fdd5fc6a" [label="copy{src=/log4j.properties, dest=/kafka/config/log4j.properties}" shape="note"];
  "sha256:7a431ca9362a0d4c5e01c4b3b8cf90262a542ad518918144f1cafc074beecf19" [label="/bin/sh -c chown -R kafka $KAFKA_HOME &&     chgrp -R kafka $KAFKA_HOME" shape="box"];
  "sha256:c93fe14ec2dee37cea9840cb8d7505218d694db86e9cace4f63dd26a6e426ab2" [label="mkdir{path=/kafka}" shape="note"];
  "sha256:bff9fbe87708caddde7e9322d5a45c574f273f530ff93209be2b0397bfeabbe7" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:2d81873093903edb24e63fd29f797f7fbd9569b375ce4cb749546a83fe7c8297" [label="sha256:2d81873093903edb24e63fd29f797f7fbd9569b375ce4cb749546a83fe7c8297" shape="plaintext"];
  "sha256:b43ea07a4c2e1f173e5b9a9eca285462300e253c8c9b2ad328c59b811daf7fcd" -> "sha256:364e7a02764e122b920d3b941571e2898cfe3e50bd7e3f169eb45378e7099131" [label=""];
  "sha256:364e7a02764e122b920d3b941571e2898cfe3e50bd7e3f169eb45378e7099131" -> "sha256:7ca65b4de8e15c0297c491171efaeff6b08b1db6fbb54631e61b0ac1ea6ec014" [label=""];
  "sha256:7ca65b4de8e15c0297c491171efaeff6b08b1db6fbb54631e61b0ac1ea6ec014" -> "sha256:e1957a4c8f26bfe2f6d1be9e8501b304cd25b043d91ff575c4a34edc46b39a70" [label=""];
  "sha256:e1957a4c8f26bfe2f6d1be9e8501b304cd25b043d91ff575c4a34edc46b39a70" -> "sha256:dec510c15dc9fae9c3ed8442ad9db0a1937f02dc52dcb40ef4a5772e41630ccf" [label=""];
  "sha256:dec510c15dc9fae9c3ed8442ad9db0a1937f02dc52dcb40ef4a5772e41630ccf" -> "sha256:42254034d4ef373c6db2ccf53dd04c9603b784e9487d04eebf73b0f2fdd5fc6a" [label=""];
  "sha256:c7499f0efc7777270d0aff3b8f5dcece132bbac258eeb2a5ac4a88e941ad969e" -> "sha256:42254034d4ef373c6db2ccf53dd04c9603b784e9487d04eebf73b0f2fdd5fc6a" [label=""];
  "sha256:42254034d4ef373c6db2ccf53dd04c9603b784e9487d04eebf73b0f2fdd5fc6a" -> "sha256:7a431ca9362a0d4c5e01c4b3b8cf90262a542ad518918144f1cafc074beecf19" [label=""];
  "sha256:7a431ca9362a0d4c5e01c4b3b8cf90262a542ad518918144f1cafc074beecf19" -> "sha256:c93fe14ec2dee37cea9840cb8d7505218d694db86e9cace4f63dd26a6e426ab2" [label=""];
  "sha256:c93fe14ec2dee37cea9840cb8d7505218d694db86e9cace4f63dd26a6e426ab2" -> "sha256:bff9fbe87708caddde7e9322d5a45c574f273f530ff93209be2b0397bfeabbe7" [label=""];
  "sha256:c7499f0efc7777270d0aff3b8f5dcece132bbac258eeb2a5ac4a88e941ad969e" -> "sha256:bff9fbe87708caddde7e9322d5a45c574f273f530ff93209be2b0397bfeabbe7" [label=""];
  "sha256:bff9fbe87708caddde7e9322d5a45c574f273f530ff93209be2b0397bfeabbe7" -> "sha256:2d81873093903edb24e63fd29f797f7fbd9569b375ce4cb749546a83fe7c8297" [label=""];
}

