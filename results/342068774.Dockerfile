[app/sources/342068774.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:c857718a0110836d700ff828bf19fbd6d4e556c7308150ba96754f4aff92d3be" [label="local://context" shape="ellipse"];
  "sha256:ca0618f7284c0bf6eb79a78e5d06abad1d855d94df9ab58406c355102f6ac48d" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:662b2d117e1a43cc918dcdd8a5488377249cd26c6348c78c19e2fad9532db457" [label="pip install werkzeug" shape="box"];
  "sha256:7d3f167c8efa09af1afed9723b441866e8d9d1077357b14ebf3ccca43c14fd00" [label="sha256:7d3f167c8efa09af1afed9723b441866e8d9d1077357b14ebf3ccca43c14fd00" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:ca0618f7284c0bf6eb79a78e5d06abad1d855d94df9ab58406c355102f6ac48d" [label=""];
  "sha256:c857718a0110836d700ff828bf19fbd6d4e556c7308150ba96754f4aff92d3be" -> "sha256:ca0618f7284c0bf6eb79a78e5d06abad1d855d94df9ab58406c355102f6ac48d" [label=""];
  "sha256:ca0618f7284c0bf6eb79a78e5d06abad1d855d94df9ab58406c355102f6ac48d" -> "sha256:662b2d117e1a43cc918dcdd8a5488377249cd26c6348c78c19e2fad9532db457" [label=""];
  "sha256:662b2d117e1a43cc918dcdd8a5488377249cd26c6348c78c19e2fad9532db457" -> "sha256:7d3f167c8efa09af1afed9723b441866e8d9d1077357b14ebf3ccca43c14fd00" [label=""];
}

