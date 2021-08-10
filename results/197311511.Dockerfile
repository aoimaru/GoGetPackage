[app/sources/197311511.Dockerfile]
digraph {
  "sha256:62b2ed1dca7e83c5c0338407279584474137eee7480af8ea70e626f4671047bb" [label="docker-image://docker.io/library/spark-test-base:latest" shape="ellipse"];
  "sha256:a53bf093874f55f8eaa408532f831de84832734a0039d9f53c33e3ded9d72e6e" [label="local://context" shape="ellipse"];
  "sha256:33f410340faa5f7d21ca14c159ef2fa77d87663ec79251ba28a5953f9b01cee9" [label="copy{src=/default_cmd, dest=/root/}" shape="note"];
  "sha256:24a5ff9a0cd374534bec0b9a01010eb56d1322a044915636c85e2a9296718db3" [label="sha256:24a5ff9a0cd374534bec0b9a01010eb56d1322a044915636c85e2a9296718db3" shape="plaintext"];
  "sha256:62b2ed1dca7e83c5c0338407279584474137eee7480af8ea70e626f4671047bb" -> "sha256:33f410340faa5f7d21ca14c159ef2fa77d87663ec79251ba28a5953f9b01cee9" [label=""];
  "sha256:a53bf093874f55f8eaa408532f831de84832734a0039d9f53c33e3ded9d72e6e" -> "sha256:33f410340faa5f7d21ca14c159ef2fa77d87663ec79251ba28a5953f9b01cee9" [label=""];
  "sha256:33f410340faa5f7d21ca14c159ef2fa77d87663ec79251ba28a5953f9b01cee9" -> "sha256:24a5ff9a0cd374534bec0b9a01010eb56d1322a044915636c85e2a9296718db3" [label=""];
}

