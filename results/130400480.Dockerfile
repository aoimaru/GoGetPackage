[app/sources/130400480.Dockerfile]
digraph {
  "sha256:1803905fcf8e8360d7e57ef35f36521901c49b9a5c32056b2450e2113bfeba83" [label="docker-image://docker.io/library/java:latest" shape="ellipse"];
  "sha256:a08f3a083803e36c116ced3923b5a70f041a4106215d8ade7d2e22c9bf1cac5d" [label="/bin/sh -c wget https://github.com/nusco/narjillos/releases/download/v0.8.1/narjillos.zip -O narjillos.zip && unzip -o narjillos.zip && rm narjillos.zip" shape="box"];
  "sha256:9387945ca7715d0ce607affddd467b7078e48534d62866b0e37f6dedf733e333" [label="mkdir{path=/narjillos}" shape="note"];
  "sha256:ed2ab432f45d9b403f62b0dc777160238585017f992a612c64c8a0d546958ad0" [label="sha256:ed2ab432f45d9b403f62b0dc777160238585017f992a612c64c8a0d546958ad0" shape="plaintext"];
  "sha256:1803905fcf8e8360d7e57ef35f36521901c49b9a5c32056b2450e2113bfeba83" -> "sha256:a08f3a083803e36c116ced3923b5a70f041a4106215d8ade7d2e22c9bf1cac5d" [label=""];
  "sha256:a08f3a083803e36c116ced3923b5a70f041a4106215d8ade7d2e22c9bf1cac5d" -> "sha256:9387945ca7715d0ce607affddd467b7078e48534d62866b0e37f6dedf733e333" [label=""];
  "sha256:9387945ca7715d0ce607affddd467b7078e48534d62866b0e37f6dedf733e333" -> "sha256:ed2ab432f45d9b403f62b0dc777160238585017f992a612c64c8a0d546958ad0" [label=""];
}

