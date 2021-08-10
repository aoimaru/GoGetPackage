[app/sources/161145310.Dockerfile]
digraph {
  "sha256:f24ddf812d666c1a03cfde1bd0fcb7e57f722a1e9155a4431e5ce25b61ad3346" [label="local://context" shape="ellipse"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:0c739bfd996ebbe9beb20cf18aad2848a0411628251fd9a94d43ede9b3e8589b" [label="mkdir{path=/app}" shape="note"];
  "sha256:04b7ed9e09a6a6b34c0c3cf9caf903b858aa334ac4c1097985b5d3e42d393fb3" [label="copy{src=/tm-monitor, dest=/app/tm-monitor}" shape="note"];
  "sha256:331d5a1777c32659ff2ab00b4f789e667584ffb54449b28d9836aca8ae56da4a" [label="sha256:331d5a1777c32659ff2ab00b4f789e667584ffb54449b28d9836aca8ae56da4a" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:0c739bfd996ebbe9beb20cf18aad2848a0411628251fd9a94d43ede9b3e8589b" [label=""];
  "sha256:0c739bfd996ebbe9beb20cf18aad2848a0411628251fd9a94d43ede9b3e8589b" -> "sha256:04b7ed9e09a6a6b34c0c3cf9caf903b858aa334ac4c1097985b5d3e42d393fb3" [label=""];
  "sha256:f24ddf812d666c1a03cfde1bd0fcb7e57f722a1e9155a4431e5ce25b61ad3346" -> "sha256:04b7ed9e09a6a6b34c0c3cf9caf903b858aa334ac4c1097985b5d3e42d393fb3" [label=""];
  "sha256:04b7ed9e09a6a6b34c0c3cf9caf903b858aa334ac4c1097985b5d3e42d393fb3" -> "sha256:331d5a1777c32659ff2ab00b4f789e667584ffb54449b28d9836aca8ae56da4a" [label=""];
}

