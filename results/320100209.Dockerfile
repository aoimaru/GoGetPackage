[app/sources/320100209.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:04591b9547e0cda64866b35bba1010c09bb7725861305dd3a0fd85949bdbad49" [label="/bin/sh -c apk add --no-cache \tapache2-utils" shape="box"];
  "sha256:e46df567c255603c10f75b80901d9e52e1ae3d45fed480d8f6ea43667a361e5a" [label="sha256:e46df567c255603c10f75b80901d9e52e1ae3d45fed480d8f6ea43667a361e5a" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:04591b9547e0cda64866b35bba1010c09bb7725861305dd3a0fd85949bdbad49" [label=""];
  "sha256:04591b9547e0cda64866b35bba1010c09bb7725861305dd3a0fd85949bdbad49" -> "sha256:e46df567c255603c10f75b80901d9e52e1ae3d45fed480d8f6ea43667a361e5a" [label=""];
}

