[app/sources/275116556.Dockerfile]
digraph {
  "sha256:be7f72d58225eb22e4de98811a40f2894475aa1a36444806f38addb93cf47938" [label="docker-image://docker.io/library/node:8-slim" shape="ellipse"];
  "sha256:c4021d03d1a4915adba4eefa7f198c3a1af18969cb4cb303fb7395e488ff6791" [label="/bin/sh -c mkdir -p /usr/src/" shape="box"];
  "sha256:22eaed78bb7e9b719d0df52376414fa400c52214f005889503efb1967c177b8f" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:2e06ad3ecbe9ef54c8527febb367c12095469087a72b2c278e93ec9ba455d2c2" [label="local://context" shape="ellipse"];
  "sha256:80da2b312250019f775fead7de3d3d06c9b7f09a69f20ddd9357fe26fbed975e" [label="copy{src=/, dest=/usr/src/}" shape="note"];
  "sha256:6ae2dadd8649b3cd870c717f3f94c674738d219f6c6d9dbcb0712faf57a73f81" [label="/bin/sh -c npm install ." shape="box"];
  "sha256:e619981b6e73288df9134fe76f50147e0a7aa334a7e5bc2ab3f9ae66605629f3" [label="sha256:e619981b6e73288df9134fe76f50147e0a7aa334a7e5bc2ab3f9ae66605629f3" shape="plaintext"];
  "sha256:be7f72d58225eb22e4de98811a40f2894475aa1a36444806f38addb93cf47938" -> "sha256:c4021d03d1a4915adba4eefa7f198c3a1af18969cb4cb303fb7395e488ff6791" [label=""];
  "sha256:c4021d03d1a4915adba4eefa7f198c3a1af18969cb4cb303fb7395e488ff6791" -> "sha256:22eaed78bb7e9b719d0df52376414fa400c52214f005889503efb1967c177b8f" [label=""];
  "sha256:22eaed78bb7e9b719d0df52376414fa400c52214f005889503efb1967c177b8f" -> "sha256:80da2b312250019f775fead7de3d3d06c9b7f09a69f20ddd9357fe26fbed975e" [label=""];
  "sha256:2e06ad3ecbe9ef54c8527febb367c12095469087a72b2c278e93ec9ba455d2c2" -> "sha256:80da2b312250019f775fead7de3d3d06c9b7f09a69f20ddd9357fe26fbed975e" [label=""];
  "sha256:80da2b312250019f775fead7de3d3d06c9b7f09a69f20ddd9357fe26fbed975e" -> "sha256:6ae2dadd8649b3cd870c717f3f94c674738d219f6c6d9dbcb0712faf57a73f81" [label=""];
  "sha256:6ae2dadd8649b3cd870c717f3f94c674738d219f6c6d9dbcb0712faf57a73f81" -> "sha256:e619981b6e73288df9134fe76f50147e0a7aa334a7e5bc2ab3f9ae66605629f3" [label=""];
}

