[app/sources/252778054.Dockerfile]
digraph {
  "sha256:04bc1c7c868bdead9a72e07f1319bff4e90136ab14f16375c8b7c6ac15466f56" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:604d939a82f370e5ae72cbac2eacb2b715937eb9e803ed4621536254d7c6e2fa" [label="copy{src=/pinger, dest=/usr/local/bin}" shape="note"];
  "sha256:2bc21a526476255524f8d2ddbd78569c14bbea6d28a5756948a568838c9bb182" [label="sha256:2bc21a526476255524f8d2ddbd78569c14bbea6d28a5756948a568838c9bb182" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:604d939a82f370e5ae72cbac2eacb2b715937eb9e803ed4621536254d7c6e2fa" [label=""];
  "sha256:04bc1c7c868bdead9a72e07f1319bff4e90136ab14f16375c8b7c6ac15466f56" -> "sha256:604d939a82f370e5ae72cbac2eacb2b715937eb9e803ed4621536254d7c6e2fa" [label=""];
  "sha256:604d939a82f370e5ae72cbac2eacb2b715937eb9e803ed4621536254d7c6e2fa" -> "sha256:2bc21a526476255524f8d2ddbd78569c14bbea6d28a5756948a568838c9bb182" [label=""];
}

