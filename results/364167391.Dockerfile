[app/sources/364167391.Dockerfile]
digraph {
  "sha256:82f50028f168313cdc54c5f7bda6a092187f30e9f4cb5cdef51a2bab31433e21" [label="docker-image://docker.io/library/node:7-slim" shape="ellipse"];
  "sha256:47d9cc571e61c896bb1432c9fcc11b51285b621efc94f4cba7dcd7f9907b8652" [label="local://context" shape="ellipse"];
  "sha256:547cd979cc4858c0e956ec0ec8fd1b254ff1f896f7b4e2dc3b2c7ede7a2507cf" [label="copy{src=/package.json, dest=/opt/}" shape="note"];
  "sha256:b03e0fdeecf60379b2d01129b5698fa20b8828d1749a6eac737218f580a376f2" [label="mkdir{path=/opt}" shape="note"];
  "sha256:1e05d02ea02af082dc034498e9ed5eb7e5f626ca812060d4084f659d37579d57" [label="/bin/sh -c npm install" shape="box"];
  "sha256:b760f6d4abb95671f33ea1c1e630fa0703f03a5db623db391e133057f711f906" [label="copy{src=/app.js, dest=/opt/}" shape="note"];
  "sha256:2c41ba9c3e2d40cda6ef042d38cf18b786d6b3172b8509685d75f6bce782c0d9" [label="sha256:2c41ba9c3e2d40cda6ef042d38cf18b786d6b3172b8509685d75f6bce782c0d9" shape="plaintext"];
  "sha256:82f50028f168313cdc54c5f7bda6a092187f30e9f4cb5cdef51a2bab31433e21" -> "sha256:547cd979cc4858c0e956ec0ec8fd1b254ff1f896f7b4e2dc3b2c7ede7a2507cf" [label=""];
  "sha256:47d9cc571e61c896bb1432c9fcc11b51285b621efc94f4cba7dcd7f9907b8652" -> "sha256:547cd979cc4858c0e956ec0ec8fd1b254ff1f896f7b4e2dc3b2c7ede7a2507cf" [label=""];
  "sha256:547cd979cc4858c0e956ec0ec8fd1b254ff1f896f7b4e2dc3b2c7ede7a2507cf" -> "sha256:b03e0fdeecf60379b2d01129b5698fa20b8828d1749a6eac737218f580a376f2" [label=""];
  "sha256:b03e0fdeecf60379b2d01129b5698fa20b8828d1749a6eac737218f580a376f2" -> "sha256:1e05d02ea02af082dc034498e9ed5eb7e5f626ca812060d4084f659d37579d57" [label=""];
  "sha256:1e05d02ea02af082dc034498e9ed5eb7e5f626ca812060d4084f659d37579d57" -> "sha256:b760f6d4abb95671f33ea1c1e630fa0703f03a5db623db391e133057f711f906" [label=""];
  "sha256:47d9cc571e61c896bb1432c9fcc11b51285b621efc94f4cba7dcd7f9907b8652" -> "sha256:b760f6d4abb95671f33ea1c1e630fa0703f03a5db623db391e133057f711f906" [label=""];
  "sha256:b760f6d4abb95671f33ea1c1e630fa0703f03a5db623db391e133057f711f906" -> "sha256:2c41ba9c3e2d40cda6ef042d38cf18b786d6b3172b8509685d75f6bce782c0d9" [label=""];
}

