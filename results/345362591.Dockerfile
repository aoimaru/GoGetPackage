[app/sources/345362591.Dockerfile]
digraph {
  "sha256:2c5185dc9fe5abca26a58e2eabe6da5ad2c25ce734a04e9e1ff75efee6967031" [label="docker-image://docker.io/balenalib/armv7hf-debian:stretch-run" shape="ellipse"];
  "sha256:616e34774e39465171619e3b9fc113aa34c36c584ce6c402b419a6309e4f470a" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:fd18d0cbbf23368982cebe908dea75dae5355d6a68126c21370050b33d80ce23" [label="sha256:fd18d0cbbf23368982cebe908dea75dae5355d6a68126c21370050b33d80ce23" shape="plaintext"];
  "sha256:2c5185dc9fe5abca26a58e2eabe6da5ad2c25ce734a04e9e1ff75efee6967031" -> "sha256:616e34774e39465171619e3b9fc113aa34c36c584ce6c402b419a6309e4f470a" [label=""];
  "sha256:616e34774e39465171619e3b9fc113aa34c36c584ce6c402b419a6309e4f470a" -> "sha256:fd18d0cbbf23368982cebe908dea75dae5355d6a68126c21370050b33d80ce23" [label=""];
}

