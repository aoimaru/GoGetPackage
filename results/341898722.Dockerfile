[app/sources/341898722.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:a04253d9578a0e3309a6274c2ae841d1748885228ac8dd6185571c0bf8fa6e3e" [label="local://context" shape="ellipse"];
  "sha256:b5983510c0ce8f5caaa2a4b7f6e4228c14200cd0949fee90e0714fa955115bd5" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:cb9b17729746643635d7f91c11c33bd6a2eb591e74836f6243673925b0a0ba92" [label="pip install docopt" shape="box"];
  "sha256:a8216d613ad6c151e791176c7ecd9674b3cf57f476d8123d60a998e6b0afe7e6" [label="sha256:a8216d613ad6c151e791176c7ecd9674b3cf57f476d8123d60a998e6b0afe7e6" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:b5983510c0ce8f5caaa2a4b7f6e4228c14200cd0949fee90e0714fa955115bd5" [label=""];
  "sha256:a04253d9578a0e3309a6274c2ae841d1748885228ac8dd6185571c0bf8fa6e3e" -> "sha256:b5983510c0ce8f5caaa2a4b7f6e4228c14200cd0949fee90e0714fa955115bd5" [label=""];
  "sha256:b5983510c0ce8f5caaa2a4b7f6e4228c14200cd0949fee90e0714fa955115bd5" -> "sha256:cb9b17729746643635d7f91c11c33bd6a2eb591e74836f6243673925b0a0ba92" [label=""];
  "sha256:cb9b17729746643635d7f91c11c33bd6a2eb591e74836f6243673925b0a0ba92" -> "sha256:a8216d613ad6c151e791176c7ecd9674b3cf57f476d8123d60a998e6b0afe7e6" [label=""];
}

