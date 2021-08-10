[app/sources/462399323.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:bfbb035813e9e161add4e401fb8ab58241ef3446bed44f6941bdb255bbe8c3fb" [label="mkdir{path=/root}" shape="note"];
  "sha256:8bc8228007706f7f147b67d4de0ca14514c6924c0fd9289b4ce246df327f188a" [label="docker-image://docker.io/library/golang:1.11.4-alpine" shape="ellipse"];
  "sha256:3a32115678e2fb47af6d16696a6054833a35a92aa42bf0a01ae26ef41e50b759" [label="https://github.com/golang/dep/releases/download/v0.5.0/dep-linux-amd64" shape="ellipse"];
  "sha256:d17eb0fe0b51e51c5c3d39d1a348df19ddfeda228321dcbd1fb4879a7c32aff7" [label="copy{src=/dep-linux-amd64, dest=/usr/bin/dep}" shape="note"];
  "sha256:d62dc16a35d16ab80c509744aeca42910870d9d0ec043474b77ee67dd4f2b63d" [label="/bin/sh -c chmod +x /usr/bin/dep" shape="box"];
  "sha256:cda0b684a6413bf93a605c5339e1deb1ad6788d3be1bec9cfb64699bb42cc089" [label="/bin/sh -c apk add --update git     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:63126086fc4c3c5a6f7b6ed8ddb570553328be4a5781855587015b29e47da254" [label="mkdir{path=/src/github.com/YotpoLtd/resec}" shape="note"];
  "sha256:5d15677e7fc2dcbde679e061f972b295d3cbfd7a2d7bd92870e3cc093de36f98" [label="local://context" shape="ellipse"];
  "sha256:465c8c0cb4f29c14d59942b2ab0e2b75d90343e935afb385978d665c46756682" [label="copy{src=/Gopkg.toml, dest=/src/github.com/YotpoLtd/resec/},copy{src=/Gopkg.lock, dest=/src/github.com/YotpoLtd/resec/}" shape="note"];
  "sha256:5f41a44ff79350744fbd34bd6a3cdb4a0552ef43ad522406f927fef7d25ef8b7" [label="/bin/sh -c dep ensure --vendor-only" shape="box"];
  "sha256:ace7b1556d24dc219c237f6e7221ffa17af7064117fe0943643696e0f8e0a0a1" [label="copy{src=/, dest=/src/github.com/YotpoLtd/resec/}" shape="note"];
  "sha256:6eb0f54d707c76bbc4773c2d9a25515c2e3839b9fea506f504df8f4413eeaa81" [label="/bin/sh -c CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o build/resec  ." shape="box"];
  "sha256:c3638db9290595be17d81acb85c1d6f37f41446b57dfd6a8de9c8f70cad5a4f6" [label="copy{src=/go/src/github.com/YotpoLtd/resec/build/resec, dest=/root/}" shape="note"];
  "sha256:1564073ea0ee24e990bcadf36139d6ba3d1e943a64195b33ddc893e0dea27ceb" [label="sha256:1564073ea0ee24e990bcadf36139d6ba3d1e943a64195b33ddc893e0dea27ceb" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label=""];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" -> "sha256:bfbb035813e9e161add4e401fb8ab58241ef3446bed44f6941bdb255bbe8c3fb" [label=""];
  "sha256:8bc8228007706f7f147b67d4de0ca14514c6924c0fd9289b4ce246df327f188a" -> "sha256:d17eb0fe0b51e51c5c3d39d1a348df19ddfeda228321dcbd1fb4879a7c32aff7" [label=""];
  "sha256:3a32115678e2fb47af6d16696a6054833a35a92aa42bf0a01ae26ef41e50b759" -> "sha256:d17eb0fe0b51e51c5c3d39d1a348df19ddfeda228321dcbd1fb4879a7c32aff7" [label=""];
  "sha256:d17eb0fe0b51e51c5c3d39d1a348df19ddfeda228321dcbd1fb4879a7c32aff7" -> "sha256:d62dc16a35d16ab80c509744aeca42910870d9d0ec043474b77ee67dd4f2b63d" [label=""];
  "sha256:d62dc16a35d16ab80c509744aeca42910870d9d0ec043474b77ee67dd4f2b63d" -> "sha256:cda0b684a6413bf93a605c5339e1deb1ad6788d3be1bec9cfb64699bb42cc089" [label=""];
  "sha256:cda0b684a6413bf93a605c5339e1deb1ad6788d3be1bec9cfb64699bb42cc089" -> "sha256:63126086fc4c3c5a6f7b6ed8ddb570553328be4a5781855587015b29e47da254" [label=""];
  "sha256:63126086fc4c3c5a6f7b6ed8ddb570553328be4a5781855587015b29e47da254" -> "sha256:465c8c0cb4f29c14d59942b2ab0e2b75d90343e935afb385978d665c46756682" [label=""];
  "sha256:5d15677e7fc2dcbde679e061f972b295d3cbfd7a2d7bd92870e3cc093de36f98" -> "sha256:465c8c0cb4f29c14d59942b2ab0e2b75d90343e935afb385978d665c46756682" [label=""];
  "sha256:465c8c0cb4f29c14d59942b2ab0e2b75d90343e935afb385978d665c46756682" -> "sha256:5f41a44ff79350744fbd34bd6a3cdb4a0552ef43ad522406f927fef7d25ef8b7" [label=""];
  "sha256:5f41a44ff79350744fbd34bd6a3cdb4a0552ef43ad522406f927fef7d25ef8b7" -> "sha256:ace7b1556d24dc219c237f6e7221ffa17af7064117fe0943643696e0f8e0a0a1" [label=""];
  "sha256:5d15677e7fc2dcbde679e061f972b295d3cbfd7a2d7bd92870e3cc093de36f98" -> "sha256:ace7b1556d24dc219c237f6e7221ffa17af7064117fe0943643696e0f8e0a0a1" [label=""];
  "sha256:ace7b1556d24dc219c237f6e7221ffa17af7064117fe0943643696e0f8e0a0a1" -> "sha256:6eb0f54d707c76bbc4773c2d9a25515c2e3839b9fea506f504df8f4413eeaa81" [label=""];
  "sha256:bfbb035813e9e161add4e401fb8ab58241ef3446bed44f6941bdb255bbe8c3fb" -> "sha256:c3638db9290595be17d81acb85c1d6f37f41446b57dfd6a8de9c8f70cad5a4f6" [label=""];
  "sha256:6eb0f54d707c76bbc4773c2d9a25515c2e3839b9fea506f504df8f4413eeaa81" -> "sha256:c3638db9290595be17d81acb85c1d6f37f41446b57dfd6a8de9c8f70cad5a4f6" [label=""];
  "sha256:c3638db9290595be17d81acb85c1d6f37f41446b57dfd6a8de9c8f70cad5a4f6" -> "sha256:1564073ea0ee24e990bcadf36139d6ba3d1e943a64195b33ddc893e0dea27ceb" [label=""];
}

