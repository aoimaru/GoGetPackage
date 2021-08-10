[app/sources/342067106.Dockerfile]
digraph {
  "sha256:9f5b0acf7978e32ac17030dc63848cc8ae03c020275a8c63447bead273b908c5" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:1f28187305813bca66f50ba70d80f84a103e9c662b33bf79ab5a572bb04b0a39" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:f98b875e2a5b71dc6aee0e0ffa5e4084bf9a0306bc07ddad1c5938f41eb4580f" [label="pip install numpy" shape="box"];
  "sha256:fb504efcc0e0c419bae22558f369d23ccf297fb1c2d68db0030214bedc2ba73a" [label="pip install wrapt" shape="box"];
  "sha256:d4f241fcbce2cefb90bc09e120c9da8cf199cb25723373f001b8fba0e7d95f5e" [label="sha256:d4f241fcbce2cefb90bc09e120c9da8cf199cb25723373f001b8fba0e7d95f5e" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:1f28187305813bca66f50ba70d80f84a103e9c662b33bf79ab5a572bb04b0a39" [label=""];
  "sha256:9f5b0acf7978e32ac17030dc63848cc8ae03c020275a8c63447bead273b908c5" -> "sha256:1f28187305813bca66f50ba70d80f84a103e9c662b33bf79ab5a572bb04b0a39" [label=""];
  "sha256:1f28187305813bca66f50ba70d80f84a103e9c662b33bf79ab5a572bb04b0a39" -> "sha256:f98b875e2a5b71dc6aee0e0ffa5e4084bf9a0306bc07ddad1c5938f41eb4580f" [label=""];
  "sha256:f98b875e2a5b71dc6aee0e0ffa5e4084bf9a0306bc07ddad1c5938f41eb4580f" -> "sha256:fb504efcc0e0c419bae22558f369d23ccf297fb1c2d68db0030214bedc2ba73a" [label=""];
  "sha256:fb504efcc0e0c419bae22558f369d23ccf297fb1c2d68db0030214bedc2ba73a" -> "sha256:d4f241fcbce2cefb90bc09e120c9da8cf199cb25723373f001b8fba0e7d95f5e" [label=""];
}

