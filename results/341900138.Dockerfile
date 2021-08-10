[app/sources/341900138.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:83580f146d2c1ac4235b3e30b0cc8cc770eddab5e5f1f173493b6f6849a08abd" [label="local://context" shape="ellipse"];
  "sha256:0ea01212863762abf78c10c89beb0a692f78b630f3b8cb8d752a8f81c7e380f8" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:0ce89c9c34794f078dbc59979f33f30f3e2a27cfb3fbf54547a9a99919214d69" [label="pip install numpy" shape="box"];
  "sha256:dd87115a61de03f0ff68054cf45911e22146afe08bbf63af2382238a4c676285" [label="sha256:dd87115a61de03f0ff68054cf45911e22146afe08bbf63af2382238a4c676285" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:0ea01212863762abf78c10c89beb0a692f78b630f3b8cb8d752a8f81c7e380f8" [label=""];
  "sha256:83580f146d2c1ac4235b3e30b0cc8cc770eddab5e5f1f173493b6f6849a08abd" -> "sha256:0ea01212863762abf78c10c89beb0a692f78b630f3b8cb8d752a8f81c7e380f8" [label=""];
  "sha256:0ea01212863762abf78c10c89beb0a692f78b630f3b8cb8d752a8f81c7e380f8" -> "sha256:0ce89c9c34794f078dbc59979f33f30f3e2a27cfb3fbf54547a9a99919214d69" [label=""];
  "sha256:0ce89c9c34794f078dbc59979f33f30f3e2a27cfb3fbf54547a9a99919214d69" -> "sha256:dd87115a61de03f0ff68054cf45911e22146afe08bbf63af2382238a4c676285" [label=""];
}

