[app/sources/252787328.Dockerfile]
digraph {
  "sha256:12f371d7338b0e1faf98f5c1290d2deead5043133d8dca525ed22586fea86da4" [label="docker-image://docker.io/library/node:7-alpine" shape="ellipse"];
  "sha256:048fdeb458bdc83cbe3a34109f5035701d2d19271b8859792fe0c8aba5f6a920" [label="/bin/sh -c apk add --no-cache ca-certificates git openssh && npm install -g yarn" shape="box"];
  "sha256:5d4e8098990a139fb5c386202df8625e95ea05d0fc6a352c94f08ec8b1f45a31" [label="sha256:5d4e8098990a139fb5c386202df8625e95ea05d0fc6a352c94f08ec8b1f45a31" shape="plaintext"];
  "sha256:12f371d7338b0e1faf98f5c1290d2deead5043133d8dca525ed22586fea86da4" -> "sha256:048fdeb458bdc83cbe3a34109f5035701d2d19271b8859792fe0c8aba5f6a920" [label=""];
  "sha256:048fdeb458bdc83cbe3a34109f5035701d2d19271b8859792fe0c8aba5f6a920" -> "sha256:5d4e8098990a139fb5c386202df8625e95ea05d0fc6a352c94f08ec8b1f45a31" [label=""];
}

