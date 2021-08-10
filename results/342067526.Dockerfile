[app/sources/342067526.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:3fd145ebd671022cf45c04403d8994826da414d413593eb5abf20c017a02cf07" [label="local://context" shape="ellipse"];
  "sha256:d3555b41aa59346d6b6cc40fa10c2d34952f0ed3c92e4326ce006c208b72182c" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:86e2072c74be7d08b26eb56789b6b4f7d7c6a64d33a102de83d60333ebce9fff" [label="sha256:86e2072c74be7d08b26eb56789b6b4f7d7c6a64d33a102de83d60333ebce9fff" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:d3555b41aa59346d6b6cc40fa10c2d34952f0ed3c92e4326ce006c208b72182c" [label=""];
  "sha256:3fd145ebd671022cf45c04403d8994826da414d413593eb5abf20c017a02cf07" -> "sha256:d3555b41aa59346d6b6cc40fa10c2d34952f0ed3c92e4326ce006c208b72182c" [label=""];
  "sha256:d3555b41aa59346d6b6cc40fa10c2d34952f0ed3c92e4326ce006c208b72182c" -> "sha256:86e2072c74be7d08b26eb56789b6b4f7d7c6a64d33a102de83d60333ebce9fff" [label=""];
}

