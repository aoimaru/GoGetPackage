[app/sources/342067816.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:70f4477b377e443eebad96f120fe97affcfb450a9db503e2b3a6506a3e568943" [label="local://context" shape="ellipse"];
  "sha256:7fbf169f46f273a79d7d67f637b663ba78479113b26df38e0ad2443b3e50ea5e" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:c931bffaf6b2e818211feecd3f69d790939887408451df0370b00c5e956b9c01" [label="sha256:c931bffaf6b2e818211feecd3f69d790939887408451df0370b00c5e956b9c01" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:7fbf169f46f273a79d7d67f637b663ba78479113b26df38e0ad2443b3e50ea5e" [label=""];
  "sha256:70f4477b377e443eebad96f120fe97affcfb450a9db503e2b3a6506a3e568943" -> "sha256:7fbf169f46f273a79d7d67f637b663ba78479113b26df38e0ad2443b3e50ea5e" [label=""];
  "sha256:7fbf169f46f273a79d7d67f637b663ba78479113b26df38e0ad2443b3e50ea5e" -> "sha256:c931bffaf6b2e818211feecd3f69d790939887408451df0370b00c5e956b9c01" [label=""];
}

