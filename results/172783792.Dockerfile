[app/sources/172783792.Dockerfile]
digraph {
  "sha256:ebc57f016b298d45b7e1cac4f41d64829abce8929ca787f2d288772cfcc45800" [label="docker-image://docker.io/texastribune/base:latest" shape="ellipse"];
  "sha256:bf929c3403f338fcb709a2bbdcb9e005c72d6fd55349d3ff0b39b6801047d9ed" [label="/bin/sh -c apt-get update &&       apt-get -yq install postgresql-client git wget curl &&       pip install postdoc" shape="box"];
  "sha256:862ae5128eb5c6f10b5a8becd3c8fdb3cb9921eac93a557ccbc5b3b00a88da41" [label="https://storage.googleapis.com/golang/go1.3.3.linux-amd64.tar.gz" shape="ellipse"];
  "sha256:bc55cdbf57801e7d067053f4dd1b69ef9262989a368453d8c0e1fee7dc23db33" [label="copy{src=/go1.3.3.linux-amd64.tar.gz, dest=/app/}" shape="note"];
  "sha256:f7a6d582c7bac1cc689006dde511920092c0faee5d5946591806a40fffbedf62" [label="/bin/sh -c tar -C /usr/local -xzf /app/go1.3.3.linux-amd64.tar.gz" shape="box"];
  "sha256:eb924f74796b326fbf3cc23f13b390497acd69c358f4120d03e71a6705ada8a6" [label="/bin/sh -c mkdir -p /app/go" shape="box"];
  "sha256:b798c3168e584df55e5d746b6c03f23524dd66b009585481e653dc30028b92a7" [label="sha256:b798c3168e584df55e5d746b6c03f23524dd66b009585481e653dc30028b92a7" shape="plaintext"];
  "sha256:ebc57f016b298d45b7e1cac4f41d64829abce8929ca787f2d288772cfcc45800" -> "sha256:bf929c3403f338fcb709a2bbdcb9e005c72d6fd55349d3ff0b39b6801047d9ed" [label=""];
  "sha256:bf929c3403f338fcb709a2bbdcb9e005c72d6fd55349d3ff0b39b6801047d9ed" -> "sha256:bc55cdbf57801e7d067053f4dd1b69ef9262989a368453d8c0e1fee7dc23db33" [label=""];
  "sha256:862ae5128eb5c6f10b5a8becd3c8fdb3cb9921eac93a557ccbc5b3b00a88da41" -> "sha256:bc55cdbf57801e7d067053f4dd1b69ef9262989a368453d8c0e1fee7dc23db33" [label=""];
  "sha256:bc55cdbf57801e7d067053f4dd1b69ef9262989a368453d8c0e1fee7dc23db33" -> "sha256:f7a6d582c7bac1cc689006dde511920092c0faee5d5946591806a40fffbedf62" [label=""];
  "sha256:f7a6d582c7bac1cc689006dde511920092c0faee5d5946591806a40fffbedf62" -> "sha256:eb924f74796b326fbf3cc23f13b390497acd69c358f4120d03e71a6705ada8a6" [label=""];
  "sha256:eb924f74796b326fbf3cc23f13b390497acd69c358f4120d03e71a6705ada8a6" -> "sha256:b798c3168e584df55e5d746b6c03f23524dd66b009585481e653dc30028b92a7" [label=""];
}

