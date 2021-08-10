[app/sources/342068380.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:66249a190d18233ee8c73f0101c474ec5e51a68cd9b67926eeaebb547f8ac9f9" [label="local://context" shape="ellipse"];
  "sha256:275af0bcd4c3d60db77a026c96a57b3943ef99c9ea7113c89a1ce3c47a9014fb" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:9af789b3f5ef4caa9cd41b41bb1912872666e6e28c8ccff926f44db34202f8f1" [label="pip install numpy" shape="box"];
  "sha256:5bc9e2c7a9d211576dc25c8c5a1eabee6736637b075ca4213a598f277e270281" [label="sha256:5bc9e2c7a9d211576dc25c8c5a1eabee6736637b075ca4213a598f277e270281" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:275af0bcd4c3d60db77a026c96a57b3943ef99c9ea7113c89a1ce3c47a9014fb" [label=""];
  "sha256:66249a190d18233ee8c73f0101c474ec5e51a68cd9b67926eeaebb547f8ac9f9" -> "sha256:275af0bcd4c3d60db77a026c96a57b3943ef99c9ea7113c89a1ce3c47a9014fb" [label=""];
  "sha256:275af0bcd4c3d60db77a026c96a57b3943ef99c9ea7113c89a1ce3c47a9014fb" -> "sha256:9af789b3f5ef4caa9cd41b41bb1912872666e6e28c8ccff926f44db34202f8f1" [label=""];
  "sha256:9af789b3f5ef4caa9cd41b41bb1912872666e6e28c8ccff926f44db34202f8f1" -> "sha256:5bc9e2c7a9d211576dc25c8c5a1eabee6736637b075ca4213a598f277e270281" [label=""];
}

