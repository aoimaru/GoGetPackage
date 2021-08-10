[app/sources/345362165.Dockerfile]
digraph {
  "sha256:646cca344c5b728ae02b37d6b1a344f93add46fb693c846daba0fabe9f311c0b" [label="docker-image://docker.io/balenalib/amd64-ubuntu:cosmic-run" shape="ellipse"];
  "sha256:461cbefe8777cd1e1484afd60c8de015e53c9ec87259fbbae475a1fc7b072b7a" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c6fcd8cf3b65efcece37853e1ccc3769520fb74b10786bad1c5905d81abcfe9d" [label="sha256:c6fcd8cf3b65efcece37853e1ccc3769520fb74b10786bad1c5905d81abcfe9d" shape="plaintext"];
  "sha256:646cca344c5b728ae02b37d6b1a344f93add46fb693c846daba0fabe9f311c0b" -> "sha256:461cbefe8777cd1e1484afd60c8de015e53c9ec87259fbbae475a1fc7b072b7a" [label=""];
  "sha256:461cbefe8777cd1e1484afd60c8de015e53c9ec87259fbbae475a1fc7b072b7a" -> "sha256:c6fcd8cf3b65efcece37853e1ccc3769520fb74b10786bad1c5905d81abcfe9d" [label=""];
}

