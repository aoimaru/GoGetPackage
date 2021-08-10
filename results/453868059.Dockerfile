[app/sources/453868059.Dockerfile]
digraph {
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" [label="docker-image://docker.io/library/debian:latest" shape="ellipse"];
  "sha256:c519b3551e5d5327b9a0fc1a5860091fe98cf4c74db6914afeff0bc79ae86c6c" [label="/bin/sh -c apt-get update &&     echo install avocado def packages &&     apt-get install -y --no-install-recommends \t    git \t    rsync \t    make \t    gdebi-core \t    pkg-config \t    libvirt-dev \t    python-dev \t    python-lzma \t    python-pip \t    python-pystache \t    python-setuptools \t    python-stevedore  \t    python-yaml &&     echo install extra avocado packages &&     apt-get install -y --no-install-recommends \t    ansible \t    emacs-nox \t    pigz \t    libzip2 \t    pxz &&     ln -f /usr/bin/pigz  /bin/gzip &&     ln -f /usr/bin/pigz  /usr/bin/gzip &&     echo install kernel-devel packages &&     apt-get install -y --no-install-recommends \t    build-essential \t    guilt \t    bc \t    flex \t    bison \t    libc6-dev \t    libelf-dev \t    libnuma-dev \t    liblzma-dev &&     echo \"Cleanup\" &&     apt-get clean &&     rm -rf        /usr/share/doc /usr/share/doc-base        /usr/share/man /usr/share/locale /usr/share/zoneinfo" shape="box"];
  "sha256:20a5cc06300f7a523a8b80bb89b1ae6d059c78215ba342ee21e8d192ab59d7e3" [label="local://context" shape="ellipse"];
  "sha256:5f5ffe08f6c3183b1a8afb17ae479dda2dadfe7ad39a990a12a627c98c241202" [label="copy{src=/, dest=/devel/avocado-framework/avocado}" shape="note"];
  "sha256:3ddf05071587d652d9a5d7b764cf33c34cd7f2343fa7ebdf290eb6b3e137fd98" [label="/bin/sh -c cd /devel/avocado-framework/avocado &&     make requirements &&     make install &&     mkdir -p /usr/share/avocado/data/cache &&     git config --global user.email \"avocado@localhost\" &&     git config --global user.name \"Avocado tool\" &&     rm -rf /devel/avocado-framework/avocado" shape="box"];
  "sha256:23104708b0a9985c838c91c02b1dc4a97cedbb81d48224ed5dcc85aa4f12053d" [label="sha256:23104708b0a9985c838c91c02b1dc4a97cedbb81d48224ed5dcc85aa4f12053d" shape="plaintext"];
  "sha256:3ee9b3c4343dde8f0f57d187258862a4d8d040e3c42b6b56ba4e57d5da3e0c2a" -> "sha256:c519b3551e5d5327b9a0fc1a5860091fe98cf4c74db6914afeff0bc79ae86c6c" [label=""];
  "sha256:c519b3551e5d5327b9a0fc1a5860091fe98cf4c74db6914afeff0bc79ae86c6c" -> "sha256:5f5ffe08f6c3183b1a8afb17ae479dda2dadfe7ad39a990a12a627c98c241202" [label=""];
  "sha256:20a5cc06300f7a523a8b80bb89b1ae6d059c78215ba342ee21e8d192ab59d7e3" -> "sha256:5f5ffe08f6c3183b1a8afb17ae479dda2dadfe7ad39a990a12a627c98c241202" [label=""];
  "sha256:5f5ffe08f6c3183b1a8afb17ae479dda2dadfe7ad39a990a12a627c98c241202" -> "sha256:3ddf05071587d652d9a5d7b764cf33c34cd7f2343fa7ebdf290eb6b3e137fd98" [label=""];
  "sha256:3ddf05071587d652d9a5d7b764cf33c34cd7f2343fa7ebdf290eb6b3e137fd98" -> "sha256:23104708b0a9985c838c91c02b1dc4a97cedbb81d48224ed5dcc85aa4f12053d" [label=""];
}

