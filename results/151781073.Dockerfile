[app/sources/151781073.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:9c0a9acba9d24cc4caa63333bcf0727c2b5dd687d17b2637ac7a7fc5561d4cfd" [label="mkdir{path=/mysql}" shape="note"];
  "sha256:2eb0edc6e5ff3fee467461accf8d2af6d573317c45e27e78fbf6bdf24abc8bbc" [label="local://context" shape="ellipse"];
  "sha256:a395dfe2ab7340c43019ce8e908d27d65362a67cf3ac997b4bf9118f0b631744" [label="copy{src=/install.sh, dest=/mysql/install}" shape="note"];
  "sha256:4af0b31c233ccf28f8c42efaecf041d7a8b8f30a3b490d7c44aba5f5b2e62669" [label="/bin/sh -c /mysql/install" shape="box"];
  "sha256:7d0ebe9ce7c300aa0d0c42a5407ef05d94deea61d27c5b50c41216aca5230cbb" [label="copy{src=/configure.sh, dest=/mysql/configure}" shape="note"];
  "sha256:f0163fa8395ea83adac80d5be7223ac07145d05c457ba734cb452b9d9760f86e" [label="/bin/sh -c /mysql/configure" shape="box"];
  "sha256:53c97fbb54acf085119d3d02296ad0afb1b334ab00ab8049e0e13b27ec7dabf8" [label="copy{src=/run.sh, dest=/mysql/run.sh}" shape="note"];
  "sha256:1fcade3ef3e2ab886891ee759ba0d3d617079062d5636844132f3bc5ddd2f0e0" [label="sha256:1fcade3ef3e2ab886891ee759ba0d3d617079062d5636844132f3bc5ddd2f0e0" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:9c0a9acba9d24cc4caa63333bcf0727c2b5dd687d17b2637ac7a7fc5561d4cfd" [label=""];
  "sha256:9c0a9acba9d24cc4caa63333bcf0727c2b5dd687d17b2637ac7a7fc5561d4cfd" -> "sha256:a395dfe2ab7340c43019ce8e908d27d65362a67cf3ac997b4bf9118f0b631744" [label=""];
  "sha256:2eb0edc6e5ff3fee467461accf8d2af6d573317c45e27e78fbf6bdf24abc8bbc" -> "sha256:a395dfe2ab7340c43019ce8e908d27d65362a67cf3ac997b4bf9118f0b631744" [label=""];
  "sha256:a395dfe2ab7340c43019ce8e908d27d65362a67cf3ac997b4bf9118f0b631744" -> "sha256:4af0b31c233ccf28f8c42efaecf041d7a8b8f30a3b490d7c44aba5f5b2e62669" [label=""];
  "sha256:4af0b31c233ccf28f8c42efaecf041d7a8b8f30a3b490d7c44aba5f5b2e62669" -> "sha256:7d0ebe9ce7c300aa0d0c42a5407ef05d94deea61d27c5b50c41216aca5230cbb" [label=""];
  "sha256:2eb0edc6e5ff3fee467461accf8d2af6d573317c45e27e78fbf6bdf24abc8bbc" -> "sha256:7d0ebe9ce7c300aa0d0c42a5407ef05d94deea61d27c5b50c41216aca5230cbb" [label=""];
  "sha256:7d0ebe9ce7c300aa0d0c42a5407ef05d94deea61d27c5b50c41216aca5230cbb" -> "sha256:f0163fa8395ea83adac80d5be7223ac07145d05c457ba734cb452b9d9760f86e" [label=""];
  "sha256:f0163fa8395ea83adac80d5be7223ac07145d05c457ba734cb452b9d9760f86e" -> "sha256:53c97fbb54acf085119d3d02296ad0afb1b334ab00ab8049e0e13b27ec7dabf8" [label=""];
  "sha256:2eb0edc6e5ff3fee467461accf8d2af6d573317c45e27e78fbf6bdf24abc8bbc" -> "sha256:53c97fbb54acf085119d3d02296ad0afb1b334ab00ab8049e0e13b27ec7dabf8" [label=""];
  "sha256:53c97fbb54acf085119d3d02296ad0afb1b334ab00ab8049e0e13b27ec7dabf8" -> "sha256:1fcade3ef3e2ab886891ee759ba0d3d617079062d5636844132f3bc5ddd2f0e0" [label=""];
}

