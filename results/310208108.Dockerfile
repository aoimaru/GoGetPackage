[app/sources/310208108.Dockerfile]
digraph {
  "sha256:5d32ef8292a62c6bd8d491edc174d41618cc43eb3c59090948b773d0c9e9ce2b" [label="docker-image://docker.io/openshift/origin-source:latest" shape="ellipse"];
  "sha256:6464a0f00bf41c8c81bac79080723d21e8cd0d4a0f65d81c7f95c0b6d206bfaf" [label="/bin/sh -c INSTALL_PKGS=\"origin-template-service-broker\" &&     yum --enablerepo=origin-local-release install -y ${INSTALL_PKGS} &&     rpm -V ${INSTALL_PKGS} &&     yum clean all" shape="box"];
  "sha256:91e81209a19757d74f6796e16e81d957c67943dfaa8e784ef90d9d6e75b3a9c1" [label="sha256:91e81209a19757d74f6796e16e81d957c67943dfaa8e784ef90d9d6e75b3a9c1" shape="plaintext"];
  "sha256:5d32ef8292a62c6bd8d491edc174d41618cc43eb3c59090948b773d0c9e9ce2b" -> "sha256:6464a0f00bf41c8c81bac79080723d21e8cd0d4a0f65d81c7f95c0b6d206bfaf" [label=""];
  "sha256:6464a0f00bf41c8c81bac79080723d21e8cd0d4a0f65d81c7f95c0b6d206bfaf" -> "sha256:91e81209a19757d74f6796e16e81d957c67943dfaa8e784ef90d9d6e75b3a9c1" [label=""];
}

