[app/sources/444736372.Dockerfile]
digraph {
  "sha256:e8c81ec1f4542209a87b358c667ac3a53f89e526e7ffbc7612519aeea0e4948a" [label="docker-image://docker.io/base/arch:latest" shape="ellipse"];
  "sha256:50db0d554df45798dac35275a1098eedac21483b3b781641663272075e9a0952" [label="/bin/sh -c pacman -Syyu --noconfirm" shape="box"];
  "sha256:38f163813393bef6e395dcf9a503a853f988c7b6e7f759f99e438b8a6ebc8041" [label="/bin/sh -c pacman -Sy --noconfirm python2-setuptools" shape="box"];
  "sha256:df1cf32401a3a5d37038b0d94c7da944a2798bc4ab3b737f1ec81415fcb81e79" [label="/bin/sh -c easy_install-2.7   pep8   pylint   https://github.com/saltstack/salt-testing/archive/develop.tar.gz" shape="box"];
  "sha256:5a4e4872ff3b9cd29c9d8e70897d1e812ddeb90ff46fc5d8b1df754bdacaa35f" [label="local://context" shape="ellipse"];
  "sha256:ae298f00c6b2b70406374f3266ac19cd2bbd4517436e2663b55897b7f3a37cc5" [label="copy{src=/run-salt-lint.sh, dest=/usr/bin/run-salt-lint.sh}" shape="note"];
  "sha256:ee88c357b8fd14e1c3c40c7c74a48cce98e1db7b6ac7104e800dc43282058911" [label="sha256:ee88c357b8fd14e1c3c40c7c74a48cce98e1db7b6ac7104e800dc43282058911" shape="plaintext"];
  "sha256:e8c81ec1f4542209a87b358c667ac3a53f89e526e7ffbc7612519aeea0e4948a" -> "sha256:50db0d554df45798dac35275a1098eedac21483b3b781641663272075e9a0952" [label=""];
  "sha256:50db0d554df45798dac35275a1098eedac21483b3b781641663272075e9a0952" -> "sha256:38f163813393bef6e395dcf9a503a853f988c7b6e7f759f99e438b8a6ebc8041" [label=""];
  "sha256:38f163813393bef6e395dcf9a503a853f988c7b6e7f759f99e438b8a6ebc8041" -> "sha256:df1cf32401a3a5d37038b0d94c7da944a2798bc4ab3b737f1ec81415fcb81e79" [label=""];
  "sha256:df1cf32401a3a5d37038b0d94c7da944a2798bc4ab3b737f1ec81415fcb81e79" -> "sha256:ae298f00c6b2b70406374f3266ac19cd2bbd4517436e2663b55897b7f3a37cc5" [label=""];
  "sha256:5a4e4872ff3b9cd29c9d8e70897d1e812ddeb90ff46fc5d8b1df754bdacaa35f" -> "sha256:ae298f00c6b2b70406374f3266ac19cd2bbd4517436e2663b55897b7f3a37cc5" [label=""];
  "sha256:ae298f00c6b2b70406374f3266ac19cd2bbd4517436e2663b55897b7f3a37cc5" -> "sha256:ee88c357b8fd14e1c3c40c7c74a48cce98e1db7b6ac7104e800dc43282058911" [label=""];
}

