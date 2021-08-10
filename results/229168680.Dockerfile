[app/sources/229168680.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:f2d809c89f0dc7b3eede8912e3edf965b55dc478a90e939d756d527af6ce8e48" [label="/bin/sh -c echo \"http://dl-4.alpinelinux.org/alpine/edge/testing\" >> /etc/apk/repositories  && apk --no-cache --no-progress add tinyssh shadow  &&  useradd --shell /bin/false --create-home --user-group tunnel  && /usr/sbin/tinysshd-makekey /etc/tinysshd" shape="box"];
  "sha256:c97c51e56feac68673ee79056b131c24d8f73dca14c4158d6b573c9d4090055a" [label="sha256:c97c51e56feac68673ee79056b131c24d8f73dca14c4158d6b573c9d4090055a" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:f2d809c89f0dc7b3eede8912e3edf965b55dc478a90e939d756d527af6ce8e48" [label=""];
  "sha256:f2d809c89f0dc7b3eede8912e3edf965b55dc478a90e939d756d527af6ce8e48" -> "sha256:c97c51e56feac68673ee79056b131c24d8f73dca14c4158d6b573c9d4090055a" [label=""];
}

