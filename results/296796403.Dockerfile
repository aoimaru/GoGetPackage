[app/sources/296796403.Dockerfile]
digraph {
  "sha256:6dbd5673a18a4543fe226ba004320b04c1a3fe06550b5e99ad5d07b03040aeec" [label="docker-image://docker.io/library/node:7.9.0" shape="ellipse"];
  "sha256:9afb5a7c539d4adec337a2923d9b8dc1fb44dee9cd8e429289e3ec67b7c97454" [label="local://context" shape="ellipse"];
  "sha256:aacad097169071e414e5d458fa3922816d664b92ff7b41f2c64b491395fdcf7b" [label="copy{src=/hello.js, dest=/}" shape="note"];
  "sha256:220db2d82f1152644a5e312bc567fc088a2b741e0be01bfaf0b65fa6e41dc6d1" [label="sha256:220db2d82f1152644a5e312bc567fc088a2b741e0be01bfaf0b65fa6e41dc6d1" shape="plaintext"];
  "sha256:6dbd5673a18a4543fe226ba004320b04c1a3fe06550b5e99ad5d07b03040aeec" -> "sha256:aacad097169071e414e5d458fa3922816d664b92ff7b41f2c64b491395fdcf7b" [label=""];
  "sha256:9afb5a7c539d4adec337a2923d9b8dc1fb44dee9cd8e429289e3ec67b7c97454" -> "sha256:aacad097169071e414e5d458fa3922816d664b92ff7b41f2c64b491395fdcf7b" [label=""];
  "sha256:aacad097169071e414e5d458fa3922816d664b92ff7b41f2c64b491395fdcf7b" -> "sha256:220db2d82f1152644a5e312bc567fc088a2b741e0be01bfaf0b65fa6e41dc6d1" [label=""];
}

