[app/sources/342066744.Dockerfile]
digraph {
  "sha256:9f946020ffff775de20216b9a8c02fc886917e7495617ef2bbc2590ee4802ad1" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:9bd28593311fa4b8045e408b465f7df157b4d26058403ab706c5d5033ce90194" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:e61c7eb3f419b38f8d90a91be68f993402e7e8006cc207471f11952d3cc9a926" [label="sha256:e61c7eb3f419b38f8d90a91be68f993402e7e8006cc207471f11952d3cc9a926" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:9bd28593311fa4b8045e408b465f7df157b4d26058403ab706c5d5033ce90194" [label=""];
  "sha256:9f946020ffff775de20216b9a8c02fc886917e7495617ef2bbc2590ee4802ad1" -> "sha256:9bd28593311fa4b8045e408b465f7df157b4d26058403ab706c5d5033ce90194" [label=""];
  "sha256:9bd28593311fa4b8045e408b465f7df157b4d26058403ab706c5d5033ce90194" -> "sha256:e61c7eb3f419b38f8d90a91be68f993402e7e8006cc207471f11952d3cc9a926" [label=""];
}
