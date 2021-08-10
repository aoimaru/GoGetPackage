[app/sources/341903674.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:267efb88421b8f6fa5cf0bc7b9754cc29ec379fad34eee656af79a4fa0bf56d3" [label="local://context" shape="ellipse"];
  "sha256:6b274f56b8ea4a164a3bad7176c7637b51ee695b5430e31eda68aa95258a696b" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:0a4306a83d4eee8a2976d3485e4172e86dafb8964acd7f81b1c52c30a97d5e41" [label="sha256:0a4306a83d4eee8a2976d3485e4172e86dafb8964acd7f81b1c52c30a97d5e41" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:6b274f56b8ea4a164a3bad7176c7637b51ee695b5430e31eda68aa95258a696b" [label=""];
  "sha256:267efb88421b8f6fa5cf0bc7b9754cc29ec379fad34eee656af79a4fa0bf56d3" -> "sha256:6b274f56b8ea4a164a3bad7176c7637b51ee695b5430e31eda68aa95258a696b" [label=""];
  "sha256:6b274f56b8ea4a164a3bad7176c7637b51ee695b5430e31eda68aa95258a696b" -> "sha256:0a4306a83d4eee8a2976d3485e4172e86dafb8964acd7f81b1c52c30a97d5e41" [label=""];
}

