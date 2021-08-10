[app/sources/366690770.Dockerfile]
digraph {
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:b93d21bf5581164c35293e9201abd3ebaa55f3d9cd9ac0ef5f40c37e43cb478a" [label="/bin/sh -c apk add --update --no-cache git bash protobuf-dev" shape="box"];
  "sha256:ee0626e749dc6e6d8ab1ebd7d27eb4149132467bb23bf8b1f1325f917957fe45" [label="/bin/sh -c go get -u github.com/grpc-ecosystem/grpc-gateway/protoc-gen-grpc-gateway" shape="box"];
  "sha256:04d401817facaeac95860a635727e87fe2215b4904118d9eb6608e535ad3ea84" [label="/bin/sh -c go get -u github.com/grpc-ecosystem/grpc-gateway/protoc-gen-swagger" shape="box"];
  "sha256:5d8bf47bce3faef0e2d268613c6fb183637afc0f771b1cb4c61e9e7e71667aca" [label="/bin/sh -c go get -u github.com/golang/protobuf/protoc-gen-go" shape="box"];
  "sha256:3efc7f62759d526eb8222ea570cf3c356162cadf10d94413e7dfd507eecb4f67" [label="sha256:3efc7f62759d526eb8222ea570cf3c356162cadf10d94413e7dfd507eecb4f67" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:b93d21bf5581164c35293e9201abd3ebaa55f3d9cd9ac0ef5f40c37e43cb478a" [label=""];
  "sha256:b93d21bf5581164c35293e9201abd3ebaa55f3d9cd9ac0ef5f40c37e43cb478a" -> "sha256:ee0626e749dc6e6d8ab1ebd7d27eb4149132467bb23bf8b1f1325f917957fe45" [label=""];
  "sha256:ee0626e749dc6e6d8ab1ebd7d27eb4149132467bb23bf8b1f1325f917957fe45" -> "sha256:04d401817facaeac95860a635727e87fe2215b4904118d9eb6608e535ad3ea84" [label=""];
  "sha256:04d401817facaeac95860a635727e87fe2215b4904118d9eb6608e535ad3ea84" -> "sha256:5d8bf47bce3faef0e2d268613c6fb183637afc0f771b1cb4c61e9e7e71667aca" [label=""];
  "sha256:5d8bf47bce3faef0e2d268613c6fb183637afc0f771b1cb4c61e9e7e71667aca" -> "sha256:3efc7f62759d526eb8222ea570cf3c356162cadf10d94413e7dfd507eecb4f67" [label=""];
}

