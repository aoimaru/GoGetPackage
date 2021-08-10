[app/sources/341899906.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:df8d1cb59a9caa1f0e74c03e7a5275311d7ff8f252ab66f5e1b78d76dd1ee624" [label="local://context" shape="ellipse"];
  "sha256:28ea4c98d782eaf3d7a08e57e1f0314db35c16b2bb0652ea6a3c5da6011e3b5f" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:079ccca3e400418d3720bbb90710d3ac2f18e2767573419c845c1916f247758b" [label="sha256:079ccca3e400418d3720bbb90710d3ac2f18e2767573419c845c1916f247758b" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:28ea4c98d782eaf3d7a08e57e1f0314db35c16b2bb0652ea6a3c5da6011e3b5f" [label=""];
  "sha256:df8d1cb59a9caa1f0e74c03e7a5275311d7ff8f252ab66f5e1b78d76dd1ee624" -> "sha256:28ea4c98d782eaf3d7a08e57e1f0314db35c16b2bb0652ea6a3c5da6011e3b5f" [label=""];
  "sha256:28ea4c98d782eaf3d7a08e57e1f0314db35c16b2bb0652ea6a3c5da6011e3b5f" -> "sha256:079ccca3e400418d3720bbb90710d3ac2f18e2767573419c845c1916f247758b" [label=""];
}

