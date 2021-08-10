[app/sources/341904052.Dockerfile]
digraph {
  "sha256:9c91cf4f565f6a770891b1867109d2a9acbf56e334bd6e93d7f613f5f25f6e5a" [label="local://context" shape="ellipse"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" [label="docker-image://docker.io/library/python:2.7.13" shape="ellipse"];
  "sha256:02856e79a66797da8b3647b0a02a4fa79bbc80cb10333317ed54ff53caae5580" [label="copy{src=/snippet.py, dest=/snippet.py}" shape="note"];
  "sha256:8f4c0ec62b08acba1ee69dc07f23d5eee53e2e148fb1f32ab71c7c694d1c1656" [label="pip install lxml" shape="box"];
  "sha256:c3e2a17ebb55bf2c193b801459ac74f753c0e0c6fc2d931ab6d7d489144d4acf" [label="sha256:c3e2a17ebb55bf2c193b801459ac74f753c0e0c6fc2d931ab6d7d489144d4acf" shape="plaintext"];
  "sha256:87e6b8388634501911625ed4653fea3d03640257b178d8d951ab0152bbf08503" -> "sha256:02856e79a66797da8b3647b0a02a4fa79bbc80cb10333317ed54ff53caae5580" [label=""];
  "sha256:9c91cf4f565f6a770891b1867109d2a9acbf56e334bd6e93d7f613f5f25f6e5a" -> "sha256:02856e79a66797da8b3647b0a02a4fa79bbc80cb10333317ed54ff53caae5580" [label=""];
  "sha256:02856e79a66797da8b3647b0a02a4fa79bbc80cb10333317ed54ff53caae5580" -> "sha256:8f4c0ec62b08acba1ee69dc07f23d5eee53e2e148fb1f32ab71c7c694d1c1656" [label=""];
  "sha256:8f4c0ec62b08acba1ee69dc07f23d5eee53e2e148fb1f32ab71c7c694d1c1656" -> "sha256:c3e2a17ebb55bf2c193b801459ac74f753c0e0c6fc2d931ab6d7d489144d4acf" [label=""];
}

