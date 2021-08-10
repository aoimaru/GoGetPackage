[app/sources/341904218.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:a0c84bae15d3274b5a7fb3553c263e394a4a0d8bcc178cbc1b26b0363d0ec18f" [label="local://context" shape="ellipse"];
  "sha256:b912e0d010507113923c1c4252405ae45039de9a5ce3b3956a67bf2c674621a8" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:8516ae44661ff21db5a05b4eeaf8bd467225920823e1cd2db9ec1b1a20a31acf" [label="sha256:8516ae44661ff21db5a05b4eeaf8bd467225920823e1cd2db9ec1b1a20a31acf" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:b912e0d010507113923c1c4252405ae45039de9a5ce3b3956a67bf2c674621a8" [label=""];
  "sha256:a0c84bae15d3274b5a7fb3553c263e394a4a0d8bcc178cbc1b26b0363d0ec18f" -> "sha256:b912e0d010507113923c1c4252405ae45039de9a5ce3b3956a67bf2c674621a8" [label=""];
  "sha256:b912e0d010507113923c1c4252405ae45039de9a5ce3b3956a67bf2c674621a8" -> "sha256:8516ae44661ff21db5a05b4eeaf8bd467225920823e1cd2db9ec1b1a20a31acf" [label=""];
}

