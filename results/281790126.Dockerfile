[app/sources/281790126.Dockerfile]
digraph {
  "sha256:096047481b337ce84fc0be476643151cb340a52fd893ef849324698264980108" [label="docker-image://docker.io/library/golang:1.8-alpine" shape="ellipse"];
  "sha256:08a0e9a4833fa56d4e118d7753313a4253697daeb0a432a29cfe9081c95da55f" [label="/bin/sh -c set -ex     && apk add --no-cache make git" shape="box"];
  "sha256:81449569e88c9d5aed9b551b79cf12e63ad1d59c6f7795c119325a1062d512e1" [label="mkdir{path=/go/src/github.com/docker/distribution}" shape="note"];
  "sha256:d009002bc0e65a2a06e8d84512a762595f05bd33d09fffd83c6c1223900383f5" [label="local://context" shape="ellipse"];
  "sha256:f6a9fdc92906c34e7bcd21932f3bceeae8fb5ac260aa84a8694b9c629c3b06cd" [label="copy{src=/, dest=/go/src/github.com/docker/distribution}" shape="note"];
  "sha256:e6d1ae345cf35bf47c7a68987870118d0b30e3e2fb6625962181ed9da6cdb6a3" [label="copy{src=/cmd/registry/config-dev.yml, dest=/etc/docker/registry/config.yml}" shape="note"];
  "sha256:ecc851641ae756df7081899acfb0c698f2e19a3f3ce1a9a9cb43a494e8c5be34" [label="/bin/sh -c make PREFIX=/go clean binaries" shape="box"];
  "sha256:20f1824e44c6ec6546c48ea5ad0e4e7ab58c5e4f6f38a7757ef741d09ad715ca" [label="sha256:20f1824e44c6ec6546c48ea5ad0e4e7ab58c5e4f6f38a7757ef741d09ad715ca" shape="plaintext"];
  "sha256:096047481b337ce84fc0be476643151cb340a52fd893ef849324698264980108" -> "sha256:08a0e9a4833fa56d4e118d7753313a4253697daeb0a432a29cfe9081c95da55f" [label=""];
  "sha256:08a0e9a4833fa56d4e118d7753313a4253697daeb0a432a29cfe9081c95da55f" -> "sha256:81449569e88c9d5aed9b551b79cf12e63ad1d59c6f7795c119325a1062d512e1" [label=""];
  "sha256:81449569e88c9d5aed9b551b79cf12e63ad1d59c6f7795c119325a1062d512e1" -> "sha256:f6a9fdc92906c34e7bcd21932f3bceeae8fb5ac260aa84a8694b9c629c3b06cd" [label=""];
  "sha256:d009002bc0e65a2a06e8d84512a762595f05bd33d09fffd83c6c1223900383f5" -> "sha256:f6a9fdc92906c34e7bcd21932f3bceeae8fb5ac260aa84a8694b9c629c3b06cd" [label=""];
  "sha256:f6a9fdc92906c34e7bcd21932f3bceeae8fb5ac260aa84a8694b9c629c3b06cd" -> "sha256:e6d1ae345cf35bf47c7a68987870118d0b30e3e2fb6625962181ed9da6cdb6a3" [label=""];
  "sha256:d009002bc0e65a2a06e8d84512a762595f05bd33d09fffd83c6c1223900383f5" -> "sha256:e6d1ae345cf35bf47c7a68987870118d0b30e3e2fb6625962181ed9da6cdb6a3" [label=""];
  "sha256:e6d1ae345cf35bf47c7a68987870118d0b30e3e2fb6625962181ed9da6cdb6a3" -> "sha256:ecc851641ae756df7081899acfb0c698f2e19a3f3ce1a9a9cb43a494e8c5be34" [label=""];
  "sha256:ecc851641ae756df7081899acfb0c698f2e19a3f3ce1a9a9cb43a494e8c5be34" -> "sha256:20f1824e44c6ec6546c48ea5ad0e4e7ab58c5e4f6f38a7757ef741d09ad715ca" [label=""];
}

