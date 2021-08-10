[app/sources/315864525.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:1bf2058c4e0f1f25cda47a177973235395b5770373876e5f65cbb171cc686d37" [label="local://context" shape="ellipse"];
  "sha256:f9f6d600f52e06d7a815e3f3a1a1cf82c962a450420e67b5b27a70c70aa9cbf2" [label="copy{src=/clean-apt, dest=/usr/bin}" shape="note"];
  "sha256:16c53492ea157b0134a5a7f1e1e9bcd9c02d7c00b4050a8e9a2eae11e013a7f3" [label="copy{src=/clean-install, dest=/usr/bin}" shape="note"];
  "sha256:82fc06c6642e1febed4b4503e1594dbdb571488884d96357607b91d4232e17c5" [label="copy{src=/Gemfile, dest=/Gemfile}" shape="note"];
  "sha256:b89dc613ef46646333ace9197c74bdc84052d4f7a6560064e49f32f54a6aee69" [label="/bin/sh -c BUILD_DEPS=\"make gcc g++ libc6-dev ruby-dev libffi-dev\"     && clean-install $BUILD_DEPS                      ca-certificates                      libjemalloc1                      ruby     && echo 'gem: --no-document' >> /etc/gemrc     && gem install --file Gemfile     && apt-get purge -y --auto-remove                      -o APT::AutoRemove::RecommendsImportant=false                      $BUILD_DEPS     && clean-apt     && ulimit -n 65536" shape="box"];
  "sha256:295b15a1983313b561f7208c2b9a9f25c6601456eb546a79149410afb9bf11a9" [label="copy{src=/fluent.conf, dest=/etc/fluent/fluent.conf}" shape="note"];
  "sha256:0d1b943c5d4180e4e718c051b8e648d0cb19f757244e955de9cae7ec445d70cf" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:daf307dc3c735afb2704e111fcb11a2cbba38d469f23e98521d24d0d0b435440" [label="sha256:daf307dc3c735afb2704e111fcb11a2cbba38d469f23e98521d24d0d0b435440" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:f9f6d600f52e06d7a815e3f3a1a1cf82c962a450420e67b5b27a70c70aa9cbf2" [label=""];
  "sha256:1bf2058c4e0f1f25cda47a177973235395b5770373876e5f65cbb171cc686d37" -> "sha256:f9f6d600f52e06d7a815e3f3a1a1cf82c962a450420e67b5b27a70c70aa9cbf2" [label=""];
  "sha256:f9f6d600f52e06d7a815e3f3a1a1cf82c962a450420e67b5b27a70c70aa9cbf2" -> "sha256:16c53492ea157b0134a5a7f1e1e9bcd9c02d7c00b4050a8e9a2eae11e013a7f3" [label=""];
  "sha256:1bf2058c4e0f1f25cda47a177973235395b5770373876e5f65cbb171cc686d37" -> "sha256:16c53492ea157b0134a5a7f1e1e9bcd9c02d7c00b4050a8e9a2eae11e013a7f3" [label=""];
  "sha256:16c53492ea157b0134a5a7f1e1e9bcd9c02d7c00b4050a8e9a2eae11e013a7f3" -> "sha256:82fc06c6642e1febed4b4503e1594dbdb571488884d96357607b91d4232e17c5" [label=""];
  "sha256:1bf2058c4e0f1f25cda47a177973235395b5770373876e5f65cbb171cc686d37" -> "sha256:82fc06c6642e1febed4b4503e1594dbdb571488884d96357607b91d4232e17c5" [label=""];
  "sha256:82fc06c6642e1febed4b4503e1594dbdb571488884d96357607b91d4232e17c5" -> "sha256:b89dc613ef46646333ace9197c74bdc84052d4f7a6560064e49f32f54a6aee69" [label=""];
  "sha256:b89dc613ef46646333ace9197c74bdc84052d4f7a6560064e49f32f54a6aee69" -> "sha256:295b15a1983313b561f7208c2b9a9f25c6601456eb546a79149410afb9bf11a9" [label=""];
  "sha256:1bf2058c4e0f1f25cda47a177973235395b5770373876e5f65cbb171cc686d37" -> "sha256:295b15a1983313b561f7208c2b9a9f25c6601456eb546a79149410afb9bf11a9" [label=""];
  "sha256:295b15a1983313b561f7208c2b9a9f25c6601456eb546a79149410afb9bf11a9" -> "sha256:0d1b943c5d4180e4e718c051b8e648d0cb19f757244e955de9cae7ec445d70cf" [label=""];
  "sha256:1bf2058c4e0f1f25cda47a177973235395b5770373876e5f65cbb171cc686d37" -> "sha256:0d1b943c5d4180e4e718c051b8e648d0cb19f757244e955de9cae7ec445d70cf" [label=""];
  "sha256:0d1b943c5d4180e4e718c051b8e648d0cb19f757244e955de9cae7ec445d70cf" -> "sha256:daf307dc3c735afb2704e111fcb11a2cbba38d469f23e98521d24d0d0b435440" [label=""];
}

