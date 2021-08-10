[app/sources/354687176.Dockerfile]
digraph {
  "sha256:dba4599ba3da1e49a9da8d67921a811e90882363a32cb1ee18389722ce3b007b" [label="docker-image://docker.io/library/alpine:3.9@sha256:644fcb1a676b5165371437feaa922943aaf7afcfa8bfee4472f6860aad1ef2a0" shape="ellipse"];
  "sha256:b6f4ebcdc6a83e9b1512d2828644ef9c4e1c91697ec325abaeba49225f5cdf0b" [label="/bin/sh -c apk add --no-cache bind-tools ca-certificates mailcap tini" shape="box"];
  "sha256:e0269478f71c5e0ebccf33eeeaab45fcb91cc162cdf04c652bfff844b08e94d6" [label="docker-image://docker.io/library/ctags:latest" shape="ellipse"];
  "sha256:1d086672513caaf5585f4ac6858b7b5a578512492218d3bd9ec6f7f893f6a1f7" [label="copy{src=/usr/local/bin/universal-*, dest=/usr/local/bin/}" shape="note"];
  "sha256:d646460100dbea73068ebba46f6af7bf8579308d0eaf15afb32ba94e53e8d0bc" [label="docker-image://docker.io/library/libsqlite3-pcre:latest" shape="ellipse"];
  "sha256:8872be9ac1c8f5344a9c323fa7a44e89d3e5d666cf102315ef70f765d5413bff" [label="copy{src=/sqlite3-pcre/pcre.so, dest=/libsqlite3-pcre.so}" shape="note"];
  "sha256:20a7b749e66bb12e30fac9650077c8c460e479ae33f67cafc29048bc9f5ef76f" [label="/bin/sh -c apk --no-cache add pcre-dev" shape="box"];
  "sha256:9d74f6c7d18ce9af6946f1b833a011aa26a53b7ae94ef27a2024764ebed98159" [label="local://context" shape="ellipse"];
  "sha256:d76016020c86efd299252c5a2d31f6fb6b8a071b7bc1108142610a4721574003" [label="copy{src=/.ctags.d, dest=/.ctags.d}" shape="note"];
  "sha256:c927426375ba1c71e46c2441b80c6e15a2fa35f8477d59f733edb03b1e75d655" [label="copy{src=/symbols, dest=/usr/local/bin/}" shape="note"];
  "sha256:2da871805876cfc0467ec7129374624d80150606f0ec93a72139ec7313a76c60" [label="sha256:2da871805876cfc0467ec7129374624d80150606f0ec93a72139ec7313a76c60" shape="plaintext"];
  "sha256:dba4599ba3da1e49a9da8d67921a811e90882363a32cb1ee18389722ce3b007b" -> "sha256:b6f4ebcdc6a83e9b1512d2828644ef9c4e1c91697ec325abaeba49225f5cdf0b" [label=""];
  "sha256:b6f4ebcdc6a83e9b1512d2828644ef9c4e1c91697ec325abaeba49225f5cdf0b" -> "sha256:1d086672513caaf5585f4ac6858b7b5a578512492218d3bd9ec6f7f893f6a1f7" [label=""];
  "sha256:e0269478f71c5e0ebccf33eeeaab45fcb91cc162cdf04c652bfff844b08e94d6" -> "sha256:1d086672513caaf5585f4ac6858b7b5a578512492218d3bd9ec6f7f893f6a1f7" [label=""];
  "sha256:1d086672513caaf5585f4ac6858b7b5a578512492218d3bd9ec6f7f893f6a1f7" -> "sha256:8872be9ac1c8f5344a9c323fa7a44e89d3e5d666cf102315ef70f765d5413bff" [label=""];
  "sha256:d646460100dbea73068ebba46f6af7bf8579308d0eaf15afb32ba94e53e8d0bc" -> "sha256:8872be9ac1c8f5344a9c323fa7a44e89d3e5d666cf102315ef70f765d5413bff" [label=""];
  "sha256:8872be9ac1c8f5344a9c323fa7a44e89d3e5d666cf102315ef70f765d5413bff" -> "sha256:20a7b749e66bb12e30fac9650077c8c460e479ae33f67cafc29048bc9f5ef76f" [label=""];
  "sha256:20a7b749e66bb12e30fac9650077c8c460e479ae33f67cafc29048bc9f5ef76f" -> "sha256:d76016020c86efd299252c5a2d31f6fb6b8a071b7bc1108142610a4721574003" [label=""];
  "sha256:9d74f6c7d18ce9af6946f1b833a011aa26a53b7ae94ef27a2024764ebed98159" -> "sha256:d76016020c86efd299252c5a2d31f6fb6b8a071b7bc1108142610a4721574003" [label=""];
  "sha256:d76016020c86efd299252c5a2d31f6fb6b8a071b7bc1108142610a4721574003" -> "sha256:c927426375ba1c71e46c2441b80c6e15a2fa35f8477d59f733edb03b1e75d655" [label=""];
  "sha256:9d74f6c7d18ce9af6946f1b833a011aa26a53b7ae94ef27a2024764ebed98159" -> "sha256:c927426375ba1c71e46c2441b80c6e15a2fa35f8477d59f733edb03b1e75d655" [label=""];
  "sha256:c927426375ba1c71e46c2441b80c6e15a2fa35f8477d59f733edb03b1e75d655" -> "sha256:2da871805876cfc0467ec7129374624d80150606f0ec93a72139ec7313a76c60" [label=""];
}

