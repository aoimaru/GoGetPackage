[app/sources/342066632.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:8c23337dbc932f44ef03d820e5af85c64854255daa5ec078e0e64ba3a1d99961" [label="local://context" shape="ellipse"];
  "sha256:8b341d65a25dd022aed489195edaa083490971a9726cec2133b13d3ff67a2a11" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:5be2e318de4dbb9609d3594bcf8b5ea1342709fa77ba4df6fad63eb5c508b605" [label="pip install tweepy" shape="box"];
  "sha256:133d95811ddc2065741c30018ffdc1393c0b0c451cdc014cec5aa6a3f8d9991f" [label="sha256:133d95811ddc2065741c30018ffdc1393c0b0c451cdc014cec5aa6a3f8d9991f" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:8b341d65a25dd022aed489195edaa083490971a9726cec2133b13d3ff67a2a11" [label=""];
  "sha256:8c23337dbc932f44ef03d820e5af85c64854255daa5ec078e0e64ba3a1d99961" -> "sha256:8b341d65a25dd022aed489195edaa083490971a9726cec2133b13d3ff67a2a11" [label=""];
  "sha256:8b341d65a25dd022aed489195edaa083490971a9726cec2133b13d3ff67a2a11" -> "sha256:5be2e318de4dbb9609d3594bcf8b5ea1342709fa77ba4df6fad63eb5c508b605" [label=""];
  "sha256:5be2e318de4dbb9609d3594bcf8b5ea1342709fa77ba4df6fad63eb5c508b605" -> "sha256:133d95811ddc2065741c30018ffdc1393c0b0c451cdc014cec5aa6a3f8d9991f" [label=""];
}

