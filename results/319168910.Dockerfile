[app/sources/319168910.Dockerfile]
digraph {
  "sha256:c6fefc003c502951a923e3bcdad82dd90397c4b0c95adbf9f8ee0ac6c81392a9" [label="local://context" shape="ellipse"];
  "sha256:a9803c19ae97ef05dcea2c1e6a88281f0d9a543df4993c416bd251e4e69daf3d" [label="docker-image://docker.io/library/node:11-alpine" shape="ellipse"];
  "sha256:cbcee9036e1d30811f725ffdaa741e96c32974efa306219a6fb1359dc685b26b" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:e4c02fdafb8f6c7799683f743788127f51a3482467d6f25d3fc53bd44815c3fd" [label="copy{src=/package*.json, dest=/usr/src/app/},copy{src=/yarn.lock, dest=/usr/src/app/}" shape="note"];
  "sha256:73862c6547f75d29b35738873991c7843b1a93fd8bfeae8ece66bdfeb6e6ee34" [label="/bin/sh -c apk add --no-cache $PACKAGES &&     yarn --prod" shape="box"];
  "sha256:8558ea55a5809dc8bf7c7ca722c20bbf2d993d690decaa1c2640b8a1f5257a1e" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:429304d17d353ce8bcf611dcc7ff7779270827930536bcead0cbdd643e00795f" [label="sha256:429304d17d353ce8bcf611dcc7ff7779270827930536bcead0cbdd643e00795f" shape="plaintext"];
  "sha256:a9803c19ae97ef05dcea2c1e6a88281f0d9a543df4993c416bd251e4e69daf3d" -> "sha256:cbcee9036e1d30811f725ffdaa741e96c32974efa306219a6fb1359dc685b26b" [label=""];
  "sha256:cbcee9036e1d30811f725ffdaa741e96c32974efa306219a6fb1359dc685b26b" -> "sha256:e4c02fdafb8f6c7799683f743788127f51a3482467d6f25d3fc53bd44815c3fd" [label=""];
  "sha256:c6fefc003c502951a923e3bcdad82dd90397c4b0c95adbf9f8ee0ac6c81392a9" -> "sha256:e4c02fdafb8f6c7799683f743788127f51a3482467d6f25d3fc53bd44815c3fd" [label=""];
  "sha256:e4c02fdafb8f6c7799683f743788127f51a3482467d6f25d3fc53bd44815c3fd" -> "sha256:73862c6547f75d29b35738873991c7843b1a93fd8bfeae8ece66bdfeb6e6ee34" [label=""];
  "sha256:73862c6547f75d29b35738873991c7843b1a93fd8bfeae8ece66bdfeb6e6ee34" -> "sha256:8558ea55a5809dc8bf7c7ca722c20bbf2d993d690decaa1c2640b8a1f5257a1e" [label=""];
  "sha256:c6fefc003c502951a923e3bcdad82dd90397c4b0c95adbf9f8ee0ac6c81392a9" -> "sha256:8558ea55a5809dc8bf7c7ca722c20bbf2d993d690decaa1c2640b8a1f5257a1e" [label=""];
  "sha256:8558ea55a5809dc8bf7c7ca722c20bbf2d993d690decaa1c2640b8a1f5257a1e" -> "sha256:429304d17d353ce8bcf611dcc7ff7779270827930536bcead0cbdd643e00795f" [label=""];
}

