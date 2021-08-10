[app/sources/360369093.Dockerfile]
digraph {
  "sha256:801d7b05da3324a8fbeb7856122d39469ef99a2eb41bdf2fa2925baddda00908" [label="docker-image://docker.io/library/golang:1.6-alpine" shape="ellipse"];
  "sha256:e48032e6eb8f561f4812e8f167f469e52c01253cad4b401a81d76722d3b6a437" [label="mkdir{path=/go/src/github.com/docker/distribution}" shape="note"];
  "sha256:39b46825c4183fbfb473a6ec9e33e0d9109ca0e1486f00e69343dcad4c717a97" [label="local://context" shape="ellipse"];
  "sha256:06a8a010753f69c8a24d1650f55b5821aa6db65a39a92dccfb9ff7ce025c437c" [label="copy{src=/, dest=/go/src/github.com/docker/distribution}" shape="note"];
  "sha256:5144591af129c2d50cf61ee55b559203df7af1a69105e330b49b9430a921333a" [label="copy{src=/cmd/registry/config-dev.yml, dest=/etc/docker/registry/config.yml}" shape="note"];
  "sha256:cb455f524e3a9027431ac62e4683c7eede1266d5705bba5546296d391bb6880d" [label="/bin/sh -c set -ex     && apk add --no-cache make git" shape="box"];
  "sha256:4bcbc028cfc371577886589b1154bf0afe0572f664823ef98852703a280ed02d" [label="/bin/sh -c make PREFIX=/go clean binaries" shape="box"];
  "sha256:958b21652f11a30901bb1b8c16f00711b378afb3c275f3882cc80398683640ea" [label="sha256:958b21652f11a30901bb1b8c16f00711b378afb3c275f3882cc80398683640ea" shape="plaintext"];
  "sha256:801d7b05da3324a8fbeb7856122d39469ef99a2eb41bdf2fa2925baddda00908" -> "sha256:e48032e6eb8f561f4812e8f167f469e52c01253cad4b401a81d76722d3b6a437" [label=""];
  "sha256:e48032e6eb8f561f4812e8f167f469e52c01253cad4b401a81d76722d3b6a437" -> "sha256:06a8a010753f69c8a24d1650f55b5821aa6db65a39a92dccfb9ff7ce025c437c" [label=""];
  "sha256:39b46825c4183fbfb473a6ec9e33e0d9109ca0e1486f00e69343dcad4c717a97" -> "sha256:06a8a010753f69c8a24d1650f55b5821aa6db65a39a92dccfb9ff7ce025c437c" [label=""];
  "sha256:06a8a010753f69c8a24d1650f55b5821aa6db65a39a92dccfb9ff7ce025c437c" -> "sha256:5144591af129c2d50cf61ee55b559203df7af1a69105e330b49b9430a921333a" [label=""];
  "sha256:39b46825c4183fbfb473a6ec9e33e0d9109ca0e1486f00e69343dcad4c717a97" -> "sha256:5144591af129c2d50cf61ee55b559203df7af1a69105e330b49b9430a921333a" [label=""];
  "sha256:5144591af129c2d50cf61ee55b559203df7af1a69105e330b49b9430a921333a" -> "sha256:cb455f524e3a9027431ac62e4683c7eede1266d5705bba5546296d391bb6880d" [label=""];
  "sha256:cb455f524e3a9027431ac62e4683c7eede1266d5705bba5546296d391bb6880d" -> "sha256:4bcbc028cfc371577886589b1154bf0afe0572f664823ef98852703a280ed02d" [label=""];
  "sha256:4bcbc028cfc371577886589b1154bf0afe0572f664823ef98852703a280ed02d" -> "sha256:958b21652f11a30901bb1b8c16f00711b378afb3c275f3882cc80398683640ea" [label=""];
}

