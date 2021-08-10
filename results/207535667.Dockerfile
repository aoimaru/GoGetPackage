[app/sources/207535667.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:be1c4412012f84d39f30c012e7acded44d14f783eb60e09d5dd1c8feb185c447" [label="/bin/sh -c apk update     && apk --no-cache --update add bash openssl-dev" shape="box"];
  "sha256:fdf1da9b7fae074a8d7c84746cffb6110ee7d8c6ea13937ba10973cd796b8d59" [label="sha256:fdf1da9b7fae074a8d7c84746cffb6110ee7d8c6ea13937ba10973cd796b8d59" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:be1c4412012f84d39f30c012e7acded44d14f783eb60e09d5dd1c8feb185c447" [label=""];
  "sha256:be1c4412012f84d39f30c012e7acded44d14f783eb60e09d5dd1c8feb185c447" -> "sha256:fdf1da9b7fae074a8d7c84746cffb6110ee7d8c6ea13937ba10973cd796b8d59" [label=""];
}

