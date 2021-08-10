[app/sources/323957634.Dockerfile]
digraph {
  "sha256:5397a66857bdfd4e8f92e5e7b29ea125aee6c03f73e1027609c0a88e4e1235ff" [label="local://context" shape="ellipse"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:ecebb22bedf402343731083de7f15564a7e641288e1a74e59db5b5463cd552a7" [label="/bin/sh -c set -x &&         mkdir -p /var/log /opt/bin /tmp/insgorund /opt/insgorund &&         apk add --no-cache --virtual /opt/.runtime-deps             bash                curl" shape="box"];
  "sha256:74c52a74a403f5f5b95033e9cbd327aeece547f1914805aabec7a9ff96650de6" [label="docker-image://docker.io/library/golang:1.11.5-alpine3.9" shape="ellipse"];
  "sha256:46b42fb67b47db90a6c21ca5f674dec5f31006aa10af7e5c96567577dad4413a" [label="/bin/sh -c set -x &&         mkdir -p /opt/bin /opt/config /opt/tmp /opt/log &&         apk update     &&         apk add --no-cache --virtual /opt/.build-deps             git                       make                      alpine-sdk                bash" shape="box"];
  "sha256:e9385b560ab36fb3732cd678b692e243656a03c423e85cb873735de4788e2c7c" [label="copy{src=/docker/genconfig/genconfig.go, dest=/opt/tmp/}" shape="note"];
  "sha256:ba59d1b25c197496c222f70dada302b0e388b56ff790006b9925440acf25a1d8" [label="copy{src=/, dest=/go/src/github.com/insolar/insolar}" shape="note"];
  "sha256:44bf316efd85689071f251cc2ff083693cc345ed8f7bf0501ea048dab685afb1" [label="mkdir{path=/go/src/github.com/insolar/insolar}" shape="note"];
  "sha256:d7236ac45cb6c9c5ebbdfc38a63bd41c7699a5a843f8427041f3fff77d9387af" [label="/bin/sh -c set -x &&         : \"--------- insolard bulding --------------\" &&         : 'cd \"/go/src/github.com/insolar/insolar\"' &&         make install-deps ensure &&         make insolar insolard benchmark apirequester &&         cp bin/insolar bin/insolard bin/benchmark bin/apirequester /opt/bin &&         : \"--------- helper utilities --------------\" &&         go get gopkg.in/yaml.v2 &&         go build -o /opt/bin/genconfig   /opt/tmp/genconfig.go" shape="box"];
  "sha256:c4320a7d0f641406346c4808cee842d87709abe6bb83746ee74fd385fa5264bf" [label="mkdir{path=/opt}" shape="note"];
  "sha256:3fdbfbb154b97884c1f5a0773ce8fe8de718e869f814eb08e55d2c067e6ec022" [label="/bin/sh -c set -x &&         cp -rf /go/src/github.com/insolar/insolar/keys /opt || true &&         /go/src/github.com/insolar/insolar/scripts/build/genesis/genesis.sh" shape="box"];
  "sha256:651f2051e1758ca35d0ce9a2edba29d4ef7f29c4f21b31ed3d9dbb6298e23876" [label="copy{src=/opt/bin/insgorund, dest=/opt/bin/insgorund}" shape="note"];
  "sha256:6073d70ec8617ba1d84d567944c87da4f5aad13e9a97ebe1a539d5fdec511e34" [label="copy{src=/docker/insgorund-entrypoint.sh, dest=/opt/bin/docker-entrypoint.sh}" shape="note"];
  "sha256:9e4b7a3d6ea97680944e8af153aa4cfe574d2fa2e0d202d8067574aa3ce2dd2d" [label="sha256:9e4b7a3d6ea97680944e8af153aa4cfe574d2fa2e0d202d8067574aa3ce2dd2d" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:ecebb22bedf402343731083de7f15564a7e641288e1a74e59db5b5463cd552a7" [label=""];
  "sha256:74c52a74a403f5f5b95033e9cbd327aeece547f1914805aabec7a9ff96650de6" -> "sha256:46b42fb67b47db90a6c21ca5f674dec5f31006aa10af7e5c96567577dad4413a" [label=""];
  "sha256:46b42fb67b47db90a6c21ca5f674dec5f31006aa10af7e5c96567577dad4413a" -> "sha256:e9385b560ab36fb3732cd678b692e243656a03c423e85cb873735de4788e2c7c" [label=""];
  "sha256:5397a66857bdfd4e8f92e5e7b29ea125aee6c03f73e1027609c0a88e4e1235ff" -> "sha256:e9385b560ab36fb3732cd678b692e243656a03c423e85cb873735de4788e2c7c" [label=""];
  "sha256:e9385b560ab36fb3732cd678b692e243656a03c423e85cb873735de4788e2c7c" -> "sha256:ba59d1b25c197496c222f70dada302b0e388b56ff790006b9925440acf25a1d8" [label=""];
  "sha256:5397a66857bdfd4e8f92e5e7b29ea125aee6c03f73e1027609c0a88e4e1235ff" -> "sha256:ba59d1b25c197496c222f70dada302b0e388b56ff790006b9925440acf25a1d8" [label=""];
  "sha256:ba59d1b25c197496c222f70dada302b0e388b56ff790006b9925440acf25a1d8" -> "sha256:44bf316efd85689071f251cc2ff083693cc345ed8f7bf0501ea048dab685afb1" [label=""];
  "sha256:44bf316efd85689071f251cc2ff083693cc345ed8f7bf0501ea048dab685afb1" -> "sha256:d7236ac45cb6c9c5ebbdfc38a63bd41c7699a5a843f8427041f3fff77d9387af" [label=""];
  "sha256:d7236ac45cb6c9c5ebbdfc38a63bd41c7699a5a843f8427041f3fff77d9387af" -> "sha256:c4320a7d0f641406346c4808cee842d87709abe6bb83746ee74fd385fa5264bf" [label=""];
  "sha256:c4320a7d0f641406346c4808cee842d87709abe6bb83746ee74fd385fa5264bf" -> "sha256:3fdbfbb154b97884c1f5a0773ce8fe8de718e869f814eb08e55d2c067e6ec022" [label=""];
  "sha256:ecebb22bedf402343731083de7f15564a7e641288e1a74e59db5b5463cd552a7" -> "sha256:651f2051e1758ca35d0ce9a2edba29d4ef7f29c4f21b31ed3d9dbb6298e23876" [label=""];
  "sha256:3fdbfbb154b97884c1f5a0773ce8fe8de718e869f814eb08e55d2c067e6ec022" -> "sha256:651f2051e1758ca35d0ce9a2edba29d4ef7f29c4f21b31ed3d9dbb6298e23876" [label=""];
  "sha256:651f2051e1758ca35d0ce9a2edba29d4ef7f29c4f21b31ed3d9dbb6298e23876" -> "sha256:6073d70ec8617ba1d84d567944c87da4f5aad13e9a97ebe1a539d5fdec511e34" [label=""];
  "sha256:5397a66857bdfd4e8f92e5e7b29ea125aee6c03f73e1027609c0a88e4e1235ff" -> "sha256:6073d70ec8617ba1d84d567944c87da4f5aad13e9a97ebe1a539d5fdec511e34" [label=""];
  "sha256:6073d70ec8617ba1d84d567944c87da4f5aad13e9a97ebe1a539d5fdec511e34" -> "sha256:9e4b7a3d6ea97680944e8af153aa4cfe574d2fa2e0d202d8067574aa3ce2dd2d" [label=""];
}

