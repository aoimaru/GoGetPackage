[app/sources/463359868.Dockerfile]
digraph {
  "sha256:286cda7a99a95805fd7694229d9c65777e83cad7730791ba3ea32a7991f89efd" [label="docker-image://docker.io/nvidia/cuda:9.0-devel-ubuntu16.04" shape="ellipse"];
  "sha256:9bd5dda7474d7730d1d1e631c0415859b7f6b4abf9e27bf8a6d1b7ca285d2f59" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends     cmake git libboost-all-dev && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9ee2fcbcae771308d21919d6d8f2a5725f9a92f727a0660283d6d330a19530fd" [label="/bin/sh -c git clone --recursive https://github.com/gunrock/gunrock.git &&     cd gunrock && mkdir build && cd build && cmake .. && make -j$(nproc)" shape="box"];
  "sha256:11c11423d64fa08e09f0f3dbea7f2cfe6f6e80f2bccfc419e8d3f023669206e8" [label="sha256:11c11423d64fa08e09f0f3dbea7f2cfe6f6e80f2bccfc419e8d3f023669206e8" shape="plaintext"];
  "sha256:286cda7a99a95805fd7694229d9c65777e83cad7730791ba3ea32a7991f89efd" -> "sha256:9bd5dda7474d7730d1d1e631c0415859b7f6b4abf9e27bf8a6d1b7ca285d2f59" [label=""];
  "sha256:9bd5dda7474d7730d1d1e631c0415859b7f6b4abf9e27bf8a6d1b7ca285d2f59" -> "sha256:9ee2fcbcae771308d21919d6d8f2a5725f9a92f727a0660283d6d330a19530fd" [label=""];
  "sha256:9ee2fcbcae771308d21919d6d8f2a5725f9a92f727a0660283d6d330a19530fd" -> "sha256:11c11423d64fa08e09f0f3dbea7f2cfe6f6e80f2bccfc419e8d3f023669206e8" [label=""];
}

