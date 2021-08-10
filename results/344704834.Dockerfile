[app/sources/344704834.Dockerfile]
digraph {
  "sha256:d43cf5bd2a2615cf5918bb36816b65c1ea073f6d79750f5c7fc728f5b8b1c772" [label="docker-image://docker.io/concourse/static-golang:latest" shape="ellipse"];
  "sha256:2ca509aa76e8d321a06a1c6ef73c5de1d596119253d9ccf45be054b5f83d4e9a" [label="http://stedolan.github.io/jq/download/linux64/jq" shape="ellipse"];
  "sha256:5ebceed3b554dc39a85d9d6f28cea75b1f9415bfa0238e22041adff82ee3bb3a" [label="copy{src=/jq, dest=/usr/local/bin/jq}" shape="note"];
  "sha256:5a20cb6719802e869581ec270a8a6b2622da3c361d2e1cab735ae563dab62c26" [label="/bin/sh -c chmod +x /usr/local/bin/jq" shape="box"];
  "sha256:6d2e4c83ed17c30f12c9d695c0f1e2ffda00631e14a241bf7a4085e0610c264e" [label="/bin/sh -c apt-get update && apt-get install -y zlib1g-dev gettext" shape="box"];
  "sha256:8ccb15579bc8baaf556dffef624a2ac8ff484ce7727e568b56717011a1b6afac" [label="https://www.kernel.org/pub/software/scm/git/git-2.4.3.tar.gz" shape="ellipse"];
  "sha256:7485300a9f0cb66bcd187a8816079419e6ca49650a49093f733ec8de6e9e48ba" [label="copy{src=/git-2.4.3.tar.gz, dest=/git/}" shape="note"];
  "sha256:62d531c0548f0f37de709a779cffcaee747e42feac7bf94cd9e472ffa8078e6d" [label="/bin/sh -c cd /git && tar xvf git-2.4.3.tar.gz && cd git-2.4.3 &&   ./configure --without-tcltk &&   make &&   make install" shape="box"];
  "sha256:116b99d3704ea9a0585deb5d7993b888f9fa13b233e3187bdd04f457f0c62495" [label="sha256:116b99d3704ea9a0585deb5d7993b888f9fa13b233e3187bdd04f457f0c62495" shape="plaintext"];
  "sha256:d43cf5bd2a2615cf5918bb36816b65c1ea073f6d79750f5c7fc728f5b8b1c772" -> "sha256:5ebceed3b554dc39a85d9d6f28cea75b1f9415bfa0238e22041adff82ee3bb3a" [label=""];
  "sha256:2ca509aa76e8d321a06a1c6ef73c5de1d596119253d9ccf45be054b5f83d4e9a" -> "sha256:5ebceed3b554dc39a85d9d6f28cea75b1f9415bfa0238e22041adff82ee3bb3a" [label=""];
  "sha256:5ebceed3b554dc39a85d9d6f28cea75b1f9415bfa0238e22041adff82ee3bb3a" -> "sha256:5a20cb6719802e869581ec270a8a6b2622da3c361d2e1cab735ae563dab62c26" [label=""];
  "sha256:5a20cb6719802e869581ec270a8a6b2622da3c361d2e1cab735ae563dab62c26" -> "sha256:6d2e4c83ed17c30f12c9d695c0f1e2ffda00631e14a241bf7a4085e0610c264e" [label=""];
  "sha256:6d2e4c83ed17c30f12c9d695c0f1e2ffda00631e14a241bf7a4085e0610c264e" -> "sha256:7485300a9f0cb66bcd187a8816079419e6ca49650a49093f733ec8de6e9e48ba" [label=""];
  "sha256:8ccb15579bc8baaf556dffef624a2ac8ff484ce7727e568b56717011a1b6afac" -> "sha256:7485300a9f0cb66bcd187a8816079419e6ca49650a49093f733ec8de6e9e48ba" [label=""];
  "sha256:7485300a9f0cb66bcd187a8816079419e6ca49650a49093f733ec8de6e9e48ba" -> "sha256:62d531c0548f0f37de709a779cffcaee747e42feac7bf94cd9e472ffa8078e6d" [label=""];
  "sha256:62d531c0548f0f37de709a779cffcaee747e42feac7bf94cd9e472ffa8078e6d" -> "sha256:116b99d3704ea9a0585deb5d7993b888f9fa13b233e3187bdd04f457f0c62495" [label=""];
}

