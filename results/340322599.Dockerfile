[app/sources/340322599.Dockerfile]
digraph {
  "sha256:b37972f33109dbb8b4daac693969f672a9008e11e7ce7b058e49eddf91ea5b8d" [label="docker-image://docker.io/library/ubuntu:vivid" shape="ellipse"];
  "sha256:62691cf1d669e3ee7acdbffdb01c60a62cd48f059420ac961343c5f98a783ccc" [label="/bin/sh -c apt-get update &&     apt-get install -y git                     libpam0g-dev                     libcairo2-dev                     libxcb*                     libxkbcommon*                     libev-dev &&     apt-get clean &&     git clone https://github.com/Lixxia/i3lock.git &&     cd i3lock &&     make" shape="box"];
  "sha256:641191c0fec5646cea90bc346f170fa6e8e0be1668ad13e0e2ef511c2486a938" [label="sha256:641191c0fec5646cea90bc346f170fa6e8e0be1668ad13e0e2ef511c2486a938" shape="plaintext"];
  "sha256:b37972f33109dbb8b4daac693969f672a9008e11e7ce7b058e49eddf91ea5b8d" -> "sha256:62691cf1d669e3ee7acdbffdb01c60a62cd48f059420ac961343c5f98a783ccc" [label=""];
  "sha256:62691cf1d669e3ee7acdbffdb01c60a62cd48f059420ac961343c5f98a783ccc" -> "sha256:641191c0fec5646cea90bc346f170fa6e8e0be1668ad13e0e2ef511c2486a938" [label=""];
}

