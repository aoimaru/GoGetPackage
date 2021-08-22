[app/sub_sources/128535610.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:a9a4d8a65b0980f57e3a04c6e645654937bf0d00958e0194357bbce27cb7242c" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends   g++   make   file   curl   ca-certificates   python   git   cmake   sudo   gdb   xz-utils" shape="box"];
  "sha256:32b6f34a3f6d970ff3faef0e861da0f4ec43ee6c9a36bd803a8ab81bf0e6af1b" [label="local://context" shape="ellipse"];
  "sha256:5f833610646a02317ee8caf26f474119c58ef5ed812cf82d5f327a4bdfb73cd1" [label="copy{src=/scripts/emscripten.sh, dest=/scripts/}" shape="note"];
  "sha256:884a55bd76cb3682b6e725dacbadff52cd95dc2a5689dbf8b6dd7fca8ec1b073" [label="/bin/sh -c bash /scripts/emscripten.sh" shape="box"];
  "sha256:15f68527084f2c65088ebd7b7a4087055eb11af851c9414f4706329b6a11a7d3" [label="copy{src=/scripts/sccache.sh, dest=/scripts/}" shape="note"];
  "sha256:606f15df06a27ae89924989fc1fd1408ec3b00cbbc3371cc5dd752f563ef2d91" [label="/bin/sh -c sh /scripts/sccache.sh" shape="box"];
  "sha256:5beafcff20a8e738c9c8a6cacc3ef1cc8ac8cd652b4a3cfcc6e891aafe6da981" [label="sha256:5beafcff20a8e738c9c8a6cacc3ef1cc8ac8cd652b4a3cfcc6e891aafe6da981" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:a9a4d8a65b0980f57e3a04c6e645654937bf0d00958e0194357bbce27cb7242c" [label=""];
  "sha256:a9a4d8a65b0980f57e3a04c6e645654937bf0d00958e0194357bbce27cb7242c" -> "sha256:5f833610646a02317ee8caf26f474119c58ef5ed812cf82d5f327a4bdfb73cd1" [label=""];
  "sha256:32b6f34a3f6d970ff3faef0e861da0f4ec43ee6c9a36bd803a8ab81bf0e6af1b" -> "sha256:5f833610646a02317ee8caf26f474119c58ef5ed812cf82d5f327a4bdfb73cd1" [label=""];
  "sha256:5f833610646a02317ee8caf26f474119c58ef5ed812cf82d5f327a4bdfb73cd1" -> "sha256:884a55bd76cb3682b6e725dacbadff52cd95dc2a5689dbf8b6dd7fca8ec1b073" [label=""];
  "sha256:884a55bd76cb3682b6e725dacbadff52cd95dc2a5689dbf8b6dd7fca8ec1b073" -> "sha256:15f68527084f2c65088ebd7b7a4087055eb11af851c9414f4706329b6a11a7d3" [label=""];
  "sha256:32b6f34a3f6d970ff3faef0e861da0f4ec43ee6c9a36bd803a8ab81bf0e6af1b" -> "sha256:15f68527084f2c65088ebd7b7a4087055eb11af851c9414f4706329b6a11a7d3" [label=""];
  "sha256:15f68527084f2c65088ebd7b7a4087055eb11af851c9414f4706329b6a11a7d3" -> "sha256:606f15df06a27ae89924989fc1fd1408ec3b00cbbc3371cc5dd752f563ef2d91" [label=""];
  "sha256:606f15df06a27ae89924989fc1fd1408ec3b00cbbc3371cc5dd752f563ef2d91" -> "sha256:5beafcff20a8e738c9c8a6cacc3ef1cc8ac8cd652b4a3cfcc6e891aafe6da981" [label=""];
}

