[app/sources/241873112.Dockerfile]
digraph {
  "sha256:57418024b824e07b57b7aea85c4e13e5ecba12a975495ff5f0663795f915a7a3" [label="docker-image://docker.io/library/runc_test:latest" shape="ellipse"];
  "sha256:7c55affc0e06016d5497cb11180f5993392ff3e1abf50f1fe052d7ea68f7fc20" [label="local://context" shape="ellipse"];
  "sha256:763eced4a29d34a36323f6a62af6074a46415909b2f92a143f1dc2230259ff2b" [label="copy{src=/, dest=/go/src/github.com/opencontainers/runc}" shape="note"];
  "sha256:8ee00c59c8f2b8610b0f5d63473d15afd5cc24c5c15fe978ad86400a78f71168" [label="/bin/sh -c make" shape="box"];
  "sha256:e6d349f4ff9176b3d04f7cd2186b6d775af4660fc59cf5a9c282a4177b6b8629" [label="sha256:e6d349f4ff9176b3d04f7cd2186b6d775af4660fc59cf5a9c282a4177b6b8629" shape="plaintext"];
  "sha256:57418024b824e07b57b7aea85c4e13e5ecba12a975495ff5f0663795f915a7a3" -> "sha256:763eced4a29d34a36323f6a62af6074a46415909b2f92a143f1dc2230259ff2b" [label=""];
  "sha256:7c55affc0e06016d5497cb11180f5993392ff3e1abf50f1fe052d7ea68f7fc20" -> "sha256:763eced4a29d34a36323f6a62af6074a46415909b2f92a143f1dc2230259ff2b" [label=""];
  "sha256:763eced4a29d34a36323f6a62af6074a46415909b2f92a143f1dc2230259ff2b" -> "sha256:8ee00c59c8f2b8610b0f5d63473d15afd5cc24c5c15fe978ad86400a78f71168" [label=""];
  "sha256:8ee00c59c8f2b8610b0f5d63473d15afd5cc24c5c15fe978ad86400a78f71168" -> "sha256:e6d349f4ff9176b3d04f7cd2186b6d775af4660fc59cf5a9c282a4177b6b8629" [label=""];
}

