[app/sources/341898680.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:62b831ce55d8ded93f5de92d3d168c78674d6c00a477f77e75ebeedae14f906a" [label="local://context" shape="ellipse"];
  "sha256:a20564af22f4816723357f2ac6e64f3031c3e8db44215485b68f9b013ee70bdf" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:d5aaafa3dea76d1a7e7c83a5485b15f868026791c2c8b8f3d11d5e1f6dad9d81" [label="pip install selenium" shape="box"];
  "sha256:9c0d9e2d7a7afd7ca37d3517044141c5751ff2efeea6b6d2d3d40c5c62985bf1" [label="sha256:9c0d9e2d7a7afd7ca37d3517044141c5751ff2efeea6b6d2d3d40c5c62985bf1" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:a20564af22f4816723357f2ac6e64f3031c3e8db44215485b68f9b013ee70bdf" [label=""];
  "sha256:62b831ce55d8ded93f5de92d3d168c78674d6c00a477f77e75ebeedae14f906a" -> "sha256:a20564af22f4816723357f2ac6e64f3031c3e8db44215485b68f9b013ee70bdf" [label=""];
  "sha256:a20564af22f4816723357f2ac6e64f3031c3e8db44215485b68f9b013ee70bdf" -> "sha256:d5aaafa3dea76d1a7e7c83a5485b15f868026791c2c8b8f3d11d5e1f6dad9d81" [label=""];
  "sha256:d5aaafa3dea76d1a7e7c83a5485b15f868026791c2c8b8f3d11d5e1f6dad9d81" -> "sha256:9c0d9e2d7a7afd7ca37d3517044141c5751ff2efeea6b6d2d3d40c5c62985bf1" [label=""];
}

