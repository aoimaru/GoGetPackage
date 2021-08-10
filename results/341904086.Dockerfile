[app/sources/341904086.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:9a2e45ffb07e5a14130eee01b64c09686b3c170c76fe39cd72041c8af7091a9a" [label="local://context" shape="ellipse"];
  "sha256:e2df0b851744526294d6b14bbc0a20ee035fef22f93e4991f6119192b6c8db51" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:ef8c96ba958cb1ef2e893d960cdd16d52d0afc1bc2f8cf8e6ad08592f6b1deb9" [label="sha256:ef8c96ba958cb1ef2e893d960cdd16d52d0afc1bc2f8cf8e6ad08592f6b1deb9" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:e2df0b851744526294d6b14bbc0a20ee035fef22f93e4991f6119192b6c8db51" [label=""];
  "sha256:9a2e45ffb07e5a14130eee01b64c09686b3c170c76fe39cd72041c8af7091a9a" -> "sha256:e2df0b851744526294d6b14bbc0a20ee035fef22f93e4991f6119192b6c8db51" [label=""];
  "sha256:e2df0b851744526294d6b14bbc0a20ee035fef22f93e4991f6119192b6c8db51" -> "sha256:ef8c96ba958cb1ef2e893d960cdd16d52d0afc1bc2f8cf8e6ad08592f6b1deb9" [label=""];
}

