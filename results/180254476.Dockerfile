[app/sources/180254476.Dockerfile]
digraph {
  "sha256:bba4ca780475c2be9febdf6deaf1a3740e6b07b1fb4bcf1071bd62495befb9c6" [label="docker-image://docker.io/library/golang:1.3" shape="ellipse"];
  "sha256:a7c8014f417479916fea89937b8d88d013a924cb3ebdf31a3edfbc8939a7e128" [label="/bin/sh -c go get github.com/aktau/github-release" shape="box"];
  "sha256:d2bff8d673ce29c8b60b76c5c322cfdd9b4c2fa6b8462da98e104eaa634273e9" [label="/bin/sh -c mkdir -p /src/dionysos" shape="box"];
  "sha256:68a74eba7d9e6750c877f977788bd4b7208c4db75f3df811589d0567ba36079d" [label="sha256:68a74eba7d9e6750c877f977788bd4b7208c4db75f3df811589d0567ba36079d" shape="plaintext"];
  "sha256:bba4ca780475c2be9febdf6deaf1a3740e6b07b1fb4bcf1071bd62495befb9c6" -> "sha256:a7c8014f417479916fea89937b8d88d013a924cb3ebdf31a3edfbc8939a7e128" [label=""];
  "sha256:a7c8014f417479916fea89937b8d88d013a924cb3ebdf31a3edfbc8939a7e128" -> "sha256:d2bff8d673ce29c8b60b76c5c322cfdd9b4c2fa6b8462da98e104eaa634273e9" [label=""];
  "sha256:d2bff8d673ce29c8b60b76c5c322cfdd9b4c2fa6b8462da98e104eaa634273e9" -> "sha256:68a74eba7d9e6750c877f977788bd4b7208c4db75f3df811589d0567ba36079d" [label=""];
}

