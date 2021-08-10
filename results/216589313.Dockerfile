[app/sources/216589313.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:21ae76907af2a48c4328a57088feb8573ccf65e57ab827c255157d9b5e810b0c" [label="/bin/sh -c apk add --no-cache openjdk8-jre bash docker coreutils su-exec" shape="box"];
  "sha256:59588c0e24ab48303bf79577fffba0b8525767a48dd445e16a1d1c8fa57a654a" [label="/bin/sh -c apk add --no-cache -t .build-deps curl ca-certificates jq   && mkdir -p /opt   && mirror=$(curl --stderr /dev/null https://www.apache.org/dyn/closer.cgi\\?as_json\\=1 | jq -r '.preferred')   && curl -sSL \"${mirror}kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz\"   | tar -xzf - -C /opt   && mv /opt/kafka_${SCALA_VERSION}-${KAFKA_VERSION} /opt/kafka   && adduser -DH -s /sbin/nologin kafka   && chown -R kafka: /opt/kafka   && rm -rf /tmp/*   && apk del --purge .build-deps" shape="box"];
  "sha256:115576d779bfa5c84a6cb2781652e9c72b9a8aaa0551c96e62d3481b25e2766f" [label="mkdir{path=/opt/kafka}" shape="note"];
  "sha256:9d88cbd4ee58de3ac6fdf357e44de29d474cc11ed0e1c7e6b43d6015d8b89bc9" [label="local://context" shape="ellipse"];
  "sha256:82f2307bb097e5c890f69497de3ee0dce38c625a6b3ba260bc61da0c67682cec" [label="copy{src=/config/server.properties, dest=/opt/kafka/config/}" shape="note"];
  "sha256:8238d9ace5c02f4bd188b23e288e661fd1f070590fa91bca677647bf57efba2a" [label="copy{src=/config/zookeeper.properties, dest=/opt/kafka/config/}" shape="note"];
  "sha256:3742e1c2ad93c3f9549ec45f738d8f63c9012b0f2c56f9b4a4a6e12bd7a514c8" [label="copy{src=/kafka-entrypoint.sh, dest=/kafka-entrypoint.sh}" shape="note"];
  "sha256:4a0d3f9c0f7c35acb39908384317e3ce4d2ed835dea8cbe701d97a9c794394cc" [label="copy{src=/scripts, dest=/}" shape="note"];
  "sha256:2456fadce1f60f26dace9363d2ab07ee1bba4ebe8edfc486f42aaf2b48c848fb" [label="sha256:2456fadce1f60f26dace9363d2ab07ee1bba4ebe8edfc486f42aaf2b48c848fb" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:21ae76907af2a48c4328a57088feb8573ccf65e57ab827c255157d9b5e810b0c" [label=""];
  "sha256:21ae76907af2a48c4328a57088feb8573ccf65e57ab827c255157d9b5e810b0c" -> "sha256:59588c0e24ab48303bf79577fffba0b8525767a48dd445e16a1d1c8fa57a654a" [label=""];
  "sha256:59588c0e24ab48303bf79577fffba0b8525767a48dd445e16a1d1c8fa57a654a" -> "sha256:115576d779bfa5c84a6cb2781652e9c72b9a8aaa0551c96e62d3481b25e2766f" [label=""];
  "sha256:115576d779bfa5c84a6cb2781652e9c72b9a8aaa0551c96e62d3481b25e2766f" -> "sha256:82f2307bb097e5c890f69497de3ee0dce38c625a6b3ba260bc61da0c67682cec" [label=""];
  "sha256:9d88cbd4ee58de3ac6fdf357e44de29d474cc11ed0e1c7e6b43d6015d8b89bc9" -> "sha256:82f2307bb097e5c890f69497de3ee0dce38c625a6b3ba260bc61da0c67682cec" [label=""];
  "sha256:82f2307bb097e5c890f69497de3ee0dce38c625a6b3ba260bc61da0c67682cec" -> "sha256:8238d9ace5c02f4bd188b23e288e661fd1f070590fa91bca677647bf57efba2a" [label=""];
  "sha256:9d88cbd4ee58de3ac6fdf357e44de29d474cc11ed0e1c7e6b43d6015d8b89bc9" -> "sha256:8238d9ace5c02f4bd188b23e288e661fd1f070590fa91bca677647bf57efba2a" [label=""];
  "sha256:8238d9ace5c02f4bd188b23e288e661fd1f070590fa91bca677647bf57efba2a" -> "sha256:3742e1c2ad93c3f9549ec45f738d8f63c9012b0f2c56f9b4a4a6e12bd7a514c8" [label=""];
  "sha256:9d88cbd4ee58de3ac6fdf357e44de29d474cc11ed0e1c7e6b43d6015d8b89bc9" -> "sha256:3742e1c2ad93c3f9549ec45f738d8f63c9012b0f2c56f9b4a4a6e12bd7a514c8" [label=""];
  "sha256:3742e1c2ad93c3f9549ec45f738d8f63c9012b0f2c56f9b4a4a6e12bd7a514c8" -> "sha256:4a0d3f9c0f7c35acb39908384317e3ce4d2ed835dea8cbe701d97a9c794394cc" [label=""];
  "sha256:9d88cbd4ee58de3ac6fdf357e44de29d474cc11ed0e1c7e6b43d6015d8b89bc9" -> "sha256:4a0d3f9c0f7c35acb39908384317e3ce4d2ed835dea8cbe701d97a9c794394cc" [label=""];
  "sha256:4a0d3f9c0f7c35acb39908384317e3ce4d2ed835dea8cbe701d97a9c794394cc" -> "sha256:2456fadce1f60f26dace9363d2ab07ee1bba4ebe8edfc486f42aaf2b48c848fb" [label=""];
}

