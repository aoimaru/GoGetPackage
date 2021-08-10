[app/sources/342068354.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:50497f8c3500834c8c3769caae0616b427812857d6e1e39a73214e39744e6fe4" [label="local://context" shape="ellipse"];
  "sha256:f98594a8a78f6f46b7fa048cfe98f3dcf5625e64a3bde0fd2e3512ddb8baeb01" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:89f1d6f01683172f6ab278db31912eda7b1666d8ce9055a367ede05abe59cf66" [label="sha256:89f1d6f01683172f6ab278db31912eda7b1666d8ce9055a367ede05abe59cf66" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:f98594a8a78f6f46b7fa048cfe98f3dcf5625e64a3bde0fd2e3512ddb8baeb01" [label=""];
  "sha256:50497f8c3500834c8c3769caae0616b427812857d6e1e39a73214e39744e6fe4" -> "sha256:f98594a8a78f6f46b7fa048cfe98f3dcf5625e64a3bde0fd2e3512ddb8baeb01" [label=""];
  "sha256:f98594a8a78f6f46b7fa048cfe98f3dcf5625e64a3bde0fd2e3512ddb8baeb01" -> "sha256:89f1d6f01683172f6ab278db31912eda7b1666d8ce9055a367ede05abe59cf66" [label=""];
}

