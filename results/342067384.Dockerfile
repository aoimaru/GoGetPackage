[app/sources/342067384.Dockerfile]
digraph {
  "sha256:0b8f0f225c24b6c45811e0d3b262ef8e0311a7cdc790d2ab17c634f51de15ec2" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:0efc8c8cfab65f4934518abf13a01780e3c39a782892d8bef9158e5b695b16a5" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:829ce6bd44afd48617acaedf7b00e29fd9f7da72be86174badbb6081ce00e490" [label="pip install location" shape="box"];
  "sha256:e3ffb87aecdf3af37625c4c877c458b7348953920d31a38d2a945100752aac1e" [label="sha256:e3ffb87aecdf3af37625c4c877c458b7348953920d31a38d2a945100752aac1e" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:0efc8c8cfab65f4934518abf13a01780e3c39a782892d8bef9158e5b695b16a5" [label=""];
  "sha256:0b8f0f225c24b6c45811e0d3b262ef8e0311a7cdc790d2ab17c634f51de15ec2" -> "sha256:0efc8c8cfab65f4934518abf13a01780e3c39a782892d8bef9158e5b695b16a5" [label=""];
  "sha256:0efc8c8cfab65f4934518abf13a01780e3c39a782892d8bef9158e5b695b16a5" -> "sha256:829ce6bd44afd48617acaedf7b00e29fd9f7da72be86174badbb6081ce00e490" [label=""];
  "sha256:829ce6bd44afd48617acaedf7b00e29fd9f7da72be86174badbb6081ce00e490" -> "sha256:e3ffb87aecdf3af37625c4c877c458b7348953920d31a38d2a945100752aac1e" [label=""];
}

