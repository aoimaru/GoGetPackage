[app/sources/252794328.Dockerfile]
digraph {
  "sha256:8455fd2f143fc9177be46048b3de337929f685f6878e9a1e1091875855f4c2d2" [label="docker-image://docker.io/library/python:slim" shape="ellipse"];
  "sha256:a24b3a1bc1a42788eeaa97f7a83cb65cfa89b9cb1b82e00c50311daabf80cdce" [label="mkdir{path=/data}" shape="note"];
  "sha256:85059f7f3d3192a174c2dd63574dda86ea15f05b8c0a58786298eb578438e243" [label="/bin/sh -c pip install --upgrade youtube_dl" shape="box"];
  "sha256:96b28d8eac795b116eef67f2e9abe3c657e41a70361807311c8c56058910db8a" [label="sha256:96b28d8eac795b116eef67f2e9abe3c657e41a70361807311c8c56058910db8a" shape="plaintext"];
  "sha256:8455fd2f143fc9177be46048b3de337929f685f6878e9a1e1091875855f4c2d2" -> "sha256:a24b3a1bc1a42788eeaa97f7a83cb65cfa89b9cb1b82e00c50311daabf80cdce" [label=""];
  "sha256:a24b3a1bc1a42788eeaa97f7a83cb65cfa89b9cb1b82e00c50311daabf80cdce" -> "sha256:85059f7f3d3192a174c2dd63574dda86ea15f05b8c0a58786298eb578438e243" [label=""];
  "sha256:85059f7f3d3192a174c2dd63574dda86ea15f05b8c0a58786298eb578438e243" -> "sha256:96b28d8eac795b116eef67f2e9abe3c657e41a70361807311c8c56058910db8a" [label=""];
}

