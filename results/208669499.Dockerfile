[app/sources/208669499.Dockerfile]
digraph {
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:27dfc13ec06065fdaee036894e49c5f0e60c41c3ce2583fd6ba4a9a03bb871d5" [label="mkdir{path=/go/src/github.com/awslabs/amazon-ecr-credential-helper}" shape="note"];
  "sha256:2cb2f567fecefb25ed6e9911b2cbaeb4a94aefa1a719a77436507676936817ce" [label="local://context" shape="ellipse"];
  "sha256:d1ce30f7bd8f5bf08c8d097fee75648935a0d12c4bac1cd27af7ca3734b46049" [label="copy{src=/, dest=/go/src/github.com/awslabs/amazon-ecr-credential-helper/}" shape="note"];
  "sha256:2b163947002a0bc338879e676c47a49a17344bda7a80d36594d1de3f7b98d26a" [label="sha256:2b163947002a0bc338879e676c47a49a17344bda7a80d36594d1de3f7b98d26a" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:27dfc13ec06065fdaee036894e49c5f0e60c41c3ce2583fd6ba4a9a03bb871d5" [label=""];
  "sha256:27dfc13ec06065fdaee036894e49c5f0e60c41c3ce2583fd6ba4a9a03bb871d5" -> "sha256:d1ce30f7bd8f5bf08c8d097fee75648935a0d12c4bac1cd27af7ca3734b46049" [label=""];
  "sha256:2cb2f567fecefb25ed6e9911b2cbaeb4a94aefa1a719a77436507676936817ce" -> "sha256:d1ce30f7bd8f5bf08c8d097fee75648935a0d12c4bac1cd27af7ca3734b46049" [label=""];
  "sha256:d1ce30f7bd8f5bf08c8d097fee75648935a0d12c4bac1cd27af7ca3734b46049" -> "sha256:2b163947002a0bc338879e676c47a49a17344bda7a80d36594d1de3f7b98d26a" [label=""];
}

