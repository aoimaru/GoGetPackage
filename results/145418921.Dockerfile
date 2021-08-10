[app/sources/145418921.Dockerfile]
digraph {
  "sha256:7226c58393c3638d6b8f4c5c5e9dfe4c0716efc4dfe77a93d2b2b0577814eb39" [label="docker-image://docker.io/gliderlabs/alpine:3.4" shape="ellipse"];
  "sha256:78105d9609b55a613a5d7008b0f6063f665761a7005bfe3369cf9ff6e007ac32" [label="/bin/sh -c apk update && \tapk add wget make go git gcc musl-dev && \tmkdir -p /var/lib/dfi && \tcd /var/lib/dfi && \tgit clone https://github.com/dfi/dfi src && \tcd src && make && cd ../ && \tcp src/bin/dfid . && \twget --no-check-certificate https://willhuxtable.com/dfid.toml && \tchmod +x dfid" shape="box"];
  "sha256:07c3d44f140766c8f0d9e8f24e356544fc2838f062fd70f74c66f13a7b98b16d" [label="sha256:07c3d44f140766c8f0d9e8f24e356544fc2838f062fd70f74c66f13a7b98b16d" shape="plaintext"];
  "sha256:7226c58393c3638d6b8f4c5c5e9dfe4c0716efc4dfe77a93d2b2b0577814eb39" -> "sha256:78105d9609b55a613a5d7008b0f6063f665761a7005bfe3369cf9ff6e007ac32" [label=""];
  "sha256:78105d9609b55a613a5d7008b0f6063f665761a7005bfe3369cf9ff6e007ac32" -> "sha256:07c3d44f140766c8f0d9e8f24e356544fc2838f062fd70f74c66f13a7b98b16d" [label=""];
}

