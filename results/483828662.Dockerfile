[app/sources/483828662.Dockerfile]
digraph {
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" [label="docker-image://docker.io/library/golang:1.12-alpine" shape="ellipse"];
  "sha256:e2bdbba09b2f1edf6762ef927a66ebd505fff85a1b8be5987c6ddd595013ae08" [label="/bin/sh -c apk add --no-cache     bash fish     ca-certificates     tini" shape="box"];
  "sha256:ece8509f3d1b1f8fe4510ab64a1def9d760daac18ca5211838d8faaff5ab6f66" [label="/bin/sh -c apk add --no-cache --update git gcc musl-dev" shape="box"];
  "sha256:a712f7219daf16d9c3583c519f515fcace81913f2853760addca7a8ff5c611dc" [label="mkdir{path=/root/_build}" shape="note"];
  "sha256:43f5bfa0c42c30049c26d2a81bddb33f2211c52bacac91d670d30c9c84fa0435" [label="local://context" shape="ellipse"];
  "sha256:ccfae9e944fdd678df6f338c662cbc4c8f93137e07d94c4003a36ab0a4359ac7" [label="copy{src=/go.mod, dest=/root/_build/}" shape="note"];
  "sha256:dac13b3f57e2ffa7d3093b5b2e6aa4bfd5e76d9d37e9466c020fe3a161cb7078" [label="copy{src=/go.sum, dest=/root/_build/}" shape="note"];
  "sha256:164f35512ec7ddf31c1554f095b688d7b4ae6d3b5366c0a8f3b789e07f79126e" [label="mkdir{path=/src/github.com/edouardparis/lntop}" shape="note"];
  "sha256:2c2fc49a6fe5969c8686556b7fd56868473510a80c344d1364c9e144f1591a2c" [label="copy{src=/, dest=/src/github.com/edouardparis/lntop/}" shape="note"];
  "sha256:86854c5800afe94cc5705abed6ba81216c07af470acd2a299d0cb9c1839db06a" [label="/bin/sh -c go install -mod=vendor ./..." shape="box"];
  "sha256:6aa1921083f9d79a16593ce03c939f2118fc61436d065ca03efc0fa7efa27917" [label="copy{src=/go/bin/lntop, dest=/bin/}" shape="note"];
  "sha256:67d1807d579a2e5ff056917dfef99f0d09f213ccac388da82aea142e72c6ac65" [label="mkdir{path=/root}" shape="note"];
  "sha256:a0f341cd0a6782743780df2113e1b9597ae60970c5ce5e3b4188bb1c242efccd" [label="copy{src=/home, dest=/root/}" shape="note"];
  "sha256:659adcfd98ff7b2d7a8c1dc0839b757c7474b9cf78b59cb1038aa472b0ed92cf" [label="sha256:659adcfd98ff7b2d7a8c1dc0839b757c7474b9cf78b59cb1038aa472b0ed92cf" shape="plaintext"];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" -> "sha256:e2bdbba09b2f1edf6762ef927a66ebd505fff85a1b8be5987c6ddd595013ae08" [label=""];
  "sha256:fc8f7a5a931404bb996ee93e11e03292efdfdf9a150192d59616c38f4796d934" -> "sha256:ece8509f3d1b1f8fe4510ab64a1def9d760daac18ca5211838d8faaff5ab6f66" [label=""];
  "sha256:ece8509f3d1b1f8fe4510ab64a1def9d760daac18ca5211838d8faaff5ab6f66" -> "sha256:a712f7219daf16d9c3583c519f515fcace81913f2853760addca7a8ff5c611dc" [label=""];
  "sha256:a712f7219daf16d9c3583c519f515fcace81913f2853760addca7a8ff5c611dc" -> "sha256:ccfae9e944fdd678df6f338c662cbc4c8f93137e07d94c4003a36ab0a4359ac7" [label=""];
  "sha256:43f5bfa0c42c30049c26d2a81bddb33f2211c52bacac91d670d30c9c84fa0435" -> "sha256:ccfae9e944fdd678df6f338c662cbc4c8f93137e07d94c4003a36ab0a4359ac7" [label=""];
  "sha256:ccfae9e944fdd678df6f338c662cbc4c8f93137e07d94c4003a36ab0a4359ac7" -> "sha256:dac13b3f57e2ffa7d3093b5b2e6aa4bfd5e76d9d37e9466c020fe3a161cb7078" [label=""];
  "sha256:43f5bfa0c42c30049c26d2a81bddb33f2211c52bacac91d670d30c9c84fa0435" -> "sha256:dac13b3f57e2ffa7d3093b5b2e6aa4bfd5e76d9d37e9466c020fe3a161cb7078" [label=""];
  "sha256:dac13b3f57e2ffa7d3093b5b2e6aa4bfd5e76d9d37e9466c020fe3a161cb7078" -> "sha256:164f35512ec7ddf31c1554f095b688d7b4ae6d3b5366c0a8f3b789e07f79126e" [label=""];
  "sha256:164f35512ec7ddf31c1554f095b688d7b4ae6d3b5366c0a8f3b789e07f79126e" -> "sha256:2c2fc49a6fe5969c8686556b7fd56868473510a80c344d1364c9e144f1591a2c" [label=""];
  "sha256:43f5bfa0c42c30049c26d2a81bddb33f2211c52bacac91d670d30c9c84fa0435" -> "sha256:2c2fc49a6fe5969c8686556b7fd56868473510a80c344d1364c9e144f1591a2c" [label=""];
  "sha256:2c2fc49a6fe5969c8686556b7fd56868473510a80c344d1364c9e144f1591a2c" -> "sha256:86854c5800afe94cc5705abed6ba81216c07af470acd2a299d0cb9c1839db06a" [label=""];
  "sha256:e2bdbba09b2f1edf6762ef927a66ebd505fff85a1b8be5987c6ddd595013ae08" -> "sha256:6aa1921083f9d79a16593ce03c939f2118fc61436d065ca03efc0fa7efa27917" [label=""];
  "sha256:86854c5800afe94cc5705abed6ba81216c07af470acd2a299d0cb9c1839db06a" -> "sha256:6aa1921083f9d79a16593ce03c939f2118fc61436d065ca03efc0fa7efa27917" [label=""];
  "sha256:6aa1921083f9d79a16593ce03c939f2118fc61436d065ca03efc0fa7efa27917" -> "sha256:67d1807d579a2e5ff056917dfef99f0d09f213ccac388da82aea142e72c6ac65" [label=""];
  "sha256:67d1807d579a2e5ff056917dfef99f0d09f213ccac388da82aea142e72c6ac65" -> "sha256:a0f341cd0a6782743780df2113e1b9597ae60970c5ce5e3b4188bb1c242efccd" [label=""];
  "sha256:43f5bfa0c42c30049c26d2a81bddb33f2211c52bacac91d670d30c9c84fa0435" -> "sha256:a0f341cd0a6782743780df2113e1b9597ae60970c5ce5e3b4188bb1c242efccd" [label=""];
  "sha256:a0f341cd0a6782743780df2113e1b9597ae60970c5ce5e3b4188bb1c242efccd" -> "sha256:659adcfd98ff7b2d7a8c1dc0839b757c7474b9cf78b59cb1038aa472b0ed92cf" [label=""];
}

