[app/sources/345356073.Dockerfile]
digraph {
  "sha256:40a9622196f1e3669ff717d85a203f17d5e97d9d3c48e423f445fcdc3aa95c07" [label="docker-image://docker.io/balenalib/armv7hf-ubuntu:artful-build" shape="ellipse"];
  "sha256:23308d8ce799db0736ef0170baa157708c023758be2bf08647a3360c0b88d567" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tless \t\tkmod \t\tnano \t\tnet-tools \t\tifupdown \t\tiputils-ping \t\ti2c-tools \t\tusbutils \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a1ccac5869bb53518aa9a06cd9815f5d48d38e25d3d450bd61f6cfb0d09cfbc9" [label="sha256:a1ccac5869bb53518aa9a06cd9815f5d48d38e25d3d450bd61f6cfb0d09cfbc9" shape="plaintext"];
  "sha256:40a9622196f1e3669ff717d85a203f17d5e97d9d3c48e423f445fcdc3aa95c07" -> "sha256:23308d8ce799db0736ef0170baa157708c023758be2bf08647a3360c0b88d567" [label=""];
  "sha256:23308d8ce799db0736ef0170baa157708c023758be2bf08647a3360c0b88d567" -> "sha256:a1ccac5869bb53518aa9a06cd9815f5d48d38e25d3d450bd61f6cfb0d09cfbc9" [label=""];
}

