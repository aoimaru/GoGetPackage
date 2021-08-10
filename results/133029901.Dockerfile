[app/sources/133029901.Dockerfile]
digraph {
  "sha256:6bc57c2c760d2925db1071e5d869736101f9680b31e3a1035bd9ec988292474a" [label="docker-image://docker.io/pveber/bistro-base:stretch" shape="ellipse"];
  "sha256:df8c2ad0c20e1d7c576213d8177a6daa76a66e18e74b23e14f41d1205d6ddb9b" [label="/bin/sh -c apt-get update && apt-get install -y picard-tools=2.8.1+dfsg-1" shape="box"];
  "sha256:d9d6457cd58ec0aefe7c4621eb70105ec09ce8d5eee493ad3c11af892e4ad135" [label="sha256:d9d6457cd58ec0aefe7c4621eb70105ec09ce8d5eee493ad3c11af892e4ad135" shape="plaintext"];
  "sha256:6bc57c2c760d2925db1071e5d869736101f9680b31e3a1035bd9ec988292474a" -> "sha256:df8c2ad0c20e1d7c576213d8177a6daa76a66e18e74b23e14f41d1205d6ddb9b" [label=""];
  "sha256:df8c2ad0c20e1d7c576213d8177a6daa76a66e18e74b23e14f41d1205d6ddb9b" -> "sha256:d9d6457cd58ec0aefe7c4621eb70105ec09ce8d5eee493ad3c11af892e4ad135" [label=""];
}

