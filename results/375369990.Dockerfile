[app/sources/375369990.Dockerfile]
digraph {
  "sha256:f89006e1d2a9eb8eebfc189976cdcb8ea7ed51f6000d519d4828a2a828df27df" [label="docker-image://docker.io/library/node:11.13.0-alpine" shape="ellipse"];
  "sha256:b0b0ab20353f306a4be760a1bcb08ce31f24c6cf3d6021432343687ac6c40fe0" [label="mkdir{path=/app}" shape="note"];
  "sha256:1af2e779701ca96cc14dc87b97f0498697cf522831400e90e8cdae0db5fb5422" [label="local://context" shape="ellipse"];
  "sha256:443e2ee628abe9cff52621b7346a512bd448e5adeb91c43780a0df4f597d7b57" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:ae65265b8ed06e7a3c3e7305db684200915aa201a70a25e78a772e3d80b60e49" [label="/bin/sh -c npm install --no-bin-links" shape="box"];
  "sha256:762cdc2d44c1839629b941493aaa3d6a0a578b0f3c0896eeca581b2aa8792e01" [label="sha256:762cdc2d44c1839629b941493aaa3d6a0a578b0f3c0896eeca581b2aa8792e01" shape="plaintext"];
  "sha256:f89006e1d2a9eb8eebfc189976cdcb8ea7ed51f6000d519d4828a2a828df27df" -> "sha256:b0b0ab20353f306a4be760a1bcb08ce31f24c6cf3d6021432343687ac6c40fe0" [label=""];
  "sha256:b0b0ab20353f306a4be760a1bcb08ce31f24c6cf3d6021432343687ac6c40fe0" -> "sha256:443e2ee628abe9cff52621b7346a512bd448e5adeb91c43780a0df4f597d7b57" [label=""];
  "sha256:1af2e779701ca96cc14dc87b97f0498697cf522831400e90e8cdae0db5fb5422" -> "sha256:443e2ee628abe9cff52621b7346a512bd448e5adeb91c43780a0df4f597d7b57" [label=""];
  "sha256:443e2ee628abe9cff52621b7346a512bd448e5adeb91c43780a0df4f597d7b57" -> "sha256:ae65265b8ed06e7a3c3e7305db684200915aa201a70a25e78a772e3d80b60e49" [label=""];
  "sha256:ae65265b8ed06e7a3c3e7305db684200915aa201a70a25e78a772e3d80b60e49" -> "sha256:762cdc2d44c1839629b941493aaa3d6a0a578b0f3c0896eeca581b2aa8792e01" [label=""];
}

