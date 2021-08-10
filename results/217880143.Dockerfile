[app/sources/217880143.Dockerfile]
digraph {
  "sha256:57f6260d49f2c499e3b4981497b6c2a9abe5c377157373abc2904f3a33849f13" [label="docker-image://docker.io/library/ubuntu:15.04" shape="ellipse"];
  "sha256:75193bb3cd5a197f6231c993b21f58eda33befa4ce09b33ffa16c2ec986f2fb5" [label="/bin/sh -c apt-get -y update &&   apt-get -y install   python3   python-pip" shape="box"];
  "sha256:d385a8e2b287558d8d607088cf86af997ca215e0dc56ac7c8a7f5da1eb779f63" [label="sha256:d385a8e2b287558d8d607088cf86af997ca215e0dc56ac7c8a7f5da1eb779f63" shape="plaintext"];
  "sha256:57f6260d49f2c499e3b4981497b6c2a9abe5c377157373abc2904f3a33849f13" -> "sha256:75193bb3cd5a197f6231c993b21f58eda33befa4ce09b33ffa16c2ec986f2fb5" [label=""];
  "sha256:75193bb3cd5a197f6231c993b21f58eda33befa4ce09b33ffa16c2ec986f2fb5" -> "sha256:d385a8e2b287558d8d607088cf86af997ca215e0dc56ac7c8a7f5da1eb779f63" [label=""];
}

