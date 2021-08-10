[app/sources/292731304.Dockerfile]
digraph {
  "sha256:6d057cc2302805b5818acee456fa932a931eabf1a4f08c364c2d85d42b6a1bc4" [label="docker-image://docker.io/library/python:3.6-slim-stretch" shape="ellipse"];
  "sha256:4687b801098a39226077307851f338481cb4680fec484b3411066348aaa852a2" [label="/bin/sh -c pip install pytest" shape="box"];
  "sha256:a7a9b441dc07a5b555ec86d2bbfe87a459cf26f154765777c8218ab81aab1191" [label="mkdir{path=/nuclio}" shape="note"];
  "sha256:888ed8be13c2ab70559f967b1519d5fdf9670d7d7738253ad85d470517c42df7" [label="local://context" shape="ellipse"];
  "sha256:aa503a4fe8801fa65effca728cc2d9ee212af19b9a4734584561117dd43b8d95" [label="copy{src=/pkg/processor/runtime/python, dest=/nuclio/}" shape="note"];
  "sha256:f12060673666e3e39f309a71da89b1523fb8c65a48a4aea7364fa569996e3593" [label="/bin/sh -c find . -depth -name __pycache__ -exec rm -rf {} \\;" shape="box"];
  "sha256:4ef8fc5db96f69938bc8e0d2da031ed7e637b45fce595038e7c53777bce6a0e0" [label="/bin/sh -c python -m pytest -v ." shape="box"];
  "sha256:b3676665e167cac30460073a3b55e6945e3fc6af04b6ea05a1d78649f01ec96a" [label="sha256:b3676665e167cac30460073a3b55e6945e3fc6af04b6ea05a1d78649f01ec96a" shape="plaintext"];
  "sha256:6d057cc2302805b5818acee456fa932a931eabf1a4f08c364c2d85d42b6a1bc4" -> "sha256:4687b801098a39226077307851f338481cb4680fec484b3411066348aaa852a2" [label=""];
  "sha256:4687b801098a39226077307851f338481cb4680fec484b3411066348aaa852a2" -> "sha256:a7a9b441dc07a5b555ec86d2bbfe87a459cf26f154765777c8218ab81aab1191" [label=""];
  "sha256:a7a9b441dc07a5b555ec86d2bbfe87a459cf26f154765777c8218ab81aab1191" -> "sha256:aa503a4fe8801fa65effca728cc2d9ee212af19b9a4734584561117dd43b8d95" [label=""];
  "sha256:888ed8be13c2ab70559f967b1519d5fdf9670d7d7738253ad85d470517c42df7" -> "sha256:aa503a4fe8801fa65effca728cc2d9ee212af19b9a4734584561117dd43b8d95" [label=""];
  "sha256:aa503a4fe8801fa65effca728cc2d9ee212af19b9a4734584561117dd43b8d95" -> "sha256:f12060673666e3e39f309a71da89b1523fb8c65a48a4aea7364fa569996e3593" [label=""];
  "sha256:f12060673666e3e39f309a71da89b1523fb8c65a48a4aea7364fa569996e3593" -> "sha256:4ef8fc5db96f69938bc8e0d2da031ed7e637b45fce595038e7c53777bce6a0e0" [label=""];
  "sha256:4ef8fc5db96f69938bc8e0d2da031ed7e637b45fce595038e7c53777bce6a0e0" -> "sha256:b3676665e167cac30460073a3b55e6945e3fc6af04b6ea05a1d78649f01ec96a" [label=""];
}

