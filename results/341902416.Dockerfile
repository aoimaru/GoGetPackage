[app/sources/341902416.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:0ba4d7f780bcddfb322a80fbf5c3f442f2ca910df4bdfad318b317c10ee967ae" [label="local://context" shape="ellipse"];
  "sha256:ad306b3ff12a195f0c32dcd1519d3dc5b55fbd0020e95d591c1d63fb5eed0e09" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:2af6e71d477b996198a1cbc08c080eebceddb21a8ea27ee2b46ff1b6eb86f260" [label="sha256:2af6e71d477b996198a1cbc08c080eebceddb21a8ea27ee2b46ff1b6eb86f260" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:ad306b3ff12a195f0c32dcd1519d3dc5b55fbd0020e95d591c1d63fb5eed0e09" [label=""];
  "sha256:0ba4d7f780bcddfb322a80fbf5c3f442f2ca910df4bdfad318b317c10ee967ae" -> "sha256:ad306b3ff12a195f0c32dcd1519d3dc5b55fbd0020e95d591c1d63fb5eed0e09" [label=""];
  "sha256:ad306b3ff12a195f0c32dcd1519d3dc5b55fbd0020e95d591c1d63fb5eed0e09" -> "sha256:2af6e71d477b996198a1cbc08c080eebceddb21a8ea27ee2b46ff1b6eb86f260" [label=""];
}

