[app/sources/198667169.Dockerfile]
digraph {
  "sha256:923b4764695114b42a992ba2d6c0fa7c72bd80d90d7d8a370c2668d6bc22274e" [label="docker-image://docker.io/appropriate/curl:latest" shape="ellipse"];
  "sha256:396c29857249bffabca97f81fa97d91cb0b1d528789be8e5af3c45dee64c5ef0" [label="local://context" shape="ellipse"];
  "sha256:5b77fa9886114f308ed04226c21e5bb964e5e653b30ac3efea1d69d6dd41d8c3" [label="copy{src=/jq, dest=/bin/jq}" shape="note"];
  "sha256:290a5ff713395bf10a4d17ccb8ee5ae8137339caf3d652aebc321e6d8ccfbb9f" [label="copy{src=/cjq, dest=/bin/cjq}" shape="note"];
  "sha256:0a3972cd0243a2cade6021d7f4d26a0ec1df12af2aab1376c4f8aa1eca6c40bd" [label="sha256:0a3972cd0243a2cade6021d7f4d26a0ec1df12af2aab1376c4f8aa1eca6c40bd" shape="plaintext"];
  "sha256:923b4764695114b42a992ba2d6c0fa7c72bd80d90d7d8a370c2668d6bc22274e" -> "sha256:5b77fa9886114f308ed04226c21e5bb964e5e653b30ac3efea1d69d6dd41d8c3" [label=""];
  "sha256:396c29857249bffabca97f81fa97d91cb0b1d528789be8e5af3c45dee64c5ef0" -> "sha256:5b77fa9886114f308ed04226c21e5bb964e5e653b30ac3efea1d69d6dd41d8c3" [label=""];
  "sha256:5b77fa9886114f308ed04226c21e5bb964e5e653b30ac3efea1d69d6dd41d8c3" -> "sha256:290a5ff713395bf10a4d17ccb8ee5ae8137339caf3d652aebc321e6d8ccfbb9f" [label=""];
  "sha256:396c29857249bffabca97f81fa97d91cb0b1d528789be8e5af3c45dee64c5ef0" -> "sha256:290a5ff713395bf10a4d17ccb8ee5ae8137339caf3d652aebc321e6d8ccfbb9f" [label=""];
  "sha256:290a5ff713395bf10a4d17ccb8ee5ae8137339caf3d652aebc321e6d8ccfbb9f" -> "sha256:0a3972cd0243a2cade6021d7f4d26a0ec1df12af2aab1376c4f8aa1eca6c40bd" [label=""];
}

