[app/sources/299698822.Dockerfile]
digraph {
  "sha256:e58b453bf7aeea8ef2c9260dbe5bb076917b8029b2de6c88bb627340e140e9f0" [label="local://context" shape="ellipse"];
  "sha256:c78e8c99818429028ea60fd01cc0339630f8ebd9df9cfedb6fce094f9a31014c" [label="copy{src=/kubernetes-secret-generator, dest=/kubernetes-secret-generator}" shape="note"];
  "sha256:e5089fb6579afd1e9c69efdbc0264325d0dc7dca8f8e898016fe2b1094a5b2f3" [label="sha256:e5089fb6579afd1e9c69efdbc0264325d0dc7dca8f8e898016fe2b1094a5b2f3" shape="plaintext"];
  "sha256:e58b453bf7aeea8ef2c9260dbe5bb076917b8029b2de6c88bb627340e140e9f0" -> "sha256:c78e8c99818429028ea60fd01cc0339630f8ebd9df9cfedb6fce094f9a31014c" [label=""];
  "sha256:c78e8c99818429028ea60fd01cc0339630f8ebd9df9cfedb6fce094f9a31014c" -> "sha256:e5089fb6579afd1e9c69efdbc0264325d0dc7dca8f8e898016fe2b1094a5b2f3" [label=""];
}

