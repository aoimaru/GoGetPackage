[app/sources/341902884.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:b4d07ef0e41d17dccc3a519cc2e50a36c2a8195a45850230f7cfd2da9a06fd86" [label="local://context" shape="ellipse"];
  "sha256:fc3ab0c40dddf492b39f4e469ac58c664fc0693e7fbb5ba4204b1f5b38e0927e" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:dae37af92b1acc467d1c59339815c7c0e25e45e7e13a72b6a111aab0503af0f2" [label="sha256:dae37af92b1acc467d1c59339815c7c0e25e45e7e13a72b6a111aab0503af0f2" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:fc3ab0c40dddf492b39f4e469ac58c664fc0693e7fbb5ba4204b1f5b38e0927e" [label=""];
  "sha256:b4d07ef0e41d17dccc3a519cc2e50a36c2a8195a45850230f7cfd2da9a06fd86" -> "sha256:fc3ab0c40dddf492b39f4e469ac58c664fc0693e7fbb5ba4204b1f5b38e0927e" [label=""];
  "sha256:fc3ab0c40dddf492b39f4e469ac58c664fc0693e7fbb5ba4204b1f5b38e0927e" -> "sha256:dae37af92b1acc467d1c59339815c7c0e25e45e7e13a72b6a111aab0503af0f2" [label=""];
}

