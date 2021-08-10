[app/sources/456881990.Dockerfile]
digraph {
  "sha256:39fb4d423854eb2e0f5c0fce305410e54dd3d2c77c5b6e1e99b0f7bf5d65d72e" [label="local://context" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:2d547296b4e88620494be998c4559986704df7231378dcec1590489c11986f7a" [label="/bin/sh -c apt-get update && apt-get install -y build-essential     sudo     gcc     g++     libboost-all-dev     libprotobuf-dev     protobuf-compiler     clang-3.6     clang-format-3.6     ninja-build     wget     git     nano     libsnappy-dev     autoconf     autogen     libtool     libgtest-dev     libleveldb-dev     && apt-get clean     && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:cb31dbb195ae769f2f2a90f85d5b9c8b3bd41659da5a9ab5268ef1b980bc50f1" [label="copy{src=/docker_setup.sh, dest=/usr/src/docker_setup.sh}" shape="note"];
  "sha256:1bb69a564321a27830a18a1ad0c13e3a92433f4c6a6fe3258acf539a463be419" [label="/bin/sh -c chmod +x /usr/src/docker_setup.sh" shape="box"];
  "sha256:9317519682a602f7cc243dad80ef395dad03d21db5077765c4f4f185fc59b262" [label="sha256:9317519682a602f7cc243dad80ef395dad03d21db5077765c4f4f185fc59b262" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:2d547296b4e88620494be998c4559986704df7231378dcec1590489c11986f7a" [label=""];
  "sha256:2d547296b4e88620494be998c4559986704df7231378dcec1590489c11986f7a" -> "sha256:cb31dbb195ae769f2f2a90f85d5b9c8b3bd41659da5a9ab5268ef1b980bc50f1" [label=""];
  "sha256:39fb4d423854eb2e0f5c0fce305410e54dd3d2c77c5b6e1e99b0f7bf5d65d72e" -> "sha256:cb31dbb195ae769f2f2a90f85d5b9c8b3bd41659da5a9ab5268ef1b980bc50f1" [label=""];
  "sha256:cb31dbb195ae769f2f2a90f85d5b9c8b3bd41659da5a9ab5268ef1b980bc50f1" -> "sha256:1bb69a564321a27830a18a1ad0c13e3a92433f4c6a6fe3258acf539a463be419" [label=""];
  "sha256:1bb69a564321a27830a18a1ad0c13e3a92433f4c6a6fe3258acf539a463be419" -> "sha256:9317519682a602f7cc243dad80ef395dad03d21db5077765c4f4f185fc59b262" [label=""];
}

