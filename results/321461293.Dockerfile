[app/sources/321461293.Dockerfile]
digraph {
  "sha256:13977164732da042131a01089cfdb8d86e49d4888bfc4b32d78e2910871749ec" [label="docker-image://docker.io/bvlc/caffe:cpu" shape="ellipse"];
  "sha256:83e7b24de3439295d647fd4abe0c0bd6ecf9b5bf5d6cb3b5b65aa05375be2c3c" [label="mkdir{path=/root}" shape="note"];
  "sha256:c16a2c34bd817651630fe1d07d5b9d49df144f41fed807a9e0d32eb0d165aff9" [label="/bin/sh -c wget https://raw.githubusercontent.com/opencv/opencv/master/data/haarcascades/haarcascade_eye.xml -P data/" shape="box"];
  "sha256:e904dfe196cb0ebdab8eb98e737d337ba9b53a8c4c1bd4770fb33e8f7679c141" [label="/bin/sh -c wget https://raw.githubusercontent.com/opencv/opencv/master/data/haarcascades/haarcascade_frontalface_default.xml -P data/" shape="box"];
  "sha256:2e25623326ed3e419b736d56a0bafed5f54f0ed083baf6ef1c048e3a54dd5ca5" [label="/bin/sh -c wget https://raw.githubusercontent.com/CSAILVision/GazeCapture/master/models/itracker_deploy.prototxt -P data/" shape="box"];
  "sha256:996d9e57bcf3963c7cfab37df33b219b83a30599e1cb7602b32c4bd8a3e55db5" [label="/bin/sh -c wget https://github.com/CSAILVision/GazeCapture/raw/master/models/snapshots/itracker25x_iter_92000.caffemodel -P data/" shape="box"];
  "sha256:fb0fb394a710831a0807920b9260d6eb12c77de3698e8827b79108cf9de2f5cd" [label="/bin/sh -c wget https://github.com/CSAILVision/GazeCapture/raw/master/models/mean_images/mean_face_224.mat -P data/" shape="box"];
  "sha256:fcfa16f866f4810f46390d427521943f22ae6f7bce41d6616d3f14f718d5e54a" [label="/bin/sh -c wget https://github.com/CSAILVision/GazeCapture/raw/master/models/mean_images/mean_left_224.mat -P data/" shape="box"];
  "sha256:05f3fddbb14694b960f22fe85ce5aaa08538a28c38074c4c706d1adb3022ce23" [label="/bin/sh -c wget https://github.com/CSAILVision/GazeCapture/raw/master/models/mean_images/mean_right_224.mat -P data/" shape="box"];
  "sha256:9171de9b5bf571518c563db91d59807e93d6986af7ee1665b1fc33bc8b8e2e64" [label="local://context" shape="ellipse"];
  "sha256:158fc2e284f3e5ad706879314e8e1399fbb9ac7b1583b62fc4ad2c301edba25b" [label="copy{src=/requirements.txt, dest=/root/requirements.txt}" shape="note"];
  "sha256:f8c7a874cc1f69625e3cfa5cfba67bfb84058b765d1a09c648501c7b0d707d0a" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:083d6ac55beed8d87a9c1c82c6d02cc8c2d20d46b72051d54ade96f99696d2ad" [label="copy{src=/src, dest=/root/src/}" shape="note"];
  "sha256:f4e60f2a05bceba30da4266fd1e4572a0aeb7cde59e93d61507b4d12b72fed42" [label="sha256:f4e60f2a05bceba30da4266fd1e4572a0aeb7cde59e93d61507b4d12b72fed42" shape="plaintext"];
  "sha256:13977164732da042131a01089cfdb8d86e49d4888bfc4b32d78e2910871749ec" -> "sha256:83e7b24de3439295d647fd4abe0c0bd6ecf9b5bf5d6cb3b5b65aa05375be2c3c" [label=""];
  "sha256:83e7b24de3439295d647fd4abe0c0bd6ecf9b5bf5d6cb3b5b65aa05375be2c3c" -> "sha256:c16a2c34bd817651630fe1d07d5b9d49df144f41fed807a9e0d32eb0d165aff9" [label=""];
  "sha256:c16a2c34bd817651630fe1d07d5b9d49df144f41fed807a9e0d32eb0d165aff9" -> "sha256:e904dfe196cb0ebdab8eb98e737d337ba9b53a8c4c1bd4770fb33e8f7679c141" [label=""];
  "sha256:e904dfe196cb0ebdab8eb98e737d337ba9b53a8c4c1bd4770fb33e8f7679c141" -> "sha256:2e25623326ed3e419b736d56a0bafed5f54f0ed083baf6ef1c048e3a54dd5ca5" [label=""];
  "sha256:2e25623326ed3e419b736d56a0bafed5f54f0ed083baf6ef1c048e3a54dd5ca5" -> "sha256:996d9e57bcf3963c7cfab37df33b219b83a30599e1cb7602b32c4bd8a3e55db5" [label=""];
  "sha256:996d9e57bcf3963c7cfab37df33b219b83a30599e1cb7602b32c4bd8a3e55db5" -> "sha256:fb0fb394a710831a0807920b9260d6eb12c77de3698e8827b79108cf9de2f5cd" [label=""];
  "sha256:fb0fb394a710831a0807920b9260d6eb12c77de3698e8827b79108cf9de2f5cd" -> "sha256:fcfa16f866f4810f46390d427521943f22ae6f7bce41d6616d3f14f718d5e54a" [label=""];
  "sha256:fcfa16f866f4810f46390d427521943f22ae6f7bce41d6616d3f14f718d5e54a" -> "sha256:05f3fddbb14694b960f22fe85ce5aaa08538a28c38074c4c706d1adb3022ce23" [label=""];
  "sha256:05f3fddbb14694b960f22fe85ce5aaa08538a28c38074c4c706d1adb3022ce23" -> "sha256:158fc2e284f3e5ad706879314e8e1399fbb9ac7b1583b62fc4ad2c301edba25b" [label=""];
  "sha256:9171de9b5bf571518c563db91d59807e93d6986af7ee1665b1fc33bc8b8e2e64" -> "sha256:158fc2e284f3e5ad706879314e8e1399fbb9ac7b1583b62fc4ad2c301edba25b" [label=""];
  "sha256:158fc2e284f3e5ad706879314e8e1399fbb9ac7b1583b62fc4ad2c301edba25b" -> "sha256:f8c7a874cc1f69625e3cfa5cfba67bfb84058b765d1a09c648501c7b0d707d0a" [label=""];
  "sha256:f8c7a874cc1f69625e3cfa5cfba67bfb84058b765d1a09c648501c7b0d707d0a" -> "sha256:083d6ac55beed8d87a9c1c82c6d02cc8c2d20d46b72051d54ade96f99696d2ad" [label=""];
  "sha256:9171de9b5bf571518c563db91d59807e93d6986af7ee1665b1fc33bc8b8e2e64" -> "sha256:083d6ac55beed8d87a9c1c82c6d02cc8c2d20d46b72051d54ade96f99696d2ad" [label=""];
  "sha256:083d6ac55beed8d87a9c1c82c6d02cc8c2d20d46b72051d54ade96f99696d2ad" -> "sha256:f4e60f2a05bceba30da4266fd1e4572a0aeb7cde59e93d61507b4d12b72fed42" [label=""];
}

