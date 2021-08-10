[app/sources/263020052.Dockerfile]
digraph {
  "sha256:0c27e0e076ebf88652b016bad0db1f296e29a085a749dbdf9aaaa83d670467ce" [label="docker-image://docker.io/library/debian:8" shape="ellipse"];
  "sha256:3d1321750a05edb627254eb8135e6b6ae86fa8addb8c38f55577c85b554944dc" [label="/bin/sh -c apt-get update && apt-get install -y qemu-user-static" shape="box"];
  "sha256:2ef990f039e9707f9d9b97d865703bfff04f9172fd28c0fe4116ce44913c2929" [label="sha256:2ef990f039e9707f9d9b97d865703bfff04f9172fd28c0fe4116ce44913c2929" shape="plaintext"];
  "sha256:0c27e0e076ebf88652b016bad0db1f296e29a085a749dbdf9aaaa83d670467ce" -> "sha256:3d1321750a05edb627254eb8135e6b6ae86fa8addb8c38f55577c85b554944dc" [label=""];
  "sha256:3d1321750a05edb627254eb8135e6b6ae86fa8addb8c38f55577c85b554944dc" -> "sha256:2ef990f039e9707f9d9b97d865703bfff04f9172fd28c0fe4116ce44913c2929" [label=""];
}

