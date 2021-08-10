[app/sources/249652821.Dockerfile]
digraph {
  "sha256:b9f3103785ed94c37186e6aff8e913fb4e6f578c6c494837acce48150701080e" [label="docker-image://docker.io/jgontrum/spacyapi:base_v2" shape="ellipse"];
  "sha256:a706411395882574313ffe2809cdde0c9a26dcbfb10fc4af5fbea6f0780b33b8" [label="/bin/sh -c cd /app && env/bin/download_models" shape="box"];
  "sha256:a18aba0b65d6659e76c7756181ff86174dc68b34822e88102b59967b8ed4cf86" [label="sha256:a18aba0b65d6659e76c7756181ff86174dc68b34822e88102b59967b8ed4cf86" shape="plaintext"];
  "sha256:b9f3103785ed94c37186e6aff8e913fb4e6f578c6c494837acce48150701080e" -> "sha256:a706411395882574313ffe2809cdde0c9a26dcbfb10fc4af5fbea6f0780b33b8" [label=""];
  "sha256:a706411395882574313ffe2809cdde0c9a26dcbfb10fc4af5fbea6f0780b33b8" -> "sha256:a18aba0b65d6659e76c7756181ff86174dc68b34822e88102b59967b8ed4cf86" [label=""];
}

