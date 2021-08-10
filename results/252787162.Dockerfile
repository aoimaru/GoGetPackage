[app/sources/252787162.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:cf00211ecdffa0779bf8a4e09d2d9da79b368e4de11912e440eb9087b5b12fdd" [label="/bin/sh -c apk --no-cache add libuv-dev" shape="box"];
  "sha256:74164fe57e6b1c3f2b61ec824b25c0718fc31ba0d9b3125047fcda7dbd5fab4b" [label="local://context" shape="ellipse"];
  "sha256:6027fe86504d9cacd75f89c18e6b8e449db48a722844d4c44e4d81d1e7929c40" [label="copy{src=/LEAF, dest=/usr/bin/}" shape="note"];
  "sha256:6fa8e90abefb061f618fe2a8b4aaae7d05250306efef7018221d7cd125186ebb" [label="sha256:6fa8e90abefb061f618fe2a8b4aaae7d05250306efef7018221d7cd125186ebb" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:cf00211ecdffa0779bf8a4e09d2d9da79b368e4de11912e440eb9087b5b12fdd" [label=""];
  "sha256:cf00211ecdffa0779bf8a4e09d2d9da79b368e4de11912e440eb9087b5b12fdd" -> "sha256:6027fe86504d9cacd75f89c18e6b8e449db48a722844d4c44e4d81d1e7929c40" [label=""];
  "sha256:74164fe57e6b1c3f2b61ec824b25c0718fc31ba0d9b3125047fcda7dbd5fab4b" -> "sha256:6027fe86504d9cacd75f89c18e6b8e449db48a722844d4c44e4d81d1e7929c40" [label=""];
  "sha256:6027fe86504d9cacd75f89c18e6b8e449db48a722844d4c44e4d81d1e7929c40" -> "sha256:6fa8e90abefb061f618fe2a8b4aaae7d05250306efef7018221d7cd125186ebb" [label=""];
}

