[app/sources/341899102.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:1af78ea35426b024b33e89d784227a7323dd0c4a012c226afe2f422d54614448" [label="local://context" shape="ellipse"];
  "sha256:3a4917a0e83c76c581dacd9de1615a750b4d095533d88ccd783ced020219b147" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:7247787c9e2b26a9ae863303900bcd1040b75ac95bb99ad97909f8b755a4f805" [label="sha256:7247787c9e2b26a9ae863303900bcd1040b75ac95bb99ad97909f8b755a4f805" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:3a4917a0e83c76c581dacd9de1615a750b4d095533d88ccd783ced020219b147" [label=""];
  "sha256:1af78ea35426b024b33e89d784227a7323dd0c4a012c226afe2f422d54614448" -> "sha256:3a4917a0e83c76c581dacd9de1615a750b4d095533d88ccd783ced020219b147" [label=""];
  "sha256:3a4917a0e83c76c581dacd9de1615a750b4d095533d88ccd783ced020219b147" -> "sha256:7247787c9e2b26a9ae863303900bcd1040b75ac95bb99ad97909f8b755a4f805" [label=""];
}
