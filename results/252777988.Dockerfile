[app/sources/252777988.Dockerfile]
digraph {
  "sha256:946935cddf9259dd58e4d7a3c76840014d23b1a9a0ecdadee89ea14805ec4b35" [label="docker-image://docker.io/library/python:2.7-onbuild" shape="ellipse"];
  "sha256:feec4282bd35b90f665bcfb42eb93c9d325e8c12d0d013741389227f59c59916" [label="local://context" shape="ellipse"];
  "sha256:0aa4bd2c19c774c2ac9c4465d1578508280630409d43c291278eceb0069f98c2" [label="copy{src=/start, dest=/start}" shape="note"];
  "sha256:b02a06bb82ae8b306b6b48acff069665c88ca0f7647a55a25c30b25e1c0ee998" [label="sha256:b02a06bb82ae8b306b6b48acff069665c88ca0f7647a55a25c30b25e1c0ee998" shape="plaintext"];
  "sha256:946935cddf9259dd58e4d7a3c76840014d23b1a9a0ecdadee89ea14805ec4b35" -> "sha256:0aa4bd2c19c774c2ac9c4465d1578508280630409d43c291278eceb0069f98c2" [label=""];
  "sha256:feec4282bd35b90f665bcfb42eb93c9d325e8c12d0d013741389227f59c59916" -> "sha256:0aa4bd2c19c774c2ac9c4465d1578508280630409d43c291278eceb0069f98c2" [label=""];
  "sha256:0aa4bd2c19c774c2ac9c4465d1578508280630409d43c291278eceb0069f98c2" -> "sha256:b02a06bb82ae8b306b6b48acff069665c88ca0f7647a55a25c30b25e1c0ee998" [label=""];
}

