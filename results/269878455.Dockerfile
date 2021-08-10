[app/sources/269878455.Dockerfile]
digraph {
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" [label="docker-image://docker.io/library/python:3.6-alpine" shape="ellipse"];
  "sha256:b6bd3286a7a35ebcc45562ca30e4077ac92fe29c7b2a31fed2c7c01b88ddd175" [label="/bin/sh -c apk add --no-cache -u gcc make musl-dev" shape="box"];
  "sha256:0014196818689570d8a5f1fedf014053f0a37291d9f136426e8b88a6c9d928fa" [label="/bin/sh -c pip install dumb-init" shape="box"];
  "sha256:5c99a80e3fb66806f0c837313cae75e288af634c7e46ec6cbe080c927c3e4cab" [label="local://context" shape="ellipse"];
  "sha256:8f5e013dbbf055275f3a6769b02dcb2fc0cf65fc1698758e8f4ddf63659a56f0" [label="copy{src=/requirements.txt, dest=/app/}" shape="note"];
  "sha256:a98bbd502facd967e639bbe767684bc8446ab85f0b62f6f7dbce163d5dfe8292" [label="mkdir{path=/app}" shape="note"];
  "sha256:3c67dcb9d6ff9d04e774533d0b1c55d5a72aa375896647b7475f069474426e7b" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:231b79e153ef8936fe72c94a0c7ea42089e02775fce9b44577718835d2c74ebe" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:e013acc995fc4586663db53eacde19e1c5d1ee27f1fa1e322416e67e55c83d98" [label="sha256:e013acc995fc4586663db53eacde19e1c5d1ee27f1fa1e322416e67e55c83d98" shape="plaintext"];
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" -> "sha256:b6bd3286a7a35ebcc45562ca30e4077ac92fe29c7b2a31fed2c7c01b88ddd175" [label=""];
  "sha256:b6bd3286a7a35ebcc45562ca30e4077ac92fe29c7b2a31fed2c7c01b88ddd175" -> "sha256:0014196818689570d8a5f1fedf014053f0a37291d9f136426e8b88a6c9d928fa" [label=""];
  "sha256:0014196818689570d8a5f1fedf014053f0a37291d9f136426e8b88a6c9d928fa" -> "sha256:8f5e013dbbf055275f3a6769b02dcb2fc0cf65fc1698758e8f4ddf63659a56f0" [label=""];
  "sha256:5c99a80e3fb66806f0c837313cae75e288af634c7e46ec6cbe080c927c3e4cab" -> "sha256:8f5e013dbbf055275f3a6769b02dcb2fc0cf65fc1698758e8f4ddf63659a56f0" [label=""];
  "sha256:8f5e013dbbf055275f3a6769b02dcb2fc0cf65fc1698758e8f4ddf63659a56f0" -> "sha256:a98bbd502facd967e639bbe767684bc8446ab85f0b62f6f7dbce163d5dfe8292" [label=""];
  "sha256:a98bbd502facd967e639bbe767684bc8446ab85f0b62f6f7dbce163d5dfe8292" -> "sha256:3c67dcb9d6ff9d04e774533d0b1c55d5a72aa375896647b7475f069474426e7b" [label=""];
  "sha256:3c67dcb9d6ff9d04e774533d0b1c55d5a72aa375896647b7475f069474426e7b" -> "sha256:231b79e153ef8936fe72c94a0c7ea42089e02775fce9b44577718835d2c74ebe" [label=""];
  "sha256:5c99a80e3fb66806f0c837313cae75e288af634c7e46ec6cbe080c927c3e4cab" -> "sha256:231b79e153ef8936fe72c94a0c7ea42089e02775fce9b44577718835d2c74ebe" [label=""];
  "sha256:231b79e153ef8936fe72c94a0c7ea42089e02775fce9b44577718835d2c74ebe" -> "sha256:e013acc995fc4586663db53eacde19e1c5d1ee27f1fa1e322416e67e55c83d98" [label=""];
}

