[app/sources/241387236.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:5d3f33c9ae158324368df6f1094933ad349d182aedcb48d4aa4d3c7b8039f82c" [label="https://github.com/gohugoio/hugo/releases/download/v0.40.3/hugo_0.40.3_Linux-64bit.tar.gz" shape="ellipse"];
  "sha256:e9f64e663b20d96526d6bac0c54b32738b42fc72c64a87b871dbaf4fff02ad46" [label="copy{src=/hugo_0.40.3_Linux-64bit.tar.gz, dest=/tmp/hugo.tar.gz}" shape="note"];
  "sha256:2f0d1355de36d393d68188b040bd22c999dd4877d69d6d0cf9d40c6a80bf07c0" [label="/bin/sh -c tar -xzvf /tmp/hugo.tar.gz -C /tmp && cp /tmp/hugo /bin/hugo && chmod +x /bin/hugo && rm -r /tmp/hugo*" shape="box"];
  "sha256:1d03163ceb939d1c6eb5112b9ea3dedd1a3388e06f8dc5a0fd773d20e1d83fac" [label="sha256:1d03163ceb939d1c6eb5112b9ea3dedd1a3388e06f8dc5a0fd773d20e1d83fac" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:e9f64e663b20d96526d6bac0c54b32738b42fc72c64a87b871dbaf4fff02ad46" [label=""];
  "sha256:5d3f33c9ae158324368df6f1094933ad349d182aedcb48d4aa4d3c7b8039f82c" -> "sha256:e9f64e663b20d96526d6bac0c54b32738b42fc72c64a87b871dbaf4fff02ad46" [label=""];
  "sha256:e9f64e663b20d96526d6bac0c54b32738b42fc72c64a87b871dbaf4fff02ad46" -> "sha256:2f0d1355de36d393d68188b040bd22c999dd4877d69d6d0cf9d40c6a80bf07c0" [label=""];
  "sha256:2f0d1355de36d393d68188b040bd22c999dd4877d69d6d0cf9d40c6a80bf07c0" -> "sha256:1d03163ceb939d1c6eb5112b9ea3dedd1a3388e06f8dc5a0fd773d20e1d83fac" [label=""];
}

