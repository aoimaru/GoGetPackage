[app/sources/341900372.Dockerfile]
digraph {
  "sha256:a0725bec3a35ebcef76701c490ce760a297435b400c2cab276c94e0fd786465f" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:0d76013281b8d54abd22be9bf28cbe8b23c44e4c87159a282b258a40390b77f8" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:7fa98bb562e6f522739cc3b77b470858c680c8f3ea44fda19a6a3cceb7eb886e" [label="pip install paramiko" shape="box"];
  "sha256:1ae499b9641b42701e9eaf1ca05d2d2d93fa7759e53fc52a6c41dc0a62e75239" [label="sha256:1ae499b9641b42701e9eaf1ca05d2d2d93fa7759e53fc52a6c41dc0a62e75239" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:0d76013281b8d54abd22be9bf28cbe8b23c44e4c87159a282b258a40390b77f8" [label=""];
  "sha256:a0725bec3a35ebcef76701c490ce760a297435b400c2cab276c94e0fd786465f" -> "sha256:0d76013281b8d54abd22be9bf28cbe8b23c44e4c87159a282b258a40390b77f8" [label=""];
  "sha256:0d76013281b8d54abd22be9bf28cbe8b23c44e4c87159a282b258a40390b77f8" -> "sha256:7fa98bb562e6f522739cc3b77b470858c680c8f3ea44fda19a6a3cceb7eb886e" [label=""];
  "sha256:7fa98bb562e6f522739cc3b77b470858c680c8f3ea44fda19a6a3cceb7eb886e" -> "sha256:1ae499b9641b42701e9eaf1ca05d2d2d93fa7759e53fc52a6c41dc0a62e75239" [label=""];
}

