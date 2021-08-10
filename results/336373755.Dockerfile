[app/sources/336373755.Dockerfile]
digraph {
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:2f01aa0038a5ef2f4e895d97f5188b0535f37d5fb365bc6c2daecf20cb14dc1c" [label="/bin/sh -c mkdir /mariner" shape="box"];
  "sha256:daef1e46461e7db2227c1458c27963ea56a820686ff66bca86abf709fda83d8c" [label="mkdir{path=/mariner}" shape="note"];
  "sha256:057b1df8bf6e3fdb9e73bf34b3d7d28e9eb501697577e7df72074d72674f8114" [label="local://context" shape="ellipse"];
  "sha256:32e5802ba5ee0108ccdc5a770afa426f4f6e44691c4342d04f2ff1a401b8b369" [label="copy{src=/app.js, dest=/mariner/app.js}" shape="note"];
  "sha256:a07b3ae46965732ea27f4f3f13efc9a345c6d8dc94f66d09f21ab2825fff5e35" [label="sha256:a07b3ae46965732ea27f4f3f13efc9a345c6d8dc94f66d09f21ab2825fff5e35" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:2f01aa0038a5ef2f4e895d97f5188b0535f37d5fb365bc6c2daecf20cb14dc1c" [label=""];
  "sha256:2f01aa0038a5ef2f4e895d97f5188b0535f37d5fb365bc6c2daecf20cb14dc1c" -> "sha256:daef1e46461e7db2227c1458c27963ea56a820686ff66bca86abf709fda83d8c" [label=""];
  "sha256:daef1e46461e7db2227c1458c27963ea56a820686ff66bca86abf709fda83d8c" -> "sha256:32e5802ba5ee0108ccdc5a770afa426f4f6e44691c4342d04f2ff1a401b8b369" [label=""];
  "sha256:057b1df8bf6e3fdb9e73bf34b3d7d28e9eb501697577e7df72074d72674f8114" -> "sha256:32e5802ba5ee0108ccdc5a770afa426f4f6e44691c4342d04f2ff1a401b8b369" [label=""];
  "sha256:32e5802ba5ee0108ccdc5a770afa426f4f6e44691c4342d04f2ff1a401b8b369" -> "sha256:a07b3ae46965732ea27f4f3f13efc9a345c6d8dc94f66d09f21ab2825fff5e35" [label=""];
}

