[app/sources/313443616.Dockerfile]
digraph {
  "sha256:d712fad79caf60e0db2662a586e23eb3a32de2f5f084b6d663669b20311f3e9d" [label="docker-image://docker.io/anapsix/alpine-java:latest" shape="ellipse"];
  "sha256:a077d1b89fc77cfa5c53c3731c05897a38d9f4a3d577e195bf99e3b53543f800" [label="/bin/sh -c apk -U upgrade     && apk add curl     && apk add unzip" shape="box"];
  "sha256:2deb3f00e32834d258f63f76e732ff6e33e8c6a53e25ba83dace5ba0d0e268f9" [label="sha256:2deb3f00e32834d258f63f76e732ff6e33e8c6a53e25ba83dace5ba0d0e268f9" shape="plaintext"];
  "sha256:d712fad79caf60e0db2662a586e23eb3a32de2f5f084b6d663669b20311f3e9d" -> "sha256:a077d1b89fc77cfa5c53c3731c05897a38d9f4a3d577e195bf99e3b53543f800" [label=""];
  "sha256:a077d1b89fc77cfa5c53c3731c05897a38d9f4a3d577e195bf99e3b53543f800" -> "sha256:2deb3f00e32834d258f63f76e732ff6e33e8c6a53e25ba83dace5ba0d0e268f9" [label=""];
}

