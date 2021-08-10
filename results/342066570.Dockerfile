[app/sources/342066570.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:8cd7065b5863a737eb8ce59874244f724d3efb440a9eb277c1002ae25811cf03" [label="local://context" shape="ellipse"];
  "sha256:3599a0a49547ba227f3ea9762404cf612c7826fcf8b5dfcf950ca16f8d25aaef" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:29f38f6753b98cbf9fff0d65b723bb35ee21b1924dceec14e222db9f946fb94e" [label="sha256:29f38f6753b98cbf9fff0d65b723bb35ee21b1924dceec14e222db9f946fb94e" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:3599a0a49547ba227f3ea9762404cf612c7826fcf8b5dfcf950ca16f8d25aaef" [label=""];
  "sha256:8cd7065b5863a737eb8ce59874244f724d3efb440a9eb277c1002ae25811cf03" -> "sha256:3599a0a49547ba227f3ea9762404cf612c7826fcf8b5dfcf950ca16f8d25aaef" [label=""];
  "sha256:3599a0a49547ba227f3ea9762404cf612c7826fcf8b5dfcf950ca16f8d25aaef" -> "sha256:29f38f6753b98cbf9fff0d65b723bb35ee21b1924dceec14e222db9f946fb94e" [label=""];
}

