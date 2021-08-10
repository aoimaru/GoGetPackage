[app/sources/209805971.Dockerfile]
digraph {
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" [label="docker-image://docker.io/library/golang:latest" shape="ellipse"];
  "sha256:ad43eaa98091665cd28cfd65a0fbfa83c60737a729ecd5c12d86b9e0d48d1a34" [label="/bin/sh -c go get github.com/goji/httpauth && go get github.com/gorilla/mux" shape="box"];
  "sha256:1dc8a9d4ee9f37bd52c1b3d9331576346ddc44414dbb2fb8fbafe693f144b1cf" [label="local://context" shape="ellipse"];
  "sha256:23680ed36be1d84affcd7f704727c3d3146e395963c47d40af72aa97fba09e18" [label="copy{src=/src, dest=/go/src/github.com/awslabs/ecs-bootcamp/portal}" shape="note"];
  "sha256:3c63c2ea0c2e5a6e474448e3282c0c77b42c80a3becdfe4fb16fb67017dd6605" [label="copy{src=/public, dest=/var/www/html/}" shape="note"];
  "sha256:2567653b814d51a1471339589f75f32f23569deb2e71f25e0c79a62e6da8970b" [label="/bin/sh -c go install github.com/awslabs/ecs-bootcamp/portal" shape="box"];
  "sha256:cae35ea5455e6e862a6cba491d8c8bf38d3b3bb3ff9ce582cde3da77550ce4c8" [label="sha256:cae35ea5455e6e862a6cba491d8c8bf38d3b3bb3ff9ce582cde3da77550ce4c8" shape="plaintext"];
  "sha256:407f5d379a92852f20e056009913fcf2a955d195bc8504850031c23329884955" -> "sha256:ad43eaa98091665cd28cfd65a0fbfa83c60737a729ecd5c12d86b9e0d48d1a34" [label=""];
  "sha256:ad43eaa98091665cd28cfd65a0fbfa83c60737a729ecd5c12d86b9e0d48d1a34" -> "sha256:23680ed36be1d84affcd7f704727c3d3146e395963c47d40af72aa97fba09e18" [label=""];
  "sha256:1dc8a9d4ee9f37bd52c1b3d9331576346ddc44414dbb2fb8fbafe693f144b1cf" -> "sha256:23680ed36be1d84affcd7f704727c3d3146e395963c47d40af72aa97fba09e18" [label=""];
  "sha256:23680ed36be1d84affcd7f704727c3d3146e395963c47d40af72aa97fba09e18" -> "sha256:3c63c2ea0c2e5a6e474448e3282c0c77b42c80a3becdfe4fb16fb67017dd6605" [label=""];
  "sha256:1dc8a9d4ee9f37bd52c1b3d9331576346ddc44414dbb2fb8fbafe693f144b1cf" -> "sha256:3c63c2ea0c2e5a6e474448e3282c0c77b42c80a3becdfe4fb16fb67017dd6605" [label=""];
  "sha256:3c63c2ea0c2e5a6e474448e3282c0c77b42c80a3becdfe4fb16fb67017dd6605" -> "sha256:2567653b814d51a1471339589f75f32f23569deb2e71f25e0c79a62e6da8970b" [label=""];
  "sha256:2567653b814d51a1471339589f75f32f23569deb2e71f25e0c79a62e6da8970b" -> "sha256:cae35ea5455e6e862a6cba491d8c8bf38d3b3bb3ff9ce582cde3da77550ce4c8" [label=""];
}

