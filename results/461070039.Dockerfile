[app/sources/461070039.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:640d822e3d4c92f19602d5177fde73eca2c3a62d3f60931084f004338c9e063a" [label="local://context" shape="ellipse"];
  "sha256:3d97354317ea058eed7b9b9dfa0c7ff2d64abcbd95a2dd97728e8d958e26c388" [label="copy{src=/build, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:0183998f80308d6bcced736acd67b4e76569880a73797770a636ebcac591cbbd" [label="sha256:0183998f80308d6bcced736acd67b4e76569880a73797770a636ebcac591cbbd" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:3d97354317ea058eed7b9b9dfa0c7ff2d64abcbd95a2dd97728e8d958e26c388" [label=""];
  "sha256:640d822e3d4c92f19602d5177fde73eca2c3a62d3f60931084f004338c9e063a" -> "sha256:3d97354317ea058eed7b9b9dfa0c7ff2d64abcbd95a2dd97728e8d958e26c388" [label=""];
  "sha256:3d97354317ea058eed7b9b9dfa0c7ff2d64abcbd95a2dd97728e8d958e26c388" -> "sha256:0183998f80308d6bcced736acd67b4e76569880a73797770a636ebcac591cbbd" [label=""];
}

