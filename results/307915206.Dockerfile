[app/sources/307915206.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:19a80eb308f8802609ab358bfc4728f1c7d487242d4e22ca60fd8b9eff4a50f3" [label="/bin/sh -c echo \"#!/usr/bin/env true\" > /mnt/test" shape="box"];
  "sha256:5ef7ab7389a1698524c973ce39fcc18fbec62a6fa509f5a8c5a7215f957d78c3" [label="/bin/sh -c chmod +x /mnt/test" shape="box"];
  "sha256:1a89ca4c2fc490ad2fa4900af51cdff50be08a1320f993eda492b8a685b31f0d" [label="sha256:1a89ca4c2fc490ad2fa4900af51cdff50be08a1320f993eda492b8a685b31f0d" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:19a80eb308f8802609ab358bfc4728f1c7d487242d4e22ca60fd8b9eff4a50f3" [label=""];
  "sha256:19a80eb308f8802609ab358bfc4728f1c7d487242d4e22ca60fd8b9eff4a50f3" -> "sha256:5ef7ab7389a1698524c973ce39fcc18fbec62a6fa509f5a8c5a7215f957d78c3" [label=""];
  "sha256:5ef7ab7389a1698524c973ce39fcc18fbec62a6fa509f5a8c5a7215f957d78c3" -> "sha256:1a89ca4c2fc490ad2fa4900af51cdff50be08a1320f993eda492b8a685b31f0d" [label=""];
}

