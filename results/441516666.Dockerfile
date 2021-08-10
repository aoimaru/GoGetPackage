[app/sources/441516666.Dockerfile]
digraph {
  "sha256:d0055c7b9b673064d790f96dd9e1a1e0ec0cb1254c6b946c83bce96142b6b8a8" [label="docker-image://docker.io/prom/busybox:latest" shape="ellipse"];
  "sha256:6e89e37889d8a5067798914cbdaa400597b0ad48fc9fb7cdbb2b01aa006c9f7a" [label="docker-image://docker.io/library/golang:1" shape="ellipse"];
  "sha256:1a4c055d5bef78cc31bcae9b6bb34a1ac5af4b19f81daccbd7cc8db314aabdbe" [label="mkdir{path=/go/src/github.com/prometheus/client_golang}" shape="note"];
  "sha256:37b6889f0fa7fb6ae4867c1711c355648264e1a05bc66feaba3e142784bbe12a" [label="local://context" shape="ellipse"];
  "sha256:582c00c46f65cde2c12a52724ff566c536b73009acd79de62df63deb12b6a511" [label="copy{src=/, dest=/go/src/github.com/prometheus/client_golang/}" shape="note"];
  "sha256:da6dd6c9672390065b2836dd9e6c8f4fc2d1af599f0732609f27fd4d6fc34964" [label="mkdir{path=/go/src/github.com/prometheus/client_golang/prometheus}" shape="note"];
  "sha256:e6f4c169199ee58ac187b12ab375b8fa061590be064cd1f48040d2bb9f6876d7" [label="/bin/sh -c go get -d" shape="box"];
  "sha256:73b4bba7e8f6fdafc4cd7af5819229b288fba1555ec82db0d42eb46c98212b2f" [label="mkdir{path=/go/src/github.com/prometheus/client_golang/examples/random}" shape="note"];
  "sha256:af40dee5a47a52a30fb6d6997bb8058abe943eec82cff2f71a1ba74044c45d1a" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -ldflags '-w'" shape="box"];
  "sha256:e55bb2a3ecff76421ab1a5e537cee8585c52c7900e38cc982c5298944df95a5b" [label="mkdir{path=/go/src/github.com/prometheus/client_golang/examples/simple}" shape="note"];
  "sha256:f5c023b1decc23f0df4b13017de50f7674b038e94bf5939a2d2826b2fbaba8ab" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -ldflags '-w'" shape="box"];
  "sha256:9eebb74bc8484fca6f7f5b4f6af3596e9a776b2d3ad44f8eaed90951198bd044" [label="copy{src=/go/src/github.com/prometheus/client_golang/examples/random, dest=/},copy{src=/go/src/github.com/prometheus/client_golang/examples/simple, dest=/}" shape="note"];
  "sha256:8ff67989454b413f81aa05b11b20cab21a918874b8bacc2cc3257a2ffb4538ce" [label="sha256:8ff67989454b413f81aa05b11b20cab21a918874b8bacc2cc3257a2ffb4538ce" shape="plaintext"];
  "sha256:6e89e37889d8a5067798914cbdaa400597b0ad48fc9fb7cdbb2b01aa006c9f7a" -> "sha256:1a4c055d5bef78cc31bcae9b6bb34a1ac5af4b19f81daccbd7cc8db314aabdbe" [label=""];
  "sha256:1a4c055d5bef78cc31bcae9b6bb34a1ac5af4b19f81daccbd7cc8db314aabdbe" -> "sha256:582c00c46f65cde2c12a52724ff566c536b73009acd79de62df63deb12b6a511" [label=""];
  "sha256:37b6889f0fa7fb6ae4867c1711c355648264e1a05bc66feaba3e142784bbe12a" -> "sha256:582c00c46f65cde2c12a52724ff566c536b73009acd79de62df63deb12b6a511" [label=""];
  "sha256:582c00c46f65cde2c12a52724ff566c536b73009acd79de62df63deb12b6a511" -> "sha256:da6dd6c9672390065b2836dd9e6c8f4fc2d1af599f0732609f27fd4d6fc34964" [label=""];
  "sha256:da6dd6c9672390065b2836dd9e6c8f4fc2d1af599f0732609f27fd4d6fc34964" -> "sha256:e6f4c169199ee58ac187b12ab375b8fa061590be064cd1f48040d2bb9f6876d7" [label=""];
  "sha256:e6f4c169199ee58ac187b12ab375b8fa061590be064cd1f48040d2bb9f6876d7" -> "sha256:73b4bba7e8f6fdafc4cd7af5819229b288fba1555ec82db0d42eb46c98212b2f" [label=""];
  "sha256:73b4bba7e8f6fdafc4cd7af5819229b288fba1555ec82db0d42eb46c98212b2f" -> "sha256:af40dee5a47a52a30fb6d6997bb8058abe943eec82cff2f71a1ba74044c45d1a" [label=""];
  "sha256:af40dee5a47a52a30fb6d6997bb8058abe943eec82cff2f71a1ba74044c45d1a" -> "sha256:e55bb2a3ecff76421ab1a5e537cee8585c52c7900e38cc982c5298944df95a5b" [label=""];
  "sha256:e55bb2a3ecff76421ab1a5e537cee8585c52c7900e38cc982c5298944df95a5b" -> "sha256:f5c023b1decc23f0df4b13017de50f7674b038e94bf5939a2d2826b2fbaba8ab" [label=""];
  "sha256:d0055c7b9b673064d790f96dd9e1a1e0ec0cb1254c6b946c83bce96142b6b8a8" -> "sha256:9eebb74bc8484fca6f7f5b4f6af3596e9a776b2d3ad44f8eaed90951198bd044" [label=""];
  "sha256:f5c023b1decc23f0df4b13017de50f7674b038e94bf5939a2d2826b2fbaba8ab" -> "sha256:9eebb74bc8484fca6f7f5b4f6af3596e9a776b2d3ad44f8eaed90951198bd044" [label=""];
  "sha256:9eebb74bc8484fca6f7f5b4f6af3596e9a776b2d3ad44f8eaed90951198bd044" -> "sha256:8ff67989454b413f81aa05b11b20cab21a918874b8bacc2cc3257a2ffb4538ce" [label=""];
}

