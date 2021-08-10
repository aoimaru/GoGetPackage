[app/sources/252767503.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:9ee2f80563ef7b3a37bfb056b0acfca8637dcd6e1f4ba969ae2075a9a2fd2222" [label="/bin/sh -c apk add --no-cache --update coreutils" shape="box"];
  "sha256:dd71d51e0d61492c9049429f9080877abf7e381bb23841ad2764699c50893e0a" [label="sha256:dd71d51e0d61492c9049429f9080877abf7e381bb23841ad2764699c50893e0a" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:9ee2f80563ef7b3a37bfb056b0acfca8637dcd6e1f4ba969ae2075a9a2fd2222" [label=""];
  "sha256:9ee2f80563ef7b3a37bfb056b0acfca8637dcd6e1f4ba969ae2075a9a2fd2222" -> "sha256:dd71d51e0d61492c9049429f9080877abf7e381bb23841ad2764699c50893e0a" [label=""];
}

