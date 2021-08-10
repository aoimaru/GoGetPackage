[app/sources/197862820.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:2f78be1711412f7a09ea185bcc6d884299ac196d58a7decf13389d5acc776500" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     ca-certificates     build-essential     git     python     python-pip     python-setuptools" shape="box"];
  "sha256:46d7ccebe5d9e7d54481da18dd6cae68faa0235f18d7cbe9df99f294886bee5b" [label="/bin/sh -c pip install tf-nightly" shape="box"];
  "sha256:6fb2cd4fbe5ea593936ce345a858e6085dc8eac958c789fa5e19d5bb9b2176e4" [label="/bin/sh -c git clone https://github.com/tensorflow/models.git /tensorflow_models" shape="box"];
  "sha256:67109860e4fa9971b80ab9b87791483a92f3e26c6010cf59bbbdf9261130704e" [label="sha256:67109860e4fa9971b80ab9b87791483a92f3e26c6010cf59bbbdf9261130704e" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:2f78be1711412f7a09ea185bcc6d884299ac196d58a7decf13389d5acc776500" [label=""];
  "sha256:2f78be1711412f7a09ea185bcc6d884299ac196d58a7decf13389d5acc776500" -> "sha256:46d7ccebe5d9e7d54481da18dd6cae68faa0235f18d7cbe9df99f294886bee5b" [label=""];
  "sha256:46d7ccebe5d9e7d54481da18dd6cae68faa0235f18d7cbe9df99f294886bee5b" -> "sha256:6fb2cd4fbe5ea593936ce345a858e6085dc8eac958c789fa5e19d5bb9b2176e4" [label=""];
  "sha256:6fb2cd4fbe5ea593936ce345a858e6085dc8eac958c789fa5e19d5bb9b2176e4" -> "sha256:67109860e4fa9971b80ab9b87791483a92f3e26c6010cf59bbbdf9261130704e" [label=""];
}

