[app/sources/252785106.Dockerfile]
digraph {
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:0a7b29388d195f597b929e5aed5643a16e17656d7e56b1d7d062b69e3a24215e" [label="/bin/sh -c yum groupinstall -y \"Development Tools\"" shape="box"];
  "sha256:8383a4c59e4c6f03b8d4895753f436e591e94eaad50c13707e0660a66af841e5" [label="/bin/sh -c yum install -y wget tar zlib-devel" shape="box"];
  "sha256:4d7c3cd9db9c52b168413fe09d9d449a3e5eee214a8982da399ed42fa8a753d9" [label="local://context" shape="ellipse"];
  "sha256:dbba9bf5045846d9014d4cb6ceb8d8a5b7352d9dd216a10325577e8ba44a1bc0" [label="copy{src=/build.sh, dest=/bin/build.sh}" shape="note"];
  "sha256:d4a8a9d13964fc5d8b48770d7ddfca7142ba8eeb43d7770bd03dad3d4816f37b" [label="/bin/sh -c /bin/build.sh" shape="box"];
  "sha256:25513e5e972a468ba63380b00cafca0beeeb1a595b9e77b26d9338daccd12162" [label="sha256:25513e5e972a468ba63380b00cafca0beeeb1a595b9e77b26d9338daccd12162" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:0a7b29388d195f597b929e5aed5643a16e17656d7e56b1d7d062b69e3a24215e" [label=""];
  "sha256:0a7b29388d195f597b929e5aed5643a16e17656d7e56b1d7d062b69e3a24215e" -> "sha256:8383a4c59e4c6f03b8d4895753f436e591e94eaad50c13707e0660a66af841e5" [label=""];
  "sha256:8383a4c59e4c6f03b8d4895753f436e591e94eaad50c13707e0660a66af841e5" -> "sha256:dbba9bf5045846d9014d4cb6ceb8d8a5b7352d9dd216a10325577e8ba44a1bc0" [label=""];
  "sha256:4d7c3cd9db9c52b168413fe09d9d449a3e5eee214a8982da399ed42fa8a753d9" -> "sha256:dbba9bf5045846d9014d4cb6ceb8d8a5b7352d9dd216a10325577e8ba44a1bc0" [label=""];
  "sha256:dbba9bf5045846d9014d4cb6ceb8d8a5b7352d9dd216a10325577e8ba44a1bc0" -> "sha256:d4a8a9d13964fc5d8b48770d7ddfca7142ba8eeb43d7770bd03dad3d4816f37b" [label=""];
  "sha256:d4a8a9d13964fc5d8b48770d7ddfca7142ba8eeb43d7770bd03dad3d4816f37b" -> "sha256:25513e5e972a468ba63380b00cafca0beeeb1a595b9e77b26d9338daccd12162" [label=""];
}

