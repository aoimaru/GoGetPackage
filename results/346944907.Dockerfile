[app/sources/346944907.Dockerfile]
digraph {
  "sha256:ecddb69b0e9ffec65ce2b93da3093d6ceaa06343beecbcefe445bbcb729ef0b5" [label="docker-image://docker.io/baekjoon/onlinejudge-base:14.04" shape="ellipse"];
  "sha256:0cdb087e9133c7271e67ba56f4c28aee1af291a04c5e40f058d3ee9e84a0f84e" [label="/bin/sh -c apt-get install -y php5-cli" shape="box"];
  "sha256:8950d8c3a6eeaa4aebab09bfb97f3b741daadf44be66e43d6604af93fcb41cca" [label="/bin/sh -c rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:339883fb0ca10d8169116fe0476f844ffe8f1b88d5f48c2acbe2c5d14542fae0" [label="sha256:339883fb0ca10d8169116fe0476f844ffe8f1b88d5f48c2acbe2c5d14542fae0" shape="plaintext"];
  "sha256:ecddb69b0e9ffec65ce2b93da3093d6ceaa06343beecbcefe445bbcb729ef0b5" -> "sha256:0cdb087e9133c7271e67ba56f4c28aee1af291a04c5e40f058d3ee9e84a0f84e" [label=""];
  "sha256:0cdb087e9133c7271e67ba56f4c28aee1af291a04c5e40f058d3ee9e84a0f84e" -> "sha256:8950d8c3a6eeaa4aebab09bfb97f3b741daadf44be66e43d6604af93fcb41cca" [label=""];
  "sha256:8950d8c3a6eeaa4aebab09bfb97f3b741daadf44be66e43d6604af93fcb41cca" -> "sha256:339883fb0ca10d8169116fe0476f844ffe8f1b88d5f48c2acbe2c5d14542fae0" [label=""];
}

