[app/sources/465534893.Dockerfile]
digraph {
  "sha256:f7300124043b5608b874c7982c68e1d0339d7087ac444ca01c4cde04723f81a7" [label="docker-image://docker.io/library/spark-base:2.3.1" shape="ellipse"];
  "sha256:a0e6a20b69880d621b1afa290ca557c6fe8477563eb0e975cdb3fdf1819bcc97" [label="local://context" shape="ellipse"];
  "sha256:1ca203d8f831cd0e6c9049fc75e93658d23edb920e13a3dfba230a3d278a898d" [label="copy{src=/spark-submit.sh, dest=/}" shape="note"];
  "sha256:38a8cd1c4efe69facc68702c259731d7249e1033ad27da847e581a6bb95da54a" [label="sha256:38a8cd1c4efe69facc68702c259731d7249e1033ad27da847e581a6bb95da54a" shape="plaintext"];
  "sha256:f7300124043b5608b874c7982c68e1d0339d7087ac444ca01c4cde04723f81a7" -> "sha256:1ca203d8f831cd0e6c9049fc75e93658d23edb920e13a3dfba230a3d278a898d" [label=""];
  "sha256:a0e6a20b69880d621b1afa290ca557c6fe8477563eb0e975cdb3fdf1819bcc97" -> "sha256:1ca203d8f831cd0e6c9049fc75e93658d23edb920e13a3dfba230a3d278a898d" [label=""];
  "sha256:1ca203d8f831cd0e6c9049fc75e93658d23edb920e13a3dfba230a3d278a898d" -> "sha256:38a8cd1c4efe69facc68702c259731d7249e1033ad27da847e581a6bb95da54a" [label=""];
}

