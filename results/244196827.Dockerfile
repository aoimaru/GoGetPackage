[app/sources/244196827.Dockerfile]
digraph {
  "sha256:1459f9088b92dc4c07120e2519f910fd9409d81d3b77f2b32d4696812c2fc3bf" [label="docker-image://docker.io/library/bats-jenkins-install-plugins:latest" shape="ellipse"];
  "sha256:7182edd4bbfae0ff6f68f52d179b8872450b6323a1b570973942726424a56fb1" [label="/bin/sh -c /usr/local/bin/install-plugins.sh maven-plugin:2.13 ant:1.3" shape="box"];
  "sha256:b98b764aa6c290146a98c9f27418b251d2606a7d19663142ca746d55ba23aafd" [label="sha256:b98b764aa6c290146a98c9f27418b251d2606a7d19663142ca746d55ba23aafd" shape="plaintext"];
  "sha256:1459f9088b92dc4c07120e2519f910fd9409d81d3b77f2b32d4696812c2fc3bf" -> "sha256:7182edd4bbfae0ff6f68f52d179b8872450b6323a1b570973942726424a56fb1" [label=""];
  "sha256:7182edd4bbfae0ff6f68f52d179b8872450b6323a1b570973942726424a56fb1" -> "sha256:b98b764aa6c290146a98c9f27418b251d2606a7d19663142ca746d55ba23aafd" [label=""];
}

