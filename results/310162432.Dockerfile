[app/sources/310162432.Dockerfile]
digraph {
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" [label="docker-image://docker.io/library/node:boron" shape="ellipse"];
  "sha256:037e894a38ef5889d384f91c511ce6bb2f06b661b304b38902ff84cd88035ae6" [label="/bin/sh -c mkdir -p /backend-dir-inside-container" shape="box"];
  "sha256:a922a4f1993997a4be43a32c768564be7949c1b2b9fa331af24261f8878ebd6a" [label="mkdir{path=/backend-dir-inside-container}" shape="note"];
  "sha256:f423b51513e3eb3bb4a0a9d9df5b411ce26290d883de6d0fd89599a0c9bb1a9a" [label="sha256:f423b51513e3eb3bb4a0a9d9df5b411ce26290d883de6d0fd89599a0c9bb1a9a" shape="plaintext"];
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" -> "sha256:037e894a38ef5889d384f91c511ce6bb2f06b661b304b38902ff84cd88035ae6" [label=""];
  "sha256:037e894a38ef5889d384f91c511ce6bb2f06b661b304b38902ff84cd88035ae6" -> "sha256:a922a4f1993997a4be43a32c768564be7949c1b2b9fa331af24261f8878ebd6a" [label=""];
  "sha256:a922a4f1993997a4be43a32c768564be7949c1b2b9fa331af24261f8878ebd6a" -> "sha256:f423b51513e3eb3bb4a0a9d9df5b411ce26290d883de6d0fd89599a0c9bb1a9a" [label=""];
}

