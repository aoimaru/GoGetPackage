[app/sources/189495297.Dockerfile]
digraph {
  "sha256:6e840f5602ded649ac61c85fa71e2a6da6d493048bfe7bcace329358631269e4" [label="docker-image://docker.io/ensime/ensime:v2.x-cache" shape="ellipse"];
  "sha256:93882c1c368caa0973229e81abeec7bf7d9eb33487491a747f73b3a96f029d6b" [label="/bin/sh -c jenv global 1.8" shape="box"];
  "sha256:cc47c5765b5fe0ec3b64ebdb7e2b3cb7624ce3fd0be99a217b8536cb6c58ef0c" [label="mkdir{path=/cache}" shape="note"];
  "sha256:f40245f10dbbf13ef1580c3d17f18d114d1fc86c1ea54343044342c55795eb59" [label="/bin/sh -c git clone $GIT_REPO $GIT_SRC_DIR &&     cd scala-debugger/ &&     git checkout $GIT_BRANCH &&     sbt +update +test:update +it:update" shape="box"];
  "sha256:21c8b1b3c9970d74f9e1b7b0ec17401c8a056f1f7363784496c40e5eae3d55e0" [label="sha256:21c8b1b3c9970d74f9e1b7b0ec17401c8a056f1f7363784496c40e5eae3d55e0" shape="plaintext"];
  "sha256:6e840f5602ded649ac61c85fa71e2a6da6d493048bfe7bcace329358631269e4" -> "sha256:93882c1c368caa0973229e81abeec7bf7d9eb33487491a747f73b3a96f029d6b" [label=""];
  "sha256:93882c1c368caa0973229e81abeec7bf7d9eb33487491a747f73b3a96f029d6b" -> "sha256:cc47c5765b5fe0ec3b64ebdb7e2b3cb7624ce3fd0be99a217b8536cb6c58ef0c" [label=""];
  "sha256:cc47c5765b5fe0ec3b64ebdb7e2b3cb7624ce3fd0be99a217b8536cb6c58ef0c" -> "sha256:f40245f10dbbf13ef1580c3d17f18d114d1fc86c1ea54343044342c55795eb59" [label=""];
  "sha256:f40245f10dbbf13ef1580c3d17f18d114d1fc86c1ea54343044342c55795eb59" -> "sha256:21c8b1b3c9970d74f9e1b7b0ec17401c8a056f1f7363784496c40e5eae3d55e0" [label=""];
}

