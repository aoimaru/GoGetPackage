[app/sources/341899074.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:b9a72505f7e4ab358ec6d6e76f69153aff789bb8cf6a79f13fd8a7b768cc1998" [label="local://context" shape="ellipse"];
  "sha256:608e431fc9542c60c3f1c336d6e79c45c6d39b0d3ff6d26b385a37f3be5080db" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:60fb84820c715cba59ba742ec9b9c8e075ff70f3651a4493cc4d06b73da976cc" [label="sha256:60fb84820c715cba59ba742ec9b9c8e075ff70f3651a4493cc4d06b73da976cc" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:608e431fc9542c60c3f1c336d6e79c45c6d39b0d3ff6d26b385a37f3be5080db" [label=""];
  "sha256:b9a72505f7e4ab358ec6d6e76f69153aff789bb8cf6a79f13fd8a7b768cc1998" -> "sha256:608e431fc9542c60c3f1c336d6e79c45c6d39b0d3ff6d26b385a37f3be5080db" [label=""];
  "sha256:608e431fc9542c60c3f1c336d6e79c45c6d39b0d3ff6d26b385a37f3be5080db" -> "sha256:60fb84820c715cba59ba742ec9b9c8e075ff70f3651a4493cc4d06b73da976cc" [label=""];
}

