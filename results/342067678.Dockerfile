[app/sources/342067678.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:95583485cfa8ff514768cbb76d0f77baf449854d016c82eb7afd56be55840b06" [label="local://context" shape="ellipse"];
  "sha256:d6d8e9514f405ab3283ea0500acfb7b669824de8d6d9843a496c0462a6611f0a" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:4512636cff6322cea005f78876fb2e074cfc509ebd63c868ec81f63aada00b84" [label="sha256:4512636cff6322cea005f78876fb2e074cfc509ebd63c868ec81f63aada00b84" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:d6d8e9514f405ab3283ea0500acfb7b669824de8d6d9843a496c0462a6611f0a" [label=""];
  "sha256:95583485cfa8ff514768cbb76d0f77baf449854d016c82eb7afd56be55840b06" -> "sha256:d6d8e9514f405ab3283ea0500acfb7b669824de8d6d9843a496c0462a6611f0a" [label=""];
  "sha256:d6d8e9514f405ab3283ea0500acfb7b669824de8d6d9843a496c0462a6611f0a" -> "sha256:4512636cff6322cea005f78876fb2e074cfc509ebd63c868ec81f63aada00b84" [label=""];
}

