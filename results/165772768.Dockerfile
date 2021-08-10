[app/sources/165772768.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:2ac983eb775e2bb08308c0fda967973197843db9248021aaba84165a7999d38d" [label="/bin/sh -c apk --no-cache add \tca-certificates \tgit" shape="box"];
  "sha256:9ac06c991d37a9b4e8c12c21df11f87534ca752bbca56a2f85874d5934aec5cb" [label="/bin/sh -c git clone --depth 1 --branch ${TRANSFER_SH_VERSION} https://github.com/dutchcoders/transfer.sh /go/src/github.com/dutchcoders/transfer.sh" shape="box"];
  "sha256:caef9a8d1f7eafc9125c44fd466a4647369e0d9f732ec93025326a05518dafa3" [label="mkdir{path=/go/src/github.com/dutchcoders/transfer.sh}" shape="note"];
  "sha256:822c5ad505ce894512ea5a5c1ad994b96f1948faa3fa88f680a908dd7d21ea78" [label="/bin/sh -c GO111MODULE=on go build -o /usr/bin/transfer.sh" shape="box"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:d050ddeb0ec04e62d28a153a693f460a5ccfffbff9d33b7b5816747edd9db078" [label="copy{src=/usr/bin/transfer.sh, dest=/usr/bin/transfer.sh}" shape="note"];
  "sha256:d1ea3cf947ba7a0175faec99198c1f5a4376b75e4bc76312e3f014e478e98dce" [label="copy{src=/etc/ssl/certs, dest=/etc/ssl/certs}" shape="note"];
  "sha256:90d05b0d706b661d7602dc93309d999c0751071f69533a7430783799c8558577" [label="sha256:90d05b0d706b661d7602dc93309d999c0751071f69533a7430783799c8558577" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:2ac983eb775e2bb08308c0fda967973197843db9248021aaba84165a7999d38d" [label=""];
  "sha256:2ac983eb775e2bb08308c0fda967973197843db9248021aaba84165a7999d38d" -> "sha256:9ac06c991d37a9b4e8c12c21df11f87534ca752bbca56a2f85874d5934aec5cb" [label=""];
  "sha256:9ac06c991d37a9b4e8c12c21df11f87534ca752bbca56a2f85874d5934aec5cb" -> "sha256:caef9a8d1f7eafc9125c44fd466a4647369e0d9f732ec93025326a05518dafa3" [label=""];
  "sha256:caef9a8d1f7eafc9125c44fd466a4647369e0d9f732ec93025326a05518dafa3" -> "sha256:822c5ad505ce894512ea5a5c1ad994b96f1948faa3fa88f680a908dd7d21ea78" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:d050ddeb0ec04e62d28a153a693f460a5ccfffbff9d33b7b5816747edd9db078" [label=""];
  "sha256:822c5ad505ce894512ea5a5c1ad994b96f1948faa3fa88f680a908dd7d21ea78" -> "sha256:d050ddeb0ec04e62d28a153a693f460a5ccfffbff9d33b7b5816747edd9db078" [label=""];
  "sha256:d050ddeb0ec04e62d28a153a693f460a5ccfffbff9d33b7b5816747edd9db078" -> "sha256:d1ea3cf947ba7a0175faec99198c1f5a4376b75e4bc76312e3f014e478e98dce" [label=""];
  "sha256:822c5ad505ce894512ea5a5c1ad994b96f1948faa3fa88f680a908dd7d21ea78" -> "sha256:d1ea3cf947ba7a0175faec99198c1f5a4376b75e4bc76312e3f014e478e98dce" [label=""];
  "sha256:d1ea3cf947ba7a0175faec99198c1f5a4376b75e4bc76312e3f014e478e98dce" -> "sha256:90d05b0d706b661d7602dc93309d999c0751071f69533a7430783799c8558577" [label=""];
}

