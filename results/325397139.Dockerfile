[app/sources/325397139.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:6b933f1d48e8cce21d5cfe6a7945f7a18befaa2769609b2093a4688faee01313" [label="local://context" shape="ellipse"];
  "sha256:e910bd51c9381463a019d40e82eb6b6ef0adf511d6adadf1f701d5d29478bfc4" [label="copy{src=/_book, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:344c8a0cd88fdcf3fd44f6973ed9f847cc32b0120bcb4806b5bf2370aaf2061d" [label="sha256:344c8a0cd88fdcf3fd44f6973ed9f847cc32b0120bcb4806b5bf2370aaf2061d" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:e910bd51c9381463a019d40e82eb6b6ef0adf511d6adadf1f701d5d29478bfc4" [label=""];
  "sha256:6b933f1d48e8cce21d5cfe6a7945f7a18befaa2769609b2093a4688faee01313" -> "sha256:e910bd51c9381463a019d40e82eb6b6ef0adf511d6adadf1f701d5d29478bfc4" [label=""];
  "sha256:e910bd51c9381463a019d40e82eb6b6ef0adf511d6adadf1f701d5d29478bfc4" -> "sha256:344c8a0cd88fdcf3fd44f6973ed9f847cc32b0120bcb4806b5bf2370aaf2061d" [label=""];
}

