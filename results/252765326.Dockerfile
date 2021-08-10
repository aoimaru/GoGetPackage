[app/sources/252765326.Dockerfile]
digraph {
  "sha256:12f371d7338b0e1faf98f5c1290d2deead5043133d8dca525ed22586fea86da4" [label="docker-image://docker.io/library/node:7-alpine" shape="ellipse"];
  "sha256:31ff2e781be0703c82e81814e37930df782c9dea5cd577c1c7f623fd71cd64ae" [label="/bin/sh -c apk add --update ca-certificates wget && update-ca-certificates && wget https://github.com/etsy/statsd/archive/${STATSD_VERSION}.zip && unzip ${STATSD_VERSION}.zip && rm ${STATSD_VERSION}.zip && mv /statsd-* /statsd" shape="box"];
  "sha256:86599338614cc352254a65534416cec07cd2cf81458e6cf2a2b3b56bdb11c40d" [label="local://context" shape="ellipse"];
  "sha256:6b4973595640deaf33de21f3f568e7cc238ab8af8429039c7a57c16217c78e42" [label="copy{src=/config.js, dest=/statsd/config.js}" shape="note"];
  "sha256:ade45a1275b48a5efc31e52e665ed6a46c4e19826fc70df8e61433e29e2677c9" [label="copy{src=/startup.sh, dest=/startup.sh}" shape="note"];
  "sha256:a2ea1f3f260cfff929f97c6ac0fab1a6d30674f239cdf5f61cbaca42c7f7b902" [label="sha256:a2ea1f3f260cfff929f97c6ac0fab1a6d30674f239cdf5f61cbaca42c7f7b902" shape="plaintext"];
  "sha256:12f371d7338b0e1faf98f5c1290d2deead5043133d8dca525ed22586fea86da4" -> "sha256:31ff2e781be0703c82e81814e37930df782c9dea5cd577c1c7f623fd71cd64ae" [label=""];
  "sha256:31ff2e781be0703c82e81814e37930df782c9dea5cd577c1c7f623fd71cd64ae" -> "sha256:6b4973595640deaf33de21f3f568e7cc238ab8af8429039c7a57c16217c78e42" [label=""];
  "sha256:86599338614cc352254a65534416cec07cd2cf81458e6cf2a2b3b56bdb11c40d" -> "sha256:6b4973595640deaf33de21f3f568e7cc238ab8af8429039c7a57c16217c78e42" [label=""];
  "sha256:6b4973595640deaf33de21f3f568e7cc238ab8af8429039c7a57c16217c78e42" -> "sha256:ade45a1275b48a5efc31e52e665ed6a46c4e19826fc70df8e61433e29e2677c9" [label=""];
  "sha256:86599338614cc352254a65534416cec07cd2cf81458e6cf2a2b3b56bdb11c40d" -> "sha256:ade45a1275b48a5efc31e52e665ed6a46c4e19826fc70df8e61433e29e2677c9" [label=""];
  "sha256:ade45a1275b48a5efc31e52e665ed6a46c4e19826fc70df8e61433e29e2677c9" -> "sha256:a2ea1f3f260cfff929f97c6ac0fab1a6d30674f239cdf5f61cbaca42c7f7b902" [label=""];
}

