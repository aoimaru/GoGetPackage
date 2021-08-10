[app/sources/275596085.Dockerfile]
digraph {
  "sha256:191e7d5bb32a87aeb73bb70710d68bc8bc31a7eef7774939e2e8f57da0cc3e8d" [label="docker-image://docker.io/kyma/docker-nginx:latest" shape="ellipse"];
  "sha256:6b0826a647de1625f217edb3597e7c7e3f1d08e31533cdb83cc7b6ab61b9ba0c" [label="local://context" shape="ellipse"];
  "sha256:9674fba6d2228315b230648cfa1de10aabf1abe2c07ede575bb56ffdd887ea02" [label="copy{src=/site, dest=/var/www}" shape="note"];
  "sha256:662a37cb0a1aa192c65021cf66224b8cd9947c3cf05e098430f6b78c32f68b43" [label="sha256:662a37cb0a1aa192c65021cf66224b8cd9947c3cf05e098430f6b78c32f68b43" shape="plaintext"];
  "sha256:191e7d5bb32a87aeb73bb70710d68bc8bc31a7eef7774939e2e8f57da0cc3e8d" -> "sha256:9674fba6d2228315b230648cfa1de10aabf1abe2c07ede575bb56ffdd887ea02" [label=""];
  "sha256:6b0826a647de1625f217edb3597e7c7e3f1d08e31533cdb83cc7b6ab61b9ba0c" -> "sha256:9674fba6d2228315b230648cfa1de10aabf1abe2c07ede575bb56ffdd887ea02" [label=""];
  "sha256:9674fba6d2228315b230648cfa1de10aabf1abe2c07ede575bb56ffdd887ea02" -> "sha256:662a37cb0a1aa192c65021cf66224b8cd9947c3cf05e098430f6b78c32f68b43" [label=""];
}

