[app/sources/341898984.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:cdc457c909776f3ce0b5d19826ea93ab3610e7ffb6d0a5059adc989a99599128" [label="local://context" shape="ellipse"];
  "sha256:877ed117713d9b002b2fcc3adc6bc46ed2117c16f33277354edd95a5e457da88" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:0c8131f27cad254ad85c6e78da6212a8a539259663d03271d9c0e80c61c4393f" [label="sha256:0c8131f27cad254ad85c6e78da6212a8a539259663d03271d9c0e80c61c4393f" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:877ed117713d9b002b2fcc3adc6bc46ed2117c16f33277354edd95a5e457da88" [label=""];
  "sha256:cdc457c909776f3ce0b5d19826ea93ab3610e7ffb6d0a5059adc989a99599128" -> "sha256:877ed117713d9b002b2fcc3adc6bc46ed2117c16f33277354edd95a5e457da88" [label=""];
  "sha256:877ed117713d9b002b2fcc3adc6bc46ed2117c16f33277354edd95a5e457da88" -> "sha256:0c8131f27cad254ad85c6e78da6212a8a539259663d03271d9c0e80c61c4393f" [label=""];
}

