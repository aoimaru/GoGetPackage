[app/sources/320411501.Dockerfile]
digraph {
  "sha256:201bd0e3fa0b2c96b93f80288f3734164ac3e02098091bb3c259f3da2f42b199" [label="docker-image://docker.io/library/golang:1.8-stretch" shape="ellipse"];
  "sha256:00c398dbf7cae74310cc17034770e8359465caec8fbb743f46a56b6ecefae022" [label="/bin/sh -c apt-get update -y && apt-get install -y g++ make git python-pip" shape="box"];
  "sha256:0884bf86dd4f56f3df4211376cbdd6f7a2a43118b3335d928c906d0dea2054ff" [label="/bin/sh -c cd /tmp && wget https://github.com/google/jsonnet/archive/v${JSONNET_VERSION}.tar.gz &&     tar xvfz v${JSONNET_VERSION}.tar.gz &&     cd jsonnet-${JSONNET_VERSION} &&     make && mv jsonnet /usr/local/bin &&     rm -rf /tmp/v${JSONNET_VERSION}.tar.gz /tmp/jsonnet-${JSONNET_VERSION}" shape="box"];
  "sha256:08bad55c0d6fecf251af9cc1f3999b0918e8c2aa0477f7664ffc8b3a9133ea32" [label="/bin/sh -c git clone https://github.com/ksonnet/ksonnet-lib.git /ksonnet-lib &&     cd /ksonnet-lib &&     git checkout bd6b2d618d6963ea6a81fcc5623900d8ba110a32" shape="box"];
  "sha256:cf205be2bc948a43e4133954a3522958be27566267448983a3fc739f541713f4" [label="/bin/sh -c pip install json2yaml" shape="box"];
  "sha256:96a389fc8e481a50d0ebd9a4458ed0dde8a66572e30948c49f9b2f7b4751c080" [label="/bin/sh -c mkdir -p /go/src/github.com/coreos/prometheus-operator" shape="box"];
  "sha256:caa6545cdf2dcefa2d9edd76cca10e5370f1e654b334ad83a51904c988c63f48" [label="mkdir{path=/go/src/github.com/coreos/prometheus-operator}" shape="note"];
  "sha256:e2a947d8ea51d3064ed5172b30693b622b0cb9f224d30317a36e350f1fcff432" [label="sha256:e2a947d8ea51d3064ed5172b30693b622b0cb9f224d30317a36e350f1fcff432" shape="plaintext"];
  "sha256:201bd0e3fa0b2c96b93f80288f3734164ac3e02098091bb3c259f3da2f42b199" -> "sha256:00c398dbf7cae74310cc17034770e8359465caec8fbb743f46a56b6ecefae022" [label=""];
  "sha256:00c398dbf7cae74310cc17034770e8359465caec8fbb743f46a56b6ecefae022" -> "sha256:0884bf86dd4f56f3df4211376cbdd6f7a2a43118b3335d928c906d0dea2054ff" [label=""];
  "sha256:0884bf86dd4f56f3df4211376cbdd6f7a2a43118b3335d928c906d0dea2054ff" -> "sha256:08bad55c0d6fecf251af9cc1f3999b0918e8c2aa0477f7664ffc8b3a9133ea32" [label=""];
  "sha256:08bad55c0d6fecf251af9cc1f3999b0918e8c2aa0477f7664ffc8b3a9133ea32" -> "sha256:cf205be2bc948a43e4133954a3522958be27566267448983a3fc739f541713f4" [label=""];
  "sha256:cf205be2bc948a43e4133954a3522958be27566267448983a3fc739f541713f4" -> "sha256:96a389fc8e481a50d0ebd9a4458ed0dde8a66572e30948c49f9b2f7b4751c080" [label=""];
  "sha256:96a389fc8e481a50d0ebd9a4458ed0dde8a66572e30948c49f9b2f7b4751c080" -> "sha256:caa6545cdf2dcefa2d9edd76cca10e5370f1e654b334ad83a51904c988c63f48" [label=""];
  "sha256:caa6545cdf2dcefa2d9edd76cca10e5370f1e654b334ad83a51904c988c63f48" -> "sha256:e2a947d8ea51d3064ed5172b30693b622b0cb9f224d30317a36e350f1fcff432" [label=""];
}

