[app/sources/342066698.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:27d8144c4a1d3618b7b67d5a57ed921c703b6844567ac9c6cb1f2d93aae8a2a2" [label="local://context" shape="ellipse"];
  "sha256:b59d5a1b32494980f51a2f5ebab69f88c3a19d865a9297ac1cf253cd651c8231" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:71532dea4be3fde0ab80b6532f5b3fc8a79619bfb860b01b5c92cb35a7d0e472" [label="pip install requests" shape="box"];
  "sha256:acd8065a47db845b57865b3c44d27ac70f6bde34fe276feb8f52705ce54b2e42" [label="sha256:acd8065a47db845b57865b3c44d27ac70f6bde34fe276feb8f52705ce54b2e42" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:b59d5a1b32494980f51a2f5ebab69f88c3a19d865a9297ac1cf253cd651c8231" [label=""];
  "sha256:27d8144c4a1d3618b7b67d5a57ed921c703b6844567ac9c6cb1f2d93aae8a2a2" -> "sha256:b59d5a1b32494980f51a2f5ebab69f88c3a19d865a9297ac1cf253cd651c8231" [label=""];
  "sha256:b59d5a1b32494980f51a2f5ebab69f88c3a19d865a9297ac1cf253cd651c8231" -> "sha256:71532dea4be3fde0ab80b6532f5b3fc8a79619bfb860b01b5c92cb35a7d0e472" [label=""];
  "sha256:71532dea4be3fde0ab80b6532f5b3fc8a79619bfb860b01b5c92cb35a7d0e472" -> "sha256:acd8065a47db845b57865b3c44d27ac70f6bde34fe276feb8f52705ce54b2e42" [label=""];
}

