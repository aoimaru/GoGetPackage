[app/sources/164190826.Dockerfile]
digraph {
  "sha256:f097f89ec667dbe4683ac3612984141d79c7e92db711688fc9128f77ddb5e04d" [label="docker-image://docker.io/boot2docker/boot2docker:latest" shape="ellipse"];
  "sha256:54863b727d4301b8ff1cf7ec14d35f6eb910f72051342e4ce734c623d06c4870" [label="local://context" shape="ellipse"];
  "sha256:5244a7e5935e6faf79e9591450b7b16ed71e98bf02d7d7eddddb81bf7bc48b1d" [label="copy{src=/automount-shares, dest=/tmp/automount-shares}" shape="note"];
  "sha256:e214b7b5b6e1ffc96577f559d58ccff344186399bff00f88febd55198792c1c1" [label="/bin/sh -c rm $ROOTFS/etc/rc.d/automount-shares && cp /tmp/automount-shares $ROOTFS/etc/rc.d/automount-shares" shape="box"];
  "sha256:2eb5bec0b9112d7c5886b1f2077055f1b6ad9b0eeffa816b2631012b68faac2d" [label="/bin/sh -c /make_iso.sh" shape="box"];
  "sha256:420180a47405d4bdb309dea7ae535309972a93587517800fd5673c07eccbcd3b" [label="sha256:420180a47405d4bdb309dea7ae535309972a93587517800fd5673c07eccbcd3b" shape="plaintext"];
  "sha256:f097f89ec667dbe4683ac3612984141d79c7e92db711688fc9128f77ddb5e04d" -> "sha256:5244a7e5935e6faf79e9591450b7b16ed71e98bf02d7d7eddddb81bf7bc48b1d" [label=""];
  "sha256:54863b727d4301b8ff1cf7ec14d35f6eb910f72051342e4ce734c623d06c4870" -> "sha256:5244a7e5935e6faf79e9591450b7b16ed71e98bf02d7d7eddddb81bf7bc48b1d" [label=""];
  "sha256:5244a7e5935e6faf79e9591450b7b16ed71e98bf02d7d7eddddb81bf7bc48b1d" -> "sha256:e214b7b5b6e1ffc96577f559d58ccff344186399bff00f88febd55198792c1c1" [label=""];
  "sha256:e214b7b5b6e1ffc96577f559d58ccff344186399bff00f88febd55198792c1c1" -> "sha256:2eb5bec0b9112d7c5886b1f2077055f1b6ad9b0eeffa816b2631012b68faac2d" [label=""];
  "sha256:2eb5bec0b9112d7c5886b1f2077055f1b6ad9b0eeffa816b2631012b68faac2d" -> "sha256:420180a47405d4bdb309dea7ae535309972a93587517800fd5673c07eccbcd3b" [label=""];
}

