[app/sources/344610095.Dockerfile]
digraph {
  "sha256:8cb4185285015c4737fb1c934e9e800384ae597941c596041b6c23e1e78a68fe" [label="docker-image://docker.io/library/debian:buster" shape="ellipse"];
  "sha256:c85d3e418425454c92358aafda9d00332112d8a89593ebca832da9a04e56c736" [label="/bin/sh -c apt-get -yq update && apt-get install -yq --no-install-recommends         build-essential         cmake         coreutils         doxygen         g++         graphviz         libboost-test-dev         libgtest-dev         libpython-dev     && apt-get autoremove -y     && apt-get clean -y" shape="box"];
  "sha256:4116b47b6cbb1f7b7f3f6262d0860537839ef9b90c30075c01640f1e2a484862" [label="local://context" shape="ellipse"];
  "sha256:98dcf0ea80e0ae01875fb27987da83327692dfd6518a3642f4973798bcf3ddb8" [label="copy{src=/, dest=/usr/src/libserial}" shape="note"];
  "sha256:19d3bbea6e593b2363f43dbaf72f3b5765fe71d58671cc9cb4ca1228373621b4" [label="/bin/sh -c cd /usr/src/libserial     && rm -rf build     && mkdir -p build     && cd build     && cmake ..     && make -j$(nproc)     && make install     && chown -R root:root /usr/local" shape="box"];
  "sha256:cc1e099d49836653d3e663aff9f4dfd6d4f2c6721a1bf6df04e0827fed66c398" [label="copy{src=/usr/local, dest=/usr/local}" shape="note"];
  "sha256:0f26332f6c6f059958025c69523fd170140247dcb641dd9604d35f35d03ccac1" [label="sha256:0f26332f6c6f059958025c69523fd170140247dcb641dd9604d35f35d03ccac1" shape="plaintext"];
  "sha256:8cb4185285015c4737fb1c934e9e800384ae597941c596041b6c23e1e78a68fe" -> "sha256:c85d3e418425454c92358aafda9d00332112d8a89593ebca832da9a04e56c736" [label=""];
  "sha256:c85d3e418425454c92358aafda9d00332112d8a89593ebca832da9a04e56c736" -> "sha256:98dcf0ea80e0ae01875fb27987da83327692dfd6518a3642f4973798bcf3ddb8" [label=""];
  "sha256:4116b47b6cbb1f7b7f3f6262d0860537839ef9b90c30075c01640f1e2a484862" -> "sha256:98dcf0ea80e0ae01875fb27987da83327692dfd6518a3642f4973798bcf3ddb8" [label=""];
  "sha256:98dcf0ea80e0ae01875fb27987da83327692dfd6518a3642f4973798bcf3ddb8" -> "sha256:19d3bbea6e593b2363f43dbaf72f3b5765fe71d58671cc9cb4ca1228373621b4" [label=""];
  "sha256:8cb4185285015c4737fb1c934e9e800384ae597941c596041b6c23e1e78a68fe" -> "sha256:cc1e099d49836653d3e663aff9f4dfd6d4f2c6721a1bf6df04e0827fed66c398" [label=""];
  "sha256:19d3bbea6e593b2363f43dbaf72f3b5765fe71d58671cc9cb4ca1228373621b4" -> "sha256:cc1e099d49836653d3e663aff9f4dfd6d4f2c6721a1bf6df04e0827fed66c398" [label=""];
  "sha256:cc1e099d49836653d3e663aff9f4dfd6d4f2c6721a1bf6df04e0827fed66c398" -> "sha256:0f26332f6c6f059958025c69523fd170140247dcb641dd9604d35f35d03ccac1" [label=""];
}

