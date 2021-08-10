[app/sources/296458973.Dockerfile]
digraph {
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:572150ae33ea5956062a29e61d70f6806ba80f68a133a0f123228d9dec77d59a" [label="local://context" shape="ellipse"];
  "sha256:2e4fbf853020143c2db81195814a9925f249468395cbf7c33198ebf994573b15" [label="copy{src=/, dest=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:ef01206319a3b839543bff62f57cc3641d7d7617d33f6d83e14957dbb9e6f3a4" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tvim \t&& rm -rf /var/list/apt/lists/*" shape="box"];
  "sha256:e8f2c3e64c52115e43fc8c3a20d0b44bd82eca72306aa495e9202a7ca63e3bea" [label="mkdir{path=/go/src/github.com/aws/aws-sdk-go}" shape="note"];
  "sha256:0ee40f0addc2bec74085d005b5b82270d1314067e42eaa4728323a346d0a9d5a" [label="sha256:0ee40f0addc2bec74085d005b5b82270d1314067e42eaa4728323a346d0a9d5a" shape="plaintext"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:2e4fbf853020143c2db81195814a9925f249468395cbf7c33198ebf994573b15" [label=""];
  "sha256:572150ae33ea5956062a29e61d70f6806ba80f68a133a0f123228d9dec77d59a" -> "sha256:2e4fbf853020143c2db81195814a9925f249468395cbf7c33198ebf994573b15" [label=""];
  "sha256:2e4fbf853020143c2db81195814a9925f249468395cbf7c33198ebf994573b15" -> "sha256:ef01206319a3b839543bff62f57cc3641d7d7617d33f6d83e14957dbb9e6f3a4" [label=""];
  "sha256:ef01206319a3b839543bff62f57cc3641d7d7617d33f6d83e14957dbb9e6f3a4" -> "sha256:e8f2c3e64c52115e43fc8c3a20d0b44bd82eca72306aa495e9202a7ca63e3bea" [label=""];
  "sha256:e8f2c3e64c52115e43fc8c3a20d0b44bd82eca72306aa495e9202a7ca63e3bea" -> "sha256:0ee40f0addc2bec74085d005b5b82270d1314067e42eaa4728323a346d0a9d5a" [label=""];
}

