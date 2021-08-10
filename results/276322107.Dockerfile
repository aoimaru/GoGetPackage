[app/sources/276322107.Dockerfile]
digraph {
  "sha256:542bb4d28577f5ead25d3e9c9fe8f5fd4291317a67d658a106f4eb5a6496ead1" [label="docker-image://docker.io/selenium/node-chrome:latest@sha256:d85b6ccf584edb4e198d7e9b3f05507aa3b4a1a417d5f544fb62c314544637e8" shape="ellipse"];
  "sha256:58e66ecf59f115edf99b276fc1d49211e515ddae8ca1ee7f7036cc5df2a7e3e2" [label="/bin/sh -c apt-get update -qqy   && rm -rf /var/lib/apt/lists/* /var/cache/apt/*   && rm /bin/sh && ln -s /bin/bash /bin/sh   && chown seluser /usr/local" shape="box"];
  "sha256:fc32048e445abd8c60b09efda3d866412f4399a5e6666a60ddc697a083fd0b43" [label="/bin/sh -c wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash   && source $NVM_DIR/nvm.sh   && nvm install v11" shape="box"];
  "sha256:8c5148b42333b07f73ffa79e867ad90b9def904c242279b15bbf882cc050c215" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:c433b780a077e7da7de69ac3ca0403f854b652141e1611649b28aee60a8945d6" [label="sha256:c433b780a077e7da7de69ac3ca0403f854b652141e1611649b28aee60a8945d6" shape="plaintext"];
  "sha256:542bb4d28577f5ead25d3e9c9fe8f5fd4291317a67d658a106f4eb5a6496ead1" -> "sha256:58e66ecf59f115edf99b276fc1d49211e515ddae8ca1ee7f7036cc5df2a7e3e2" [label=""];
  "sha256:58e66ecf59f115edf99b276fc1d49211e515ddae8ca1ee7f7036cc5df2a7e3e2" -> "sha256:fc32048e445abd8c60b09efda3d866412f4399a5e6666a60ddc697a083fd0b43" [label=""];
  "sha256:fc32048e445abd8c60b09efda3d866412f4399a5e6666a60ddc697a083fd0b43" -> "sha256:8c5148b42333b07f73ffa79e867ad90b9def904c242279b15bbf882cc050c215" [label=""];
  "sha256:8c5148b42333b07f73ffa79e867ad90b9def904c242279b15bbf882cc050c215" -> "sha256:c433b780a077e7da7de69ac3ca0403f854b652141e1611649b28aee60a8945d6" [label=""];
}

