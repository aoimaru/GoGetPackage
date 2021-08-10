[app/sources/334457411.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:23648f00fa813a3819189af5e5e3083803637905f67c7a0c422725b250725bae" [label="/bin/sh -c set -ex     apk add --no-cache ca-certificates       && apk add --no-cache --virtual .build-deps               git" shape="box"];
  "sha256:bf23b9260351511e47d1392ebad00c2ad787f4350ebd019d5be38af50524e4eb" [label="/bin/sh -c go get -v cloud.google.com/go/..." shape="box"];
  "sha256:1dbcf44ef5d557271fa87d8eebd32ddf58c4ac083e93fed56531aa93cace9396" [label="local://context" shape="ellipse"];
  "sha256:b97e00923a74439a999124c070336ad4fc51d3fc12f12c690667d48db71d0ea9" [label="copy{src=/, dest=/src/github.com/census-ecosystem/opencensus-experiments/go/bookshelf}" shape="note"];
  "sha256:6afb6394b1aee99fef06377ff7bd840fd5baaa119d7716fd13f47b4eb5ac11f6" [label="/bin/sh -c go get -v $pkg/..." shape="box"];
  "sha256:3c97d5e2e2322f0a63a5ecafa68d9c064e620d77de7a505c47d5518254c73a5b" [label="/bin/sh -c go install $pkg/..." shape="box"];
  "sha256:93b90a07e02d4b2723ca2f49145f096e558f1709367b1ea0665c37916893c28f" [label="mkdir{path=/src/github.com/census-ecosystem/opencensus-experiments/go/bookshelf/app}" shape="note"];
  "sha256:aeae8ecc1f4e67818abd2c0782c8f0217dfd4d697e3040f43a7d81ad32a5cc6e" [label="sha256:aeae8ecc1f4e67818abd2c0782c8f0217dfd4d697e3040f43a7d81ad32a5cc6e" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:23648f00fa813a3819189af5e5e3083803637905f67c7a0c422725b250725bae" [label=""];
  "sha256:23648f00fa813a3819189af5e5e3083803637905f67c7a0c422725b250725bae" -> "sha256:bf23b9260351511e47d1392ebad00c2ad787f4350ebd019d5be38af50524e4eb" [label=""];
  "sha256:bf23b9260351511e47d1392ebad00c2ad787f4350ebd019d5be38af50524e4eb" -> "sha256:b97e00923a74439a999124c070336ad4fc51d3fc12f12c690667d48db71d0ea9" [label=""];
  "sha256:1dbcf44ef5d557271fa87d8eebd32ddf58c4ac083e93fed56531aa93cace9396" -> "sha256:b97e00923a74439a999124c070336ad4fc51d3fc12f12c690667d48db71d0ea9" [label=""];
  "sha256:b97e00923a74439a999124c070336ad4fc51d3fc12f12c690667d48db71d0ea9" -> "sha256:6afb6394b1aee99fef06377ff7bd840fd5baaa119d7716fd13f47b4eb5ac11f6" [label=""];
  "sha256:6afb6394b1aee99fef06377ff7bd840fd5baaa119d7716fd13f47b4eb5ac11f6" -> "sha256:3c97d5e2e2322f0a63a5ecafa68d9c064e620d77de7a505c47d5518254c73a5b" [label=""];
  "sha256:3c97d5e2e2322f0a63a5ecafa68d9c064e620d77de7a505c47d5518254c73a5b" -> "sha256:93b90a07e02d4b2723ca2f49145f096e558f1709367b1ea0665c37916893c28f" [label=""];
  "sha256:93b90a07e02d4b2723ca2f49145f096e558f1709367b1ea0665c37916893c28f" -> "sha256:aeae8ecc1f4e67818abd2c0782c8f0217dfd4d697e3040f43a7d81ad32a5cc6e" [label=""];
}

