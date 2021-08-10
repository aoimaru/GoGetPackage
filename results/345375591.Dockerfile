[app/sources/345375591.Dockerfile]
digraph {
  "sha256:ac359b3437816b87ba7dc447d45bf56893246142fbcc41f34b8aa8346dff88de" [label="docker-image://docker.io/balenalib/orange-pi-lite-debian:stretch-build" shape="ellipse"];
  "sha256:d779f4c8492ee0c613eea2e2091f6eedee4d93f3df4b2e38a1329de4459c03fe" [label="/bin/sh -c mkdir -p /usr/local/go \t&& curl -SLO \"http://resin-packages.s3.amazonaws.com/golang/v$GO_VERSION/go$GO_VERSION.linux-armv7hf.tar.gz\" \t&& echo \"1512240ffe447bca9fe3726e4e253975c92a0053c2b738df031b8be1ffdadee8  go$GO_VERSION.linux-armv7hf.tar.gz\" | sha256sum -c - \t&& tar -xzf \"go$GO_VERSION.linux-armv7hf.tar.gz\" -C /usr/local/go --strip-components=1 \t&& rm -f go$GO_VERSION.linux-armv7hf.tar.gz" shape="box"];
  "sha256:f8b52cf71b4f105d94cb8c4b0eb2d95e0c9544c3a39fbd2a012ee2eb339973dc" [label="/bin/sh -c mkdir -p \"$GOPATH/src\" \"$GOPATH/bin\" && chmod -R 777 \"$GOPATH\"" shape="box"];
  "sha256:0532f1fff01e05a1f724428de4030b8ca89f15ac12a192004e9467ab42f7cde8" [label="mkdir{path=/go}" shape="note"];
  "sha256:03c1dce5170372a48b515766e16b06f2605e25a779b0bf45a200ae90e966fe93" [label="sha256:03c1dce5170372a48b515766e16b06f2605e25a779b0bf45a200ae90e966fe93" shape="plaintext"];
  "sha256:ac359b3437816b87ba7dc447d45bf56893246142fbcc41f34b8aa8346dff88de" -> "sha256:d779f4c8492ee0c613eea2e2091f6eedee4d93f3df4b2e38a1329de4459c03fe" [label=""];
  "sha256:d779f4c8492ee0c613eea2e2091f6eedee4d93f3df4b2e38a1329de4459c03fe" -> "sha256:f8b52cf71b4f105d94cb8c4b0eb2d95e0c9544c3a39fbd2a012ee2eb339973dc" [label=""];
  "sha256:f8b52cf71b4f105d94cb8c4b0eb2d95e0c9544c3a39fbd2a012ee2eb339973dc" -> "sha256:0532f1fff01e05a1f724428de4030b8ca89f15ac12a192004e9467ab42f7cde8" [label=""];
  "sha256:0532f1fff01e05a1f724428de4030b8ca89f15ac12a192004e9467ab42f7cde8" -> "sha256:03c1dce5170372a48b515766e16b06f2605e25a779b0bf45a200ae90e966fe93" [label=""];
}

