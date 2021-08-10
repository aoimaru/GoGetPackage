[app/sources/250377050.Dockerfile]
digraph {
  "sha256:4374a8cbd28e6303c865a60916afc116957258e849df116e33da579ad17214ae" [label="docker-image://docker.io/library/node:8.12.0-alpine" shape="ellipse"];
  "sha256:acfc11146a730fed3f316cb467b86ca7e0ce3a8fab0b5cc60dd9b88ff5d3d483" [label="mkdir{path=/app}" shape="note"];
  "sha256:a317e95986c1cd0dc81ea10f8ac8e9b5288083dfcd5ea5a1678d2cebf1689699" [label="local://context" shape="ellipse"];
  "sha256:2e699249b46a4bb573b5c6eedd3e06eada5829c83ede5cbf0de8badc0a543978" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:01cd8308bd8ba4139f60bc192203b63dabc1ffd876c925d69dfbb0c0312aba71" [label="/bin/sh -c npm install" shape="box"];
  "sha256:c3dbd34c1ad249254370c482489413007d8bb1e6b61454de3fc88331e847d2c3" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:1432499becbbaeb53e8c62962d75ade99df286355d9b07eee457e46267f07cc4" [label="sha256:1432499becbbaeb53e8c62962d75ade99df286355d9b07eee457e46267f07cc4" shape="plaintext"];
  "sha256:4374a8cbd28e6303c865a60916afc116957258e849df116e33da579ad17214ae" -> "sha256:acfc11146a730fed3f316cb467b86ca7e0ce3a8fab0b5cc60dd9b88ff5d3d483" [label=""];
  "sha256:acfc11146a730fed3f316cb467b86ca7e0ce3a8fab0b5cc60dd9b88ff5d3d483" -> "sha256:2e699249b46a4bb573b5c6eedd3e06eada5829c83ede5cbf0de8badc0a543978" [label=""];
  "sha256:a317e95986c1cd0dc81ea10f8ac8e9b5288083dfcd5ea5a1678d2cebf1689699" -> "sha256:2e699249b46a4bb573b5c6eedd3e06eada5829c83ede5cbf0de8badc0a543978" [label=""];
  "sha256:2e699249b46a4bb573b5c6eedd3e06eada5829c83ede5cbf0de8badc0a543978" -> "sha256:01cd8308bd8ba4139f60bc192203b63dabc1ffd876c925d69dfbb0c0312aba71" [label=""];
  "sha256:01cd8308bd8ba4139f60bc192203b63dabc1ffd876c925d69dfbb0c0312aba71" -> "sha256:c3dbd34c1ad249254370c482489413007d8bb1e6b61454de3fc88331e847d2c3" [label=""];
  "sha256:a317e95986c1cd0dc81ea10f8ac8e9b5288083dfcd5ea5a1678d2cebf1689699" -> "sha256:c3dbd34c1ad249254370c482489413007d8bb1e6b61454de3fc88331e847d2c3" [label=""];
  "sha256:c3dbd34c1ad249254370c482489413007d8bb1e6b61454de3fc88331e847d2c3" -> "sha256:1432499becbbaeb53e8c62962d75ade99df286355d9b07eee457e46267f07cc4" [label=""];
}

