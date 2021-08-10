[app/sources/318569312.Dockerfile]
digraph {
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" [label="docker-image://docker.io/library/nginx:latest" shape="ellipse"];
  "sha256:0729081396457ffe456caf1cd6e2f3396c30d5aad8bfe10cc63c8ab833d8692c" [label="local://context" shape="ellipse"];
  "sha256:2828f07b611779cb8bddd6a4a829b42a59d8c7368829efe1c818a42fe07a1349" [label="copy{src=/build, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:db49e03d22bc04f703f9b903d3dc40ba6b3337d5269c3aa474ff5a3e1776ee20" [label="sha256:db49e03d22bc04f703f9b903d3dc40ba6b3337d5269c3aa474ff5a3e1776ee20" shape="plaintext"];
  "sha256:62549b609c62be5d4a072c8b1697ba6e0f40e59bf6b340565f5132922031518b" -> "sha256:2828f07b611779cb8bddd6a4a829b42a59d8c7368829efe1c818a42fe07a1349" [label=""];
  "sha256:0729081396457ffe456caf1cd6e2f3396c30d5aad8bfe10cc63c8ab833d8692c" -> "sha256:2828f07b611779cb8bddd6a4a829b42a59d8c7368829efe1c818a42fe07a1349" [label=""];
  "sha256:2828f07b611779cb8bddd6a4a829b42a59d8c7368829efe1c818a42fe07a1349" -> "sha256:db49e03d22bc04f703f9b903d3dc40ba6b3337d5269c3aa474ff5a3e1776ee20" [label=""];
}

