[app/sources/341903970.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:54f49160b72e0e5be8f2bf4850fd45022b3cd5f7dafa2a3f252cee262f32df8d" [label="local://context" shape="ellipse"];
  "sha256:e82c7a6bfa090287551512b796698d620ce33eb95b43db06470b94bc019718a3" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:75407d900c08f35701c58451d7c64283099cc32facccec903c311b9d25a62f3f" [label="pip install selenium" shape="box"];
  "sha256:83402924c02cb749a0d83f26991cdd4ceac158675b5b5dbdac7e74ff87cf23ac" [label="pip install selenium" shape="box"];
  "sha256:f732aeaeee2a9375881144651f8a44d09a746fce81510524d01736ba403b8e03" [label="sha256:f732aeaeee2a9375881144651f8a44d09a746fce81510524d01736ba403b8e03" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:e82c7a6bfa090287551512b796698d620ce33eb95b43db06470b94bc019718a3" [label=""];
  "sha256:54f49160b72e0e5be8f2bf4850fd45022b3cd5f7dafa2a3f252cee262f32df8d" -> "sha256:e82c7a6bfa090287551512b796698d620ce33eb95b43db06470b94bc019718a3" [label=""];
  "sha256:e82c7a6bfa090287551512b796698d620ce33eb95b43db06470b94bc019718a3" -> "sha256:75407d900c08f35701c58451d7c64283099cc32facccec903c311b9d25a62f3f" [label=""];
  "sha256:75407d900c08f35701c58451d7c64283099cc32facccec903c311b9d25a62f3f" -> "sha256:83402924c02cb749a0d83f26991cdd4ceac158675b5b5dbdac7e74ff87cf23ac" [label=""];
  "sha256:83402924c02cb749a0d83f26991cdd4ceac158675b5b5dbdac7e74ff87cf23ac" -> "sha256:f732aeaeee2a9375881144651f8a44d09a746fce81510524d01736ba403b8e03" [label=""];
}
