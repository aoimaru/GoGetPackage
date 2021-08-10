[app/sources/347681217.Dockerfile]
digraph {
  "sha256:75ecd691d1215f89b19628636ff2639d7dd14c16515a7c4f24d37fd9150a8add" [label="docker-image://docker.io/library/node:10.15.1-alpine" shape="ellipse"];
  "sha256:2b2fb7cea06f34ef766dd6d4b32cc381f0d9f2950f4ab5eb2d262f0c09c71faf" [label="local://context" shape="ellipse"];
  "sha256:946bfad476a795e382030531f1af15554871ed373eea80d0b6a74feeb423d93b" [label="copy{src=/*.proto, dest=/},copy{src=/mqtt/*, dest=/}" shape="note"];
  "sha256:e3d5979f98bd66862a3b65edb5b299ca73b23e3bde7cfdbc0c8d1963d76ae2e4" [label="/bin/sh -c npm rebuild && npm install" shape="box"];
  "sha256:c22512f393603001d264181b9cc4aee356c9a83755db908859c13663e3c28418" [label="sha256:c22512f393603001d264181b9cc4aee356c9a83755db908859c13663e3c28418" shape="plaintext"];
  "sha256:75ecd691d1215f89b19628636ff2639d7dd14c16515a7c4f24d37fd9150a8add" -> "sha256:946bfad476a795e382030531f1af15554871ed373eea80d0b6a74feeb423d93b" [label=""];
  "sha256:2b2fb7cea06f34ef766dd6d4b32cc381f0d9f2950f4ab5eb2d262f0c09c71faf" -> "sha256:946bfad476a795e382030531f1af15554871ed373eea80d0b6a74feeb423d93b" [label=""];
  "sha256:946bfad476a795e382030531f1af15554871ed373eea80d0b6a74feeb423d93b" -> "sha256:e3d5979f98bd66862a3b65edb5b299ca73b23e3bde7cfdbc0c8d1963d76ae2e4" [label=""];
  "sha256:e3d5979f98bd66862a3b65edb5b299ca73b23e3bde7cfdbc0c8d1963d76ae2e4" -> "sha256:c22512f393603001d264181b9cc4aee356c9a83755db908859c13663e3c28418" [label=""];
}

