[app/sources/334957781.Dockerfile]
digraph {
  "sha256:d0055c7b9b673064d790f96dd9e1a1e0ec0cb1254c6b946c83bce96142b6b8a8" [label="docker-image://docker.io/prom/busybox:latest" shape="ellipse"];
  "sha256:6e89e37889d8a5067798914cbdaa400597b0ad48fc9fb7cdbb2b01aa006c9f7a" [label="docker-image://docker.io/library/golang:1" shape="ellipse"];
  "sha256:1a4c055d5bef78cc31bcae9b6bb34a1ac5af4b19f81daccbd7cc8db314aabdbe" [label="mkdir{path=/go/src/github.com/prometheus/client_golang}" shape="note"];
  "sha256:5c83556d641fd514b0ed27c469b9fbd6314a86b50265020fbc5e3426da714744" [label="local://context" shape="ellipse"];
  "sha256:6fcf2a80bffb2c02e954265aacc10c9e2698ef7d4ff30284814c312030ed7eae" [label="copy{src=/, dest=/go/src/github.com/prometheus/client_golang/}" shape="note"];
  "sha256:df8df4143a23d709c6effebca24ce8e549a52c343929dab8dbb3c2ea7bf5bb0b" [label="mkdir{path=/go/src/github.com/prometheus/client_golang/prometheus}" shape="note"];
  "sha256:31e9fe6bf8dc3385f8a4b6eeb360fb31eba7b0cb8616cf19befaf34fc0a1df31" [label="/bin/sh -c go get -d" shape="box"];
  "sha256:28622c8fde24378070aee074de22efab40f267c27c62996f5d7c465cdc71e065" [label="mkdir{path=/go/src/github.com/prometheus/client_golang/examples/random}" shape="note"];
  "sha256:843ae9d724c07ced4fea80736c38e8377d36ee16c238f24562aeea5d54d939f8" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -ldflags '-w'" shape="box"];
  "sha256:d95573e6889939fff83ab9b8eb2335b7ef7f18ff71f7d18bc5018ebc286cd2f8" [label="mkdir{path=/go/src/github.com/prometheus/client_golang/examples/simple}" shape="note"];
  "sha256:990af56d2d2436fec4fb363ce6f7ca2a8f8197ccdbc404592ff4de0d15cfb18e" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -tags netgo -ldflags '-w'" shape="box"];
  "sha256:d6695753a941e1617416bd12c5f38b6494c6ca3007386c58bae3582bc2f843e8" [label="copy{src=/go/src/github.com/prometheus/client_golang/examples/random, dest=/},copy{src=/go/src/github.com/prometheus/client_golang/examples/simple, dest=/}" shape="note"];
  "sha256:517b8ff2952e59da8fbcc01285237a32a3fce0856e92f74908022c111c7dba3c" [label="sha256:517b8ff2952e59da8fbcc01285237a32a3fce0856e92f74908022c111c7dba3c" shape="plaintext"];
  "sha256:6e89e37889d8a5067798914cbdaa400597b0ad48fc9fb7cdbb2b01aa006c9f7a" -> "sha256:1a4c055d5bef78cc31bcae9b6bb34a1ac5af4b19f81daccbd7cc8db314aabdbe" [label=""];
  "sha256:1a4c055d5bef78cc31bcae9b6bb34a1ac5af4b19f81daccbd7cc8db314aabdbe" -> "sha256:6fcf2a80bffb2c02e954265aacc10c9e2698ef7d4ff30284814c312030ed7eae" [label=""];
  "sha256:5c83556d641fd514b0ed27c469b9fbd6314a86b50265020fbc5e3426da714744" -> "sha256:6fcf2a80bffb2c02e954265aacc10c9e2698ef7d4ff30284814c312030ed7eae" [label=""];
  "sha256:6fcf2a80bffb2c02e954265aacc10c9e2698ef7d4ff30284814c312030ed7eae" -> "sha256:df8df4143a23d709c6effebca24ce8e549a52c343929dab8dbb3c2ea7bf5bb0b" [label=""];
  "sha256:df8df4143a23d709c6effebca24ce8e549a52c343929dab8dbb3c2ea7bf5bb0b" -> "sha256:31e9fe6bf8dc3385f8a4b6eeb360fb31eba7b0cb8616cf19befaf34fc0a1df31" [label=""];
  "sha256:31e9fe6bf8dc3385f8a4b6eeb360fb31eba7b0cb8616cf19befaf34fc0a1df31" -> "sha256:28622c8fde24378070aee074de22efab40f267c27c62996f5d7c465cdc71e065" [label=""];
  "sha256:28622c8fde24378070aee074de22efab40f267c27c62996f5d7c465cdc71e065" -> "sha256:843ae9d724c07ced4fea80736c38e8377d36ee16c238f24562aeea5d54d939f8" [label=""];
  "sha256:843ae9d724c07ced4fea80736c38e8377d36ee16c238f24562aeea5d54d939f8" -> "sha256:d95573e6889939fff83ab9b8eb2335b7ef7f18ff71f7d18bc5018ebc286cd2f8" [label=""];
  "sha256:d95573e6889939fff83ab9b8eb2335b7ef7f18ff71f7d18bc5018ebc286cd2f8" -> "sha256:990af56d2d2436fec4fb363ce6f7ca2a8f8197ccdbc404592ff4de0d15cfb18e" [label=""];
  "sha256:d0055c7b9b673064d790f96dd9e1a1e0ec0cb1254c6b946c83bce96142b6b8a8" -> "sha256:d6695753a941e1617416bd12c5f38b6494c6ca3007386c58bae3582bc2f843e8" [label=""];
  "sha256:990af56d2d2436fec4fb363ce6f7ca2a8f8197ccdbc404592ff4de0d15cfb18e" -> "sha256:d6695753a941e1617416bd12c5f38b6494c6ca3007386c58bae3582bc2f843e8" [label=""];
  "sha256:d6695753a941e1617416bd12c5f38b6494c6ca3007386c58bae3582bc2f843e8" -> "sha256:517b8ff2952e59da8fbcc01285237a32a3fce0856e92f74908022c111c7dba3c" [label=""];
}

