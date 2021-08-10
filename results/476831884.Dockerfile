[app/sources/476831884.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:ff867276cb76afd74bbf627dd8baa880a9500f0dc4c91c48a74119bbf14d164b" [label="local://context" shape="ellipse"];
  "sha256:13d64abeec9d51230d1ec25882fc686839d971799096a8f85793e305567a7371" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:a02e882aaef9029fbe7119ef2de904127bfbd2723638bb01d7fefa4a66003862" [label="sha256:a02e882aaef9029fbe7119ef2de904127bfbd2723638bb01d7fefa4a66003862" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:13d64abeec9d51230d1ec25882fc686839d971799096a8f85793e305567a7371" [label=""];
  "sha256:ff867276cb76afd74bbf627dd8baa880a9500f0dc4c91c48a74119bbf14d164b" -> "sha256:13d64abeec9d51230d1ec25882fc686839d971799096a8f85793e305567a7371" [label=""];
  "sha256:13d64abeec9d51230d1ec25882fc686839d971799096a8f85793e305567a7371" -> "sha256:a02e882aaef9029fbe7119ef2de904127bfbd2723638bb01d7fefa4a66003862" [label=""];
}

