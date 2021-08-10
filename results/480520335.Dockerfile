[app/sources/480520335.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:1a57a6034df43a13af29999f1acb90ad7b813d2ef6d61b8942505331a847cbae" [label="/bin/sh -c /bin/echo 'hello from docker_image_build_1'" shape="box"];
  "sha256:65bb7467eed86729c59c88f1a1d188c1b612bf8af50d044c39c8ba6b3754621a" [label="sha256:65bb7467eed86729c59c88f1a1d188c1b612bf8af50d044c39c8ba6b3754621a" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:1a57a6034df43a13af29999f1acb90ad7b813d2ef6d61b8942505331a847cbae" [label=""];
  "sha256:1a57a6034df43a13af29999f1acb90ad7b813d2ef6d61b8942505331a847cbae" -> "sha256:65bb7467eed86729c59c88f1a1d188c1b612bf8af50d044c39c8ba6b3754621a" [label=""];
}

