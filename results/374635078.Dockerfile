[app/sources/374635078.Dockerfile]
digraph {
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:a9803c19ae97ef05dcea2c1e6a88281f0d9a543df4993c416bd251e4e69daf3d" [label="docker-image://docker.io/library/node:11-alpine" shape="ellipse"];
  "sha256:454e77c6838bbcb1d9ec76997b7e3e71d0c2a32730d53ef27a206cfd7ae41192" [label="/bin/sh -c apk add --no-cache     autoconf     automake     bash     g++     libc6-compat     libjpeg-turbo-dev     libpng-dev     make     nasm" shape="box"];
  "sha256:0586291509d33a41dbe1535b19708a8e0a695e7872f536cf1adf43ba8c6d6b72" [label="local://context" shape="ellipse"];
  "sha256:a6affb6855f0157e6a01ed6d5d00d9981c2c8d82a0bcae3ae5d6d924f7f3ffca" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:dc602c6a54fdf6f05cf7b7f76ba448339880ceef25f86027e4afb16ea510f6e4" [label="/bin/sh -c yarn && yarn build" shape="box"];
  "sha256:f5ad0fb00c3829e961d9388ea9a11a80df03b92747beb051cb4110cc26b70a69" [label="copy{src=/dist, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:a52903e37ad1f5743310c7aa4ea0f16d978ec7079fb298e8d0fafa7360a2ff3b" [label="sha256:a52903e37ad1f5743310c7aa4ea0f16d978ec7079fb298e8d0fafa7360a2ff3b" shape="plaintext"];
  "sha256:a9803c19ae97ef05dcea2c1e6a88281f0d9a543df4993c416bd251e4e69daf3d" -> "sha256:454e77c6838bbcb1d9ec76997b7e3e71d0c2a32730d53ef27a206cfd7ae41192" [label=""];
  "sha256:454e77c6838bbcb1d9ec76997b7e3e71d0c2a32730d53ef27a206cfd7ae41192" -> "sha256:a6affb6855f0157e6a01ed6d5d00d9981c2c8d82a0bcae3ae5d6d924f7f3ffca" [label=""];
  "sha256:0586291509d33a41dbe1535b19708a8e0a695e7872f536cf1adf43ba8c6d6b72" -> "sha256:a6affb6855f0157e6a01ed6d5d00d9981c2c8d82a0bcae3ae5d6d924f7f3ffca" [label=""];
  "sha256:a6affb6855f0157e6a01ed6d5d00d9981c2c8d82a0bcae3ae5d6d924f7f3ffca" -> "sha256:dc602c6a54fdf6f05cf7b7f76ba448339880ceef25f86027e4afb16ea510f6e4" [label=""];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:f5ad0fb00c3829e961d9388ea9a11a80df03b92747beb051cb4110cc26b70a69" [label=""];
  "sha256:dc602c6a54fdf6f05cf7b7f76ba448339880ceef25f86027e4afb16ea510f6e4" -> "sha256:f5ad0fb00c3829e961d9388ea9a11a80df03b92747beb051cb4110cc26b70a69" [label=""];
  "sha256:f5ad0fb00c3829e961d9388ea9a11a80df03b92747beb051cb4110cc26b70a69" -> "sha256:a52903e37ad1f5743310c7aa4ea0f16d978ec7079fb298e8d0fafa7360a2ff3b" [label=""];
}

