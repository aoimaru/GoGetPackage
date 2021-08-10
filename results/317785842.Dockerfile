[app/sources/317785842.Dockerfile]
digraph {
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:a1fb8b8c346fd538311896b46cd74272d408b82b4a4c810a9a0fb9bcca996f8a" [label="/bin/sh -c mkdir ${APP_DIR}" shape="box"];
  "sha256:e16665dbe7a5b8bee78a4de1f3fc6e732602291263e86e9be31f4a1f90ad2f8e" [label="mkdir{path=/app}" shape="note"];
  "sha256:cc613103606c256f7a20b1482b0412ad2c3f19bd31e01e26280cdae89bf1e5e6" [label="local://context" shape="ellipse"];
  "sha256:e21e4be6acb366db70f62eb954f4a1d372d2c13481a47526b5426d328b0422b8" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:001d2d8e9da7e3918a38572e3a16ad5b2e662c8e4f02bdca1258ee7a3714939d" [label="sha256:001d2d8e9da7e3918a38572e3a16ad5b2e662c8e4f02bdca1258ee7a3714939d" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:a1fb8b8c346fd538311896b46cd74272d408b82b4a4c810a9a0fb9bcca996f8a" [label=""];
  "sha256:a1fb8b8c346fd538311896b46cd74272d408b82b4a4c810a9a0fb9bcca996f8a" -> "sha256:e16665dbe7a5b8bee78a4de1f3fc6e732602291263e86e9be31f4a1f90ad2f8e" [label=""];
  "sha256:e16665dbe7a5b8bee78a4de1f3fc6e732602291263e86e9be31f4a1f90ad2f8e" -> "sha256:e21e4be6acb366db70f62eb954f4a1d372d2c13481a47526b5426d328b0422b8" [label=""];
  "sha256:cc613103606c256f7a20b1482b0412ad2c3f19bd31e01e26280cdae89bf1e5e6" -> "sha256:e21e4be6acb366db70f62eb954f4a1d372d2c13481a47526b5426d328b0422b8" [label=""];
  "sha256:e21e4be6acb366db70f62eb954f4a1d372d2c13481a47526b5426d328b0422b8" -> "sha256:001d2d8e9da7e3918a38572e3a16ad5b2e662c8e4f02bdca1258ee7a3714939d" [label=""];
}

