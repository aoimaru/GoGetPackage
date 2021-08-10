[app/sources/252800927.Dockerfile]
digraph {
  "sha256:3cb9dfca7ad1b24c47f3f967548fc8b1e17476690e0f576dda52a217216115fa" [label="docker-image://docker.io/gliderlabs/alpine:3.3" shape="ellipse"];
  "sha256:01bfc320b06d55e323193c2647d8a9ac8883dfa3f19c313d04a6cdc72656f820" [label="/bin/sh -c apk-install ca-certificates && apk-install openssl" shape="box"];
  "sha256:3c54d4c27fd5d2f651e63307b2785762b254ecd07a235336a6c90e854a101b49" [label="sha256:3c54d4c27fd5d2f651e63307b2785762b254ecd07a235336a6c90e854a101b49" shape="plaintext"];
  "sha256:3cb9dfca7ad1b24c47f3f967548fc8b1e17476690e0f576dda52a217216115fa" -> "sha256:01bfc320b06d55e323193c2647d8a9ac8883dfa3f19c313d04a6cdc72656f820" [label=""];
  "sha256:01bfc320b06d55e323193c2647d8a9ac8883dfa3f19c313d04a6cdc72656f820" -> "sha256:3c54d4c27fd5d2f651e63307b2785762b254ecd07a235336a6c90e854a101b49" [label=""];
}

