[app/sources/302653284.Dockerfile]
digraph {
  "sha256:85390a08a39c4453b1dbecfce617554461a97e0e2fd949684e2eda3bd7a63012" [label="docker-image://docker.io/library/golang:1.10.8" shape="ellipse"];
  "sha256:5b3e3de1e89910e9faeae266b58480ad395a9fecec4b073ae9ea98d542ff16a5" [label="/bin/sh -c set -x &&     apt-get update &&     apt-get install -y --no-install-recommends          netcat python-pip rsync virtualenv &&     apt-get clean" shape="box"];
  "sha256:a241db2aebff779d5e5a6b79667e6d7522b7694ac82de02d6a497079c00edfd9" [label="/bin/sh -c pip install --upgrade setuptools" shape="box"];
  "sha256:c5b259a0501ed63bba43e9e52cbfdadc189370b822a182ff77580f2029272c7c" [label="/bin/sh -c mkdir -p $LIBBEAT_PATH/build/coverage" shape="box"];
  "sha256:40d3faf2de5f7b81eeb107f9f7644e0369b2db38d70740cd520c5651c14f15dc" [label="mkdir{path=/go/src/github.com/elastic/beats/x-pack/libbeat}" shape="note"];
  "sha256:831542c96f166595d449a6c5766ae17d49d85981eb6813f1319c4a0daad4f8fe" [label="sha256:831542c96f166595d449a6c5766ae17d49d85981eb6813f1319c4a0daad4f8fe" shape="plaintext"];
  "sha256:85390a08a39c4453b1dbecfce617554461a97e0e2fd949684e2eda3bd7a63012" -> "sha256:5b3e3de1e89910e9faeae266b58480ad395a9fecec4b073ae9ea98d542ff16a5" [label=""];
  "sha256:5b3e3de1e89910e9faeae266b58480ad395a9fecec4b073ae9ea98d542ff16a5" -> "sha256:a241db2aebff779d5e5a6b79667e6d7522b7694ac82de02d6a497079c00edfd9" [label=""];
  "sha256:a241db2aebff779d5e5a6b79667e6d7522b7694ac82de02d6a497079c00edfd9" -> "sha256:c5b259a0501ed63bba43e9e52cbfdadc189370b822a182ff77580f2029272c7c" [label=""];
  "sha256:c5b259a0501ed63bba43e9e52cbfdadc189370b822a182ff77580f2029272c7c" -> "sha256:40d3faf2de5f7b81eeb107f9f7644e0369b2db38d70740cd520c5651c14f15dc" [label=""];
  "sha256:40d3faf2de5f7b81eeb107f9f7644e0369b2db38d70740cd520c5651c14f15dc" -> "sha256:831542c96f166595d449a6c5766ae17d49d85981eb6813f1319c4a0daad4f8fe" [label=""];
}

