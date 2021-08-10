[app/sources/445316787.Dockerfile]
digraph {
  "sha256:d0055c7b9b673064d790f96dd9e1a1e0ec0cb1254c6b946c83bce96142b6b8a8" [label="docker-image://docker.io/prom/busybox:latest" shape="ellipse"];
  "sha256:6e89e37889d8a5067798914cbdaa400597b0ad48fc9fb7cdbb2b01aa006c9f7a" [label="docker-image://docker.io/library/golang:1" shape="ellipse"];
  "sha256:1a4c055d5bef78cc31bcae9b6bb34a1ac5af4b19f81daccbd7cc8db314aabdbe" [label="mkdir{path=/go/src/github.com/prometheus/client_golang}" shape="note"];
  "sha256:b665fa8b28f7a4af0ee562b95d6549a5a6dc05a60cf1f0ec24f5e341749f5065" [label="local://context" shape="ellipse"];
  "sha256:a43ce82279fa3270b97593fea10e82cfb32fd45fcb63049eff6c343bd1b7cb44" [label="copy{src=/, dest=/go/src/github.com/prometheus/client_golang/}" shape="note"];
  "sha256:2e65a330c027e6d2f05c5c0ab298290ead279b6570df7a461654dc8a9431f29e" [label="mkdir{path=/go/src/github.com/prometheus/client_golang/prometheus}" shape="note"];
  "sha256:e5e0712d58f8f56ef76339649fce1426320c75b74d02f3ee6c5d630e5c851226" [label="/bin/sh -c go get -d" shape="box"];
  "sha256:6b1f3f6362c41f2d1f40770dee15ec48c5a49dec06c5100d653916fdcab2310f" [label="mkdir{path=/go/src/github.com/prometheus/client_golang/examples/random}" shape="note"];
  "sha256:65ee314f903d0140872b57ea7c7d7696006b435f0dbaf730c986f7165c170e40" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -ldflags '-w'" shape="box"];
  "sha256:6e145127d6cfc4cb6087dd42cc33f4d99e2c85fecb2e40da42258ddfe5735a45" [label="mkdir{path=/go/src/github.com/prometheus/client_golang/examples/simple}" shape="note"];
  "sha256:ce77c7eb1ef00356004cb4b708c9fc0c548c5ce3084f4c2baa6654273574097d" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -ldflags '-w'" shape="box"];
  "sha256:4159246c4e12a0ed7ce369b8105de5ef16a09b3c1eb1114fd1b507eb529544cb" [label="copy{src=/go/src/github.com/prometheus/client_golang/examples/random, dest=/},copy{src=/go/src/github.com/prometheus/client_golang/examples/simple, dest=/}" shape="note"];
  "sha256:2ea2babe8de9ba759ede9e26a87359d2aff69ccb01911972e8ecea00ce96bac5" [label="sha256:2ea2babe8de9ba759ede9e26a87359d2aff69ccb01911972e8ecea00ce96bac5" shape="plaintext"];
  "sha256:6e89e37889d8a5067798914cbdaa400597b0ad48fc9fb7cdbb2b01aa006c9f7a" -> "sha256:1a4c055d5bef78cc31bcae9b6bb34a1ac5af4b19f81daccbd7cc8db314aabdbe" [label=""];
  "sha256:1a4c055d5bef78cc31bcae9b6bb34a1ac5af4b19f81daccbd7cc8db314aabdbe" -> "sha256:a43ce82279fa3270b97593fea10e82cfb32fd45fcb63049eff6c343bd1b7cb44" [label=""];
  "sha256:b665fa8b28f7a4af0ee562b95d6549a5a6dc05a60cf1f0ec24f5e341749f5065" -> "sha256:a43ce82279fa3270b97593fea10e82cfb32fd45fcb63049eff6c343bd1b7cb44" [label=""];
  "sha256:a43ce82279fa3270b97593fea10e82cfb32fd45fcb63049eff6c343bd1b7cb44" -> "sha256:2e65a330c027e6d2f05c5c0ab298290ead279b6570df7a461654dc8a9431f29e" [label=""];
  "sha256:2e65a330c027e6d2f05c5c0ab298290ead279b6570df7a461654dc8a9431f29e" -> "sha256:e5e0712d58f8f56ef76339649fce1426320c75b74d02f3ee6c5d630e5c851226" [label=""];
  "sha256:e5e0712d58f8f56ef76339649fce1426320c75b74d02f3ee6c5d630e5c851226" -> "sha256:6b1f3f6362c41f2d1f40770dee15ec48c5a49dec06c5100d653916fdcab2310f" [label=""];
  "sha256:6b1f3f6362c41f2d1f40770dee15ec48c5a49dec06c5100d653916fdcab2310f" -> "sha256:65ee314f903d0140872b57ea7c7d7696006b435f0dbaf730c986f7165c170e40" [label=""];
  "sha256:65ee314f903d0140872b57ea7c7d7696006b435f0dbaf730c986f7165c170e40" -> "sha256:6e145127d6cfc4cb6087dd42cc33f4d99e2c85fecb2e40da42258ddfe5735a45" [label=""];
  "sha256:6e145127d6cfc4cb6087dd42cc33f4d99e2c85fecb2e40da42258ddfe5735a45" -> "sha256:ce77c7eb1ef00356004cb4b708c9fc0c548c5ce3084f4c2baa6654273574097d" [label=""];
  "sha256:d0055c7b9b673064d790f96dd9e1a1e0ec0cb1254c6b946c83bce96142b6b8a8" -> "sha256:4159246c4e12a0ed7ce369b8105de5ef16a09b3c1eb1114fd1b507eb529544cb" [label=""];
  "sha256:ce77c7eb1ef00356004cb4b708c9fc0c548c5ce3084f4c2baa6654273574097d" -> "sha256:4159246c4e12a0ed7ce369b8105de5ef16a09b3c1eb1114fd1b507eb529544cb" [label=""];
  "sha256:4159246c4e12a0ed7ce369b8105de5ef16a09b3c1eb1114fd1b507eb529544cb" -> "sha256:2ea2babe8de9ba759ede9e26a87359d2aff69ccb01911972e8ecea00ce96bac5" [label=""];
}

