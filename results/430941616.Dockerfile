[app/sources/430941616.Dockerfile]
digraph {
  "sha256:38ea7483280d22997e6378b6c27458de44b71967dde99d53150eb2e024c1ccf8" [label="docker-image://docker.io/hepsw/slc-base:latest" shape="ellipse"];
  "sha256:5607542bfdf635b06000589edcd4153badd141770416d03ac47b18df64d21a00" [label="/bin/sh -c yum install -y     autoconf automake     bash-completion     binutils-devel bzip2-devel bzip2     file     gcc gcc-c++ git glibc-devel glibc-static     libtool libXpm-devel libXft-devel libXext-devel     m4 make     ncurses-devel     patch     readline readline-devel     tar texinfo     which" shape="box"];
  "sha256:4bba1d75e7f63811edf9b345c63f54a6e15e521b5c7372843764f1c080f64843" [label="/bin/sh -c curl -L http://golang.org/dl/go1.4.2.linux-amd64.tar.gz |     tar -C /usr/local -zxf -" shape="box"];
  "sha256:7755bf1b06f8cc9cab7d8c9715d78363724201021c0104027cb6a8f4b1d452a1" [label="/bin/sh -c go version" shape="box"];
  "sha256:ad6690d911db7c6abeb8762f5f85cb6c2060048f4864ac30d2c24a31e83c19f1" [label="local://context" shape="ellipse"];
  "sha256:b94e0b971ba4ebc716ba2dcb16a68735c95ba0574b010146388e27aecab24f3e" [label="copy{src=/dot-pythonrc.py, dest=/.pythonrc.py}" shape="note"];
  "sha256:e7d45ae8470ee43835989d7d1e04e466ccb82128c46cd5d31d7de8006247d5c4" [label="copy{src=/dot-bashrc, dest=/.bashrc}" shape="note"];
  "sha256:edc69cb708fc7461be46a864a0d4a7d1d830c6621ffea43ea02ba0dedcf9d3ed" [label="sha256:edc69cb708fc7461be46a864a0d4a7d1d830c6621ffea43ea02ba0dedcf9d3ed" shape="plaintext"];
  "sha256:38ea7483280d22997e6378b6c27458de44b71967dde99d53150eb2e024c1ccf8" -> "sha256:5607542bfdf635b06000589edcd4153badd141770416d03ac47b18df64d21a00" [label=""];
  "sha256:5607542bfdf635b06000589edcd4153badd141770416d03ac47b18df64d21a00" -> "sha256:4bba1d75e7f63811edf9b345c63f54a6e15e521b5c7372843764f1c080f64843" [label=""];
  "sha256:4bba1d75e7f63811edf9b345c63f54a6e15e521b5c7372843764f1c080f64843" -> "sha256:7755bf1b06f8cc9cab7d8c9715d78363724201021c0104027cb6a8f4b1d452a1" [label=""];
  "sha256:7755bf1b06f8cc9cab7d8c9715d78363724201021c0104027cb6a8f4b1d452a1" -> "sha256:b94e0b971ba4ebc716ba2dcb16a68735c95ba0574b010146388e27aecab24f3e" [label=""];
  "sha256:ad6690d911db7c6abeb8762f5f85cb6c2060048f4864ac30d2c24a31e83c19f1" -> "sha256:b94e0b971ba4ebc716ba2dcb16a68735c95ba0574b010146388e27aecab24f3e" [label=""];
  "sha256:b94e0b971ba4ebc716ba2dcb16a68735c95ba0574b010146388e27aecab24f3e" -> "sha256:e7d45ae8470ee43835989d7d1e04e466ccb82128c46cd5d31d7de8006247d5c4" [label=""];
  "sha256:ad6690d911db7c6abeb8762f5f85cb6c2060048f4864ac30d2c24a31e83c19f1" -> "sha256:e7d45ae8470ee43835989d7d1e04e466ccb82128c46cd5d31d7de8006247d5c4" [label=""];
  "sha256:e7d45ae8470ee43835989d7d1e04e466ccb82128c46cd5d31d7de8006247d5c4" -> "sha256:edc69cb708fc7461be46a864a0d4a7d1d830c6621ffea43ea02ba0dedcf9d3ed" [label=""];
}

