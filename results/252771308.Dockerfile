[app/sources/252771308.Dockerfile]
digraph {
  "sha256:9f95c2c37227401b1fc46119c39a45f93c0075f2e387818d47ed65ae3fdf076d" [label="docker-image://docker.io/mhart/alpine-node:6" shape="ellipse"];
  "sha256:059e2e3a93744e947bf48a22dfb2f73eef70063ab03d9029092a63d8519003cc" [label="mkdir{path=/unpm-www}" shape="note"];
  "sha256:4dcb8833e563fe43ec4b1bef214cbd058ec530c2a92edab514d83b11499e0509" [label="/bin/sh -c npm install -g unpm-www@1.8.0 --registry ${UNPM_FALLBACK}" shape="box"];
  "sha256:cb5b951b0015c8804bead1502630047bafd470ba5b11fd757d04c84c24bd6bb3" [label="sha256:cb5b951b0015c8804bead1502630047bafd470ba5b11fd757d04c84c24bd6bb3" shape="plaintext"];
  "sha256:9f95c2c37227401b1fc46119c39a45f93c0075f2e387818d47ed65ae3fdf076d" -> "sha256:059e2e3a93744e947bf48a22dfb2f73eef70063ab03d9029092a63d8519003cc" [label=""];
  "sha256:059e2e3a93744e947bf48a22dfb2f73eef70063ab03d9029092a63d8519003cc" -> "sha256:4dcb8833e563fe43ec4b1bef214cbd058ec530c2a92edab514d83b11499e0509" [label=""];
  "sha256:4dcb8833e563fe43ec4b1bef214cbd058ec530c2a92edab514d83b11499e0509" -> "sha256:cb5b951b0015c8804bead1502630047bafd470ba5b11fd757d04c84c24bd6bb3" [label=""];
}

