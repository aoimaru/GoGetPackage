[app/sources/427624820.Dockerfile]
digraph {
  "sha256:31dd201973c375a1dbc7ac81387fb3ba9ecec0b8003d6b97a0bfc57c71bd85d3" [label="docker-image://docker.io/balenalib/raspberrypi3-64-ubuntu:bionic" shape="ellipse"];
  "sha256:25c164e891dabab8e14cc0875af44060718aa3e1bb44f72f266abc52e1ce278c" [label="/bin/sh -c install_packages     make     libc6-dev     clang-3.9     curl     libedit-dev     libpython2.7     libicu-dev     libssl-dev     libxml2     tzdata     git     libcurl4-openssl-dev     pkg-config     && update-alternatives --quiet --install /usr/bin/clang clang /usr/bin/clang-3.9 100     && update-alternatives --quiet --install /usr/bin/clang++ clang++ /usr/bin/clang++-3.9 100" shape="box"];
  "sha256:d304131c7212129312b51839211cbe82355853e5d3af50425157bccb39c22a0d" [label="docker-image://docker.io/balenalib/aarch64-ubuntu:bionic" shape="ellipse"];
  "sha256:f004fbde9b6f5f4f19fc01ff27781568daf80c2c37d009cd4c34f820614b6513" [label="mkdir{path=/swift}" shape="note"];
  "sha256:0fb3209faffa8faf77ebfd66439cc21c24403495bd0be3183647e1df0d4c18a3" [label="/bin/sh -c curl -L -o $TARBALL_FILE $TARBALL_URL     && tar -xvzf $TARBALL_FILE -C /swift     && rm $TARBALL_FILE" shape="box"];
  "sha256:39c09d31ec7fee4d62c735aa2462afb79a90474c765f483a83d4193b61b85ed3" [label="copy{src=/swift, dest=/}" shape="note"];
  "sha256:b1dc69676f105deebdd51d37677753e0056164dc40e34bedb5e124dc2e09662f" [label="/bin/sh -c swift --version" shape="box"];
  "sha256:59155290108db78beb78dca2688caf58606f29fced22be0e159696db42776afc" [label="sha256:59155290108db78beb78dca2688caf58606f29fced22be0e159696db42776afc" shape="plaintext"];
  "sha256:31dd201973c375a1dbc7ac81387fb3ba9ecec0b8003d6b97a0bfc57c71bd85d3" -> "sha256:25c164e891dabab8e14cc0875af44060718aa3e1bb44f72f266abc52e1ce278c" [label=""];
  "sha256:d304131c7212129312b51839211cbe82355853e5d3af50425157bccb39c22a0d" -> "sha256:f004fbde9b6f5f4f19fc01ff27781568daf80c2c37d009cd4c34f820614b6513" [label=""];
  "sha256:f004fbde9b6f5f4f19fc01ff27781568daf80c2c37d009cd4c34f820614b6513" -> "sha256:0fb3209faffa8faf77ebfd66439cc21c24403495bd0be3183647e1df0d4c18a3" [label=""];
  "sha256:25c164e891dabab8e14cc0875af44060718aa3e1bb44f72f266abc52e1ce278c" -> "sha256:39c09d31ec7fee4d62c735aa2462afb79a90474c765f483a83d4193b61b85ed3" [label=""];
  "sha256:0fb3209faffa8faf77ebfd66439cc21c24403495bd0be3183647e1df0d4c18a3" -> "sha256:39c09d31ec7fee4d62c735aa2462afb79a90474c765f483a83d4193b61b85ed3" [label=""];
  "sha256:39c09d31ec7fee4d62c735aa2462afb79a90474c765f483a83d4193b61b85ed3" -> "sha256:b1dc69676f105deebdd51d37677753e0056164dc40e34bedb5e124dc2e09662f" [label=""];
  "sha256:b1dc69676f105deebdd51d37677753e0056164dc40e34bedb5e124dc2e09662f" -> "sha256:59155290108db78beb78dca2688caf58606f29fced22be0e159696db42776afc" [label=""];
}

