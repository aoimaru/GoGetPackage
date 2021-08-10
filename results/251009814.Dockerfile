[app/sources/251009814.Dockerfile]
digraph {
  "sha256:c05324bca82f601b4dce9e4bb701738c9c64a7faee30f1e2823d5bbb72bce889" [label="docker-image://docker.io/library/buildpack-deps:xenial" shape="ellipse"];
  "sha256:be4c754e4b60e751092baee502612b8378f395e45beb8f5c0477235a582c7f7a" [label="/bin/sh -c apt-get update     && apt-get -y upgrade     && apt-get -y install apt-transport-https ca-certificates make gcc gcc-aarch64-linux-gnu rsync python-pip build-essential curl openssl vim jq     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:41988e44387d2573c9ecef4647793b3cd452ba65a93e86810fcd594c5b4a5a00" [label="/bin/sh -c wget -q https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz     && tar -C /usr/local -xzf go${GO_VERSION}.linux-amd64.tar.gz && rm go${GO_VERSION}.linux-amd64.tar.gz" shape="box"];
  "sha256:7e50b8e5d22d6d4edcea2039977961dec7d72e67d526a84e166ced0ee8431f39" [label="/bin/sh -c curl -fsSL https://get.docker.com/ | sh" shape="box"];
  "sha256:62d75fdc07ea609d1dc69a2b5d44d980a6cc1004a04ca14e73a28fdb1ea6b49d" [label="/bin/sh -c go get -u github.com/go-bindata/go-bindata/go-bindata" shape="box"];
  "sha256:c37c66c5527c82827ed87b410c5912cda5382993173ad0593a12f82b1f59f9d7" [label="mkdir{path=/gopath/src/k8s.io/kubernetes}" shape="note"];
  "sha256:07f1b02ea436c966b4dba23db795f5b24b0478af0077d9c04070d915bd8bf22f" [label="local://context" shape="ellipse"];
  "sha256:a6609bfd905ba80ef38ab337ee928035f32563020260c6c8d9085c28f547c04f" [label="copy{src=/, dest=/gopath/src/k8s.io/kubernetes}" shape="note"];
  "sha256:2a462ea61576b6979b33a8cad036bd8875e13ec1273b461c33d85638f8e333d1" [label="sha256:2a462ea61576b6979b33a8cad036bd8875e13ec1273b461c33d85638f8e333d1" shape="plaintext"];
  "sha256:c05324bca82f601b4dce9e4bb701738c9c64a7faee30f1e2823d5bbb72bce889" -> "sha256:be4c754e4b60e751092baee502612b8378f395e45beb8f5c0477235a582c7f7a" [label=""];
  "sha256:be4c754e4b60e751092baee502612b8378f395e45beb8f5c0477235a582c7f7a" -> "sha256:41988e44387d2573c9ecef4647793b3cd452ba65a93e86810fcd594c5b4a5a00" [label=""];
  "sha256:41988e44387d2573c9ecef4647793b3cd452ba65a93e86810fcd594c5b4a5a00" -> "sha256:7e50b8e5d22d6d4edcea2039977961dec7d72e67d526a84e166ced0ee8431f39" [label=""];
  "sha256:7e50b8e5d22d6d4edcea2039977961dec7d72e67d526a84e166ced0ee8431f39" -> "sha256:62d75fdc07ea609d1dc69a2b5d44d980a6cc1004a04ca14e73a28fdb1ea6b49d" [label=""];
  "sha256:62d75fdc07ea609d1dc69a2b5d44d980a6cc1004a04ca14e73a28fdb1ea6b49d" -> "sha256:c37c66c5527c82827ed87b410c5912cda5382993173ad0593a12f82b1f59f9d7" [label=""];
  "sha256:c37c66c5527c82827ed87b410c5912cda5382993173ad0593a12f82b1f59f9d7" -> "sha256:a6609bfd905ba80ef38ab337ee928035f32563020260c6c8d9085c28f547c04f" [label=""];
  "sha256:07f1b02ea436c966b4dba23db795f5b24b0478af0077d9c04070d915bd8bf22f" -> "sha256:a6609bfd905ba80ef38ab337ee928035f32563020260c6c8d9085c28f547c04f" [label=""];
  "sha256:a6609bfd905ba80ef38ab337ee928035f32563020260c6c8d9085c28f547c04f" -> "sha256:2a462ea61576b6979b33a8cad036bd8875e13ec1273b461c33d85638f8e333d1" [label=""];
}

