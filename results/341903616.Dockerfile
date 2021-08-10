[app/sources/341903616.Dockerfile]
digraph {
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:6dec83a9bf3660dd15590d8c6f697e2d8cbaec98c1a90a0c1e1615fe5ec85b5c" [label="local://context" shape="ellipse"];
  "sha256:b70c16bf38f7c07f986fd6e7d5f08a847ec1b76cc503ab6ec2afc335eba07788" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:5e34c1ae39abdbe3fd31b5a348a71bffbe19bd64fcb831e04a37fd4f40b38f83" [label="pip install erppeek" shape="box"];
  "sha256:11479288dece567546daf4f0acc9026d7182329d3407227f2588b4bbf4753979" [label="sha256:11479288dece567546daf4f0acc9026d7182329d3407227f2588b4bbf4753979" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:b70c16bf38f7c07f986fd6e7d5f08a847ec1b76cc503ab6ec2afc335eba07788" [label=""];
  "sha256:6dec83a9bf3660dd15590d8c6f697e2d8cbaec98c1a90a0c1e1615fe5ec85b5c" -> "sha256:b70c16bf38f7c07f986fd6e7d5f08a847ec1b76cc503ab6ec2afc335eba07788" [label=""];
  "sha256:b70c16bf38f7c07f986fd6e7d5f08a847ec1b76cc503ab6ec2afc335eba07788" -> "sha256:5e34c1ae39abdbe3fd31b5a348a71bffbe19bd64fcb831e04a37fd4f40b38f83" [label=""];
  "sha256:5e34c1ae39abdbe3fd31b5a348a71bffbe19bd64fcb831e04a37fd4f40b38f83" -> "sha256:11479288dece567546daf4f0acc9026d7182329d3407227f2588b4bbf4753979" [label=""];
}

