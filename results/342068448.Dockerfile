[app/sources/342068448.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:3bec8cf55caaba449f87e7cda1261fe97e50a70dc2df4017919d0435ad2ffed7" [label="local://context" shape="ellipse"];
  "sha256:631a52ad0e876958e2814e0343b7e1529c43653376edba4d8b0008cc342e8561" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:d07fa77410fae9be47a65fb78e0e809c9d19255ee486d11e8141bff8e66c3fa6" [label="sha256:d07fa77410fae9be47a65fb78e0e809c9d19255ee486d11e8141bff8e66c3fa6" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:631a52ad0e876958e2814e0343b7e1529c43653376edba4d8b0008cc342e8561" [label=""];
  "sha256:3bec8cf55caaba449f87e7cda1261fe97e50a70dc2df4017919d0435ad2ffed7" -> "sha256:631a52ad0e876958e2814e0343b7e1529c43653376edba4d8b0008cc342e8561" [label=""];
  "sha256:631a52ad0e876958e2814e0343b7e1529c43653376edba4d8b0008cc342e8561" -> "sha256:d07fa77410fae9be47a65fb78e0e809c9d19255ee486d11e8141bff8e66c3fa6" [label=""];
}

