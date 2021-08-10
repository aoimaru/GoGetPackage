[app/sources/295862012.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:a935c8cfaa4dcbed0db1ca7b07b9bfa70981b8083551d98f38b1aa2c6024c7e6" [label="/bin/sh -c apt-get update && apt-get install -y jq ca-certificates curl tar bc" shape="box"];
  "sha256:a8bb3c108a2810ab5783f3c98375f0da3a65319ab7d2c164d7c74a4ac5fea1fa" [label="/bin/sh -c mkdir /vic     && curl -L https://bintray.com/vmware/vic/download_file?file_path=vic_0.8.0.tar.gz | tar xz -C /vic     && cp /vic/vic/vic-machine-linux /vic     && cp /vic/vic/*.iso /vic     && rm -fr /vic/vic" shape="box"];
  "sha256:16f8f33e5b7bbbb115ef7f6fe20b8ae7e275e0056b419ffe03e86650911ba9d0" [label="sha256:16f8f33e5b7bbbb115ef7f6fe20b8ae7e275e0056b419ffe03e86650911ba9d0" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:a935c8cfaa4dcbed0db1ca7b07b9bfa70981b8083551d98f38b1aa2c6024c7e6" [label=""];
  "sha256:a935c8cfaa4dcbed0db1ca7b07b9bfa70981b8083551d98f38b1aa2c6024c7e6" -> "sha256:a8bb3c108a2810ab5783f3c98375f0da3a65319ab7d2c164d7c74a4ac5fea1fa" [label=""];
  "sha256:a8bb3c108a2810ab5783f3c98375f0da3a65319ab7d2c164d7c74a4ac5fea1fa" -> "sha256:16f8f33e5b7bbbb115ef7f6fe20b8ae7e275e0056b419ffe03e86650911ba9d0" [label=""];
}

