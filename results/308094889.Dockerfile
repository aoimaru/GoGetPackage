[app/sources/308094889.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:46f2a67af88e73b3ef62f77197b0fe7d998b35b7a70211187c3ccfe4e83e5be8" [label="/bin/sh -c mkdir -p /usr/src/sample-app" shape="box"];
  "sha256:33b173f1daa18af1b4050e57f5d57fdae208f428caf844861516ec99cee39555" [label="local://context" shape="ellipse"];
  "sha256:80fbad167d1835f3beed9ca37b5f97038117a8474fcb0aee65c1bdeef0124362" [label="copy{src=/requirements.txt, dest=/usr/src/sample-app}" shape="note"];
  "sha256:6c7ce9e916f139f260ca26ee2b955bab31808b469c5b87483d07b184b17b1c61" [label="mkdir{path=/usr/src/sample-app}" shape="note"];
  "sha256:2c3c600d8e2be2ec141aaaadfea81b7f9bde6f3e6d9ce94997a626c872e73bce" [label="/bin/sh -c yum -y install centos-release-scl &&     yum -y install --setopt=tsflags=nodocs rh-python35-python-pip &&     source scl_source enable rh-python35 &&     pip install --no-cache-dir -U pip setuptools &&     pip install --no-cache-dir -r requirements.txt &&     python -m pip uninstall -y pip setuptools &&     yum clean all" shape="box"];
  "sha256:de57f671e8ab9792638b3a4ec0a7008ae1e3ca655c7ad5552db94019607a9b24" [label="/bin/sh -c echo $'#!/bin/sh\\nsource scl_source enable rh-python35\\nexec \"$@\"' > /usr/bin/entrypoint.sh &&     chmod +x /usr/bin/entrypoint.sh" shape="box"];
  "sha256:4818240a13312c49892d89973ff21bc0c9fd45a1203d1d8e1cd291fd2d55fb0f" [label="copy{src=/src, dest=/usr/src/sample-app/src}" shape="note"];
  "sha256:d95e1df8856492afbf77093a408f8243d0667a51969aaa5fe157f031ff21a058" [label="mkdir{path=/usr/src/sample-app/src}" shape="note"];
  "sha256:1f53fd6819e9987590bb03aa249611cb8bb1954509f58388b6d512a9ce243813" [label="sha256:1f53fd6819e9987590bb03aa249611cb8bb1954509f58388b6d512a9ce243813" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:46f2a67af88e73b3ef62f77197b0fe7d998b35b7a70211187c3ccfe4e83e5be8" [label=""];
  "sha256:46f2a67af88e73b3ef62f77197b0fe7d998b35b7a70211187c3ccfe4e83e5be8" -> "sha256:80fbad167d1835f3beed9ca37b5f97038117a8474fcb0aee65c1bdeef0124362" [label=""];
  "sha256:33b173f1daa18af1b4050e57f5d57fdae208f428caf844861516ec99cee39555" -> "sha256:80fbad167d1835f3beed9ca37b5f97038117a8474fcb0aee65c1bdeef0124362" [label=""];
  "sha256:80fbad167d1835f3beed9ca37b5f97038117a8474fcb0aee65c1bdeef0124362" -> "sha256:6c7ce9e916f139f260ca26ee2b955bab31808b469c5b87483d07b184b17b1c61" [label=""];
  "sha256:6c7ce9e916f139f260ca26ee2b955bab31808b469c5b87483d07b184b17b1c61" -> "sha256:2c3c600d8e2be2ec141aaaadfea81b7f9bde6f3e6d9ce94997a626c872e73bce" [label=""];
  "sha256:2c3c600d8e2be2ec141aaaadfea81b7f9bde6f3e6d9ce94997a626c872e73bce" -> "sha256:de57f671e8ab9792638b3a4ec0a7008ae1e3ca655c7ad5552db94019607a9b24" [label=""];
  "sha256:de57f671e8ab9792638b3a4ec0a7008ae1e3ca655c7ad5552db94019607a9b24" -> "sha256:4818240a13312c49892d89973ff21bc0c9fd45a1203d1d8e1cd291fd2d55fb0f" [label=""];
  "sha256:33b173f1daa18af1b4050e57f5d57fdae208f428caf844861516ec99cee39555" -> "sha256:4818240a13312c49892d89973ff21bc0c9fd45a1203d1d8e1cd291fd2d55fb0f" [label=""];
  "sha256:4818240a13312c49892d89973ff21bc0c9fd45a1203d1d8e1cd291fd2d55fb0f" -> "sha256:d95e1df8856492afbf77093a408f8243d0667a51969aaa5fe157f031ff21a058" [label=""];
  "sha256:d95e1df8856492afbf77093a408f8243d0667a51969aaa5fe157f031ff21a058" -> "sha256:1f53fd6819e9987590bb03aa249611cb8bb1954509f58388b6d512a9ce243813" [label=""];
}

