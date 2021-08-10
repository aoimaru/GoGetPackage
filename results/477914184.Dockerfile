[app/sources/477914184.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:7c65fce4add2f12c1aa403402d4c5621e3a8d764afe6430431e465549f3845c7" [label="/bin/sh -c exit 1" shape="box"];
  "sha256:b16d51953c17ff8f98cf92a13ddda464d2665c7e249291e322942a6c81eab0a6" [label="sha256:b16d51953c17ff8f98cf92a13ddda464d2665c7e249291e322942a6c81eab0a6" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:7c65fce4add2f12c1aa403402d4c5621e3a8d764afe6430431e465549f3845c7" [label=""];
  "sha256:7c65fce4add2f12c1aa403402d4c5621e3a8d764afe6430431e465549f3845c7" -> "sha256:b16d51953c17ff8f98cf92a13ddda464d2665c7e249291e322942a6c81eab0a6" [label=""];
}

