[app/sources/342068522.Dockerfile]
digraph {
  "sha256:fff4cd5ef8ec2a65753dfcc089a15572ee8aeea2632611bb742482483001c5a8" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:4d335be9e7cf71e048a2cffbba4525e952e41774bcf598f6c0bff2ed725a75d2" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:c1fbf305a9e29567d12403877a9301e07bb026e604502ea520d2b4689dcd2fdb" [label="pip install BeautifulSoup" shape="box"];
  "sha256:96ff87f42ec05f9a82290de9c0def53a14457b3a5921a92f9e9758a12f1d3d1c" [label="sha256:96ff87f42ec05f9a82290de9c0def53a14457b3a5921a92f9e9758a12f1d3d1c" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:4d335be9e7cf71e048a2cffbba4525e952e41774bcf598f6c0bff2ed725a75d2" [label=""];
  "sha256:fff4cd5ef8ec2a65753dfcc089a15572ee8aeea2632611bb742482483001c5a8" -> "sha256:4d335be9e7cf71e048a2cffbba4525e952e41774bcf598f6c0bff2ed725a75d2" [label=""];
  "sha256:4d335be9e7cf71e048a2cffbba4525e952e41774bcf598f6c0bff2ed725a75d2" -> "sha256:c1fbf305a9e29567d12403877a9301e07bb026e604502ea520d2b4689dcd2fdb" [label=""];
  "sha256:c1fbf305a9e29567d12403877a9301e07bb026e604502ea520d2b4689dcd2fdb" -> "sha256:96ff87f42ec05f9a82290de9c0def53a14457b3a5921a92f9e9758a12f1d3d1c" [label=""];
}

