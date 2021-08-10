[app/sources/348168351.Dockerfile]
digraph {
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" [label="docker-image://docker.io/library/ubuntu:16.04@sha256:6a3ac136b6ca623d6a6fa20a7622f098b2fae1ac05f0114386ef439d8ca89a4a" shape="ellipse"];
  "sha256:d3d3a2faaab2954b66d5e1d2c57103f17c7e7f84eb9239e78ce4b79983fd3354" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tg++ \t\tgcc \t\tgit \t\tlibc6-dev \t\tmake \t\tpython3 \t\trpm \t\truby-dev         ruby         rubygems         build-essential         libffi-dev" shape="box"];
  "sha256:aa81982cffa7d16b3ad512eab1d115cc53c8b918c290128de379d8f1b1d8c0bd" [label="/bin/sh -c gem install fpm" shape="box"];
  "sha256:089e6f8a0a0724cf045b3f3c507f33ce0e2dec8571c11b47530c8ca8a6bd862e" [label="local://context" shape="ellipse"];
  "sha256:3f22cef21311b2d6cc2ab69f234c30ba18899e185cb74b2f533e020d1e3321d6" [label="copy{src=/package_build.py, dest=/usr/bin/package_build}" shape="note"];
  "sha256:48b900ca0b137bcabeb4ae11fa27eb7391848c106363b842b8d38a6909c71fe4" [label="/bin/sh -c chmod +x /usr/bin/package_build" shape="box"];
  "sha256:cd24ddde610fe9a224c547cee824574c6acb4054a890c1a40139406e2674216d" [label="mkdir{path=/opt/microservice}" shape="note"];
  "sha256:1d2c48543c6d4da1964175a59ce13d29a1ff6d4b74b1828ba299b5de984fc9b5" [label="sha256:1d2c48543c6d4da1964175a59ce13d29a1ff6d4b74b1828ba299b5de984fc9b5" shape="plaintext"];
  "sha256:6a992accf2379ea0277bf4c912f91bb7ad8a7faa1d1423537beadfb4cc61b0b4" -> "sha256:d3d3a2faaab2954b66d5e1d2c57103f17c7e7f84eb9239e78ce4b79983fd3354" [label=""];
  "sha256:d3d3a2faaab2954b66d5e1d2c57103f17c7e7f84eb9239e78ce4b79983fd3354" -> "sha256:aa81982cffa7d16b3ad512eab1d115cc53c8b918c290128de379d8f1b1d8c0bd" [label=""];
  "sha256:aa81982cffa7d16b3ad512eab1d115cc53c8b918c290128de379d8f1b1d8c0bd" -> "sha256:3f22cef21311b2d6cc2ab69f234c30ba18899e185cb74b2f533e020d1e3321d6" [label=""];
  "sha256:089e6f8a0a0724cf045b3f3c507f33ce0e2dec8571c11b47530c8ca8a6bd862e" -> "sha256:3f22cef21311b2d6cc2ab69f234c30ba18899e185cb74b2f533e020d1e3321d6" [label=""];
  "sha256:3f22cef21311b2d6cc2ab69f234c30ba18899e185cb74b2f533e020d1e3321d6" -> "sha256:48b900ca0b137bcabeb4ae11fa27eb7391848c106363b842b8d38a6909c71fe4" [label=""];
  "sha256:48b900ca0b137bcabeb4ae11fa27eb7391848c106363b842b8d38a6909c71fe4" -> "sha256:cd24ddde610fe9a224c547cee824574c6acb4054a890c1a40139406e2674216d" [label=""];
  "sha256:cd24ddde610fe9a224c547cee824574c6acb4054a890c1a40139406e2674216d" -> "sha256:1d2c48543c6d4da1964175a59ce13d29a1ff6d4b74b1828ba299b5de984fc9b5" [label=""];
}

