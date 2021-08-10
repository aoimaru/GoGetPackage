[app/sources/454386088.Dockerfile]
digraph {
  "sha256:aeca43a0890612281c56e18ec6d59f8936d1e7119d40ea8dd759daa1001af134" [label="docker-image://docker.io/karalabe/xgo-base:latest" shape="ellipse"];
  "sha256:a65c99fc56d080a440adf3afacceac921f0ad37df5cfa0f59d56f5ec10745455" [label="/bin/sh -c export ROOT_DIST=https://storage.googleapis.com/golang/go1.9.3.linux-amd64.tar.gz     &&   export ROOT_DIST_SHA=a4da5f4c07dfda8194c4621611aeb7ceaab98af0b38bfb29e1be2ebb04c3556c &&     $BOOTSTRAP_PURE" shape="box"];
  "sha256:bf215a5ea4d1c9b2ff92c29655197f75d352e45e60ffd8081090cb8330517cb9" [label="sha256:bf215a5ea4d1c9b2ff92c29655197f75d352e45e60ffd8081090cb8330517cb9" shape="plaintext"];
  "sha256:aeca43a0890612281c56e18ec6d59f8936d1e7119d40ea8dd759daa1001af134" -> "sha256:a65c99fc56d080a440adf3afacceac921f0ad37df5cfa0f59d56f5ec10745455" [label=""];
  "sha256:a65c99fc56d080a440adf3afacceac921f0ad37df5cfa0f59d56f5ec10745455" -> "sha256:bf215a5ea4d1c9b2ff92c29655197f75d352e45e60ffd8081090cb8330517cb9" [label=""];
}

