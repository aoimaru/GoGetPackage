[app/sources/202585220.Dockerfile]
digraph {
  "sha256:1d286378f6ae5130ea0caa645ce6c3a037334f2beaedaeed50f17321c6227b49" [label="docker-image://docker.io/library/jsondash_base:latest" shape="ellipse"];
  "sha256:1c8d9cce28197b22f7614d072eead4bc449c4ee6f19c87867b073b5ff1341182" [label="mkdir{path=/app/example_app}" shape="note"];
  "sha256:537154de43293bc25a002b5ca136237e0614d43fbb0fa169fc184670aa6f1fcf" [label="sha256:537154de43293bc25a002b5ca136237e0614d43fbb0fa169fc184670aa6f1fcf" shape="plaintext"];
  "sha256:1d286378f6ae5130ea0caa645ce6c3a037334f2beaedaeed50f17321c6227b49" -> "sha256:1c8d9cce28197b22f7614d072eead4bc449c4ee6f19c87867b073b5ff1341182" [label=""];
  "sha256:1c8d9cce28197b22f7614d072eead4bc449c4ee6f19c87867b073b5ff1341182" -> "sha256:537154de43293bc25a002b5ca136237e0614d43fbb0fa169fc184670aa6f1fcf" [label=""];
}

