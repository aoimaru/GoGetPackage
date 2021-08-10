[app/sources/342066150.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:32d4c75da1f61de8b40efb479fa3db08e6eac0348d0545a208e7233cd895dd57" [label="local://context" shape="ellipse"];
  "sha256:4f6fc8bb95b817a173c5d108a9d4c0e018d979260728c4916a2617e1c5610f61" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:f8f04ede6ce6ebfaa4c64b02c528bd0c35ac4e521a556b69801fe5fd3f7662df" [label="sha256:f8f04ede6ce6ebfaa4c64b02c528bd0c35ac4e521a556b69801fe5fd3f7662df" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:4f6fc8bb95b817a173c5d108a9d4c0e018d979260728c4916a2617e1c5610f61" [label=""];
  "sha256:32d4c75da1f61de8b40efb479fa3db08e6eac0348d0545a208e7233cd895dd57" -> "sha256:4f6fc8bb95b817a173c5d108a9d4c0e018d979260728c4916a2617e1c5610f61" [label=""];
  "sha256:4f6fc8bb95b817a173c5d108a9d4c0e018d979260728c4916a2617e1c5610f61" -> "sha256:f8f04ede6ce6ebfaa4c64b02c528bd0c35ac4e521a556b69801fe5fd3f7662df" [label=""];
}

