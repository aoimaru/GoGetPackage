[app/sources/341900942.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:33c7d33bd3076695b3f53894c02ab12f683a15ab98419dbf1bf03d997eaa6e3b" [label="local://context" shape="ellipse"];
  "sha256:a0fdd96e153f7cbcea773e9036e9fc57291684883611f83bd04b1ba567d0e97e" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:130753edb2830689d74e0b39f66ccfb3d62a4a1fbcb80dc3a1972697e534c151" [label="pip install requests" shape="box"];
  "sha256:e7da7fcfab5f3c61f2f215104dfbf1cc840122eb3583d83e907c8f222f7b311a" [label="pip install email" shape="box"];
  "sha256:664345880fbf2673ac2bca93c30a5f2b5cb6ebdc69c1fbef9345be797229390e" [label="pip install browsercookie" shape="box"];
  "sha256:de4c2a90780b9e4c50484a6d9b465f24c6e75d581f3d432eaa95ab4f79f34f0a" [label="sha256:de4c2a90780b9e4c50484a6d9b465f24c6e75d581f3d432eaa95ab4f79f34f0a" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:a0fdd96e153f7cbcea773e9036e9fc57291684883611f83bd04b1ba567d0e97e" [label=""];
  "sha256:33c7d33bd3076695b3f53894c02ab12f683a15ab98419dbf1bf03d997eaa6e3b" -> "sha256:a0fdd96e153f7cbcea773e9036e9fc57291684883611f83bd04b1ba567d0e97e" [label=""];
  "sha256:a0fdd96e153f7cbcea773e9036e9fc57291684883611f83bd04b1ba567d0e97e" -> "sha256:130753edb2830689d74e0b39f66ccfb3d62a4a1fbcb80dc3a1972697e534c151" [label=""];
  "sha256:130753edb2830689d74e0b39f66ccfb3d62a4a1fbcb80dc3a1972697e534c151" -> "sha256:e7da7fcfab5f3c61f2f215104dfbf1cc840122eb3583d83e907c8f222f7b311a" [label=""];
  "sha256:e7da7fcfab5f3c61f2f215104dfbf1cc840122eb3583d83e907c8f222f7b311a" -> "sha256:664345880fbf2673ac2bca93c30a5f2b5cb6ebdc69c1fbef9345be797229390e" [label=""];
  "sha256:664345880fbf2673ac2bca93c30a5f2b5cb6ebdc69c1fbef9345be797229390e" -> "sha256:de4c2a90780b9e4c50484a6d9b465f24c6e75d581f3d432eaa95ab4f79f34f0a" [label=""];
}

