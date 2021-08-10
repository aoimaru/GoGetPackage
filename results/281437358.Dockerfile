[app/sources/281437358.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:c9db156e6237c1b0d6ba5b767da30561d8452c5acbab61486fefc4416f4f61d9" [label="local://context" shape="ellipse"];
  "sha256:28905a330f82058c7e2c7a25a4a44032fa704aba0cc4f847b998a731770840fb" [label="copy{src=/dst, dest=/usr/share/nginx/html/}" shape="note"];
  "sha256:8c7229b04056a410b023b3aaa3a9ef562e507b98c31cbeda029cba8c1a7b0cd4" [label="sha256:8c7229b04056a410b023b3aaa3a9ef562e507b98c31cbeda029cba8c1a7b0cd4" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:28905a330f82058c7e2c7a25a4a44032fa704aba0cc4f847b998a731770840fb" [label=""];
  "sha256:c9db156e6237c1b0d6ba5b767da30561d8452c5acbab61486fefc4416f4f61d9" -> "sha256:28905a330f82058c7e2c7a25a4a44032fa704aba0cc4f847b998a731770840fb" [label=""];
  "sha256:28905a330f82058c7e2c7a25a4a44032fa704aba0cc4f847b998a731770840fb" -> "sha256:8c7229b04056a410b023b3aaa3a9ef562e507b98c31cbeda029cba8c1a7b0cd4" [label=""];
}

