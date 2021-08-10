[app/sources/272127236.Dockerfile]
digraph {
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:8dad464b4a36cd465bd3cc7f5946ce6fb9ed4c05f9222397a8ab372dd5e84301" [label="/bin/sh -c apt-get update && apt-get install make" shape="box"];
  "sha256:cc609ea1a2abfedfc7f7f3e03f4c353f73ba6458bc5c003a6c3f820a88542e3a" [label="/bin/sh -c mkdir -p /go/src/github.com/GoogleContainerTools/" shape="box"];
  "sha256:95e97c8eaad3d39765343602d73b3a41ef32c6b054b1f701418b92e7d58668f2" [label="/bin/sh -c ln -s /workspace /go/src/github.com/GoogleContainerTools/container-diff" shape="box"];
  "sha256:381768bb3e05e08a08a0da4a301f43abae27a72e3e1554291636ae8b0712e4f7" [label="mkdir{path=/go/src/github.com/GoogleContainerTools/container-diff}" shape="note"];
  "sha256:94a8535ab180ed6e6a91162a98fb07521aabcfcbca9e5f597afa8511344c2b3f" [label="sha256:94a8535ab180ed6e6a91162a98fb07521aabcfcbca9e5f597afa8511344c2b3f" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:8dad464b4a36cd465bd3cc7f5946ce6fb9ed4c05f9222397a8ab372dd5e84301" [label=""];
  "sha256:8dad464b4a36cd465bd3cc7f5946ce6fb9ed4c05f9222397a8ab372dd5e84301" -> "sha256:cc609ea1a2abfedfc7f7f3e03f4c353f73ba6458bc5c003a6c3f820a88542e3a" [label=""];
  "sha256:cc609ea1a2abfedfc7f7f3e03f4c353f73ba6458bc5c003a6c3f820a88542e3a" -> "sha256:95e97c8eaad3d39765343602d73b3a41ef32c6b054b1f701418b92e7d58668f2" [label=""];
  "sha256:95e97c8eaad3d39765343602d73b3a41ef32c6b054b1f701418b92e7d58668f2" -> "sha256:381768bb3e05e08a08a0da4a301f43abae27a72e3e1554291636ae8b0712e4f7" [label=""];
  "sha256:381768bb3e05e08a08a0da4a301f43abae27a72e3e1554291636ae8b0712e4f7" -> "sha256:94a8535ab180ed6e6a91162a98fb07521aabcfcbca9e5f597afa8511344c2b3f" [label=""];
}

