[app/sources/307915231.Dockerfile]
digraph {
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" [label="docker-image://docker.io/library/busybox:latest" shape="ellipse"];
  "sha256:fa5fc573f242cdca5b13218a96318a45bb63e8b8e6e4e5b66f9c6d8f50bc7eb0" [label="local://context" shape="ellipse"];
  "sha256:ac7e750577d5542142e537ca0f951dc57c9f98027daf9508d0e53a2b548ac389" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:cab6af602498f3a9cd43059a0c79e1b09634cdd7e46d6dfb00d2926982bfecf2" [label="sha256:cab6af602498f3a9cd43059a0c79e1b09634cdd7e46d6dfb00d2926982bfecf2" shape="plaintext"];
  "sha256:08a03f3ffe5fba421a6403c31e153425ced631d108868f30e04985f99d69326e" -> "sha256:ac7e750577d5542142e537ca0f951dc57c9f98027daf9508d0e53a2b548ac389" [label=""];
  "sha256:fa5fc573f242cdca5b13218a96318a45bb63e8b8e6e4e5b66f9c6d8f50bc7eb0" -> "sha256:ac7e750577d5542142e537ca0f951dc57c9f98027daf9508d0e53a2b548ac389" [label=""];
  "sha256:ac7e750577d5542142e537ca0f951dc57c9f98027daf9508d0e53a2b548ac389" -> "sha256:cab6af602498f3a9cd43059a0c79e1b09634cdd7e46d6dfb00d2926982bfecf2" [label=""];
}

