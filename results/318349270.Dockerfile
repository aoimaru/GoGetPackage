[app/sources/318349270.Dockerfile]
digraph {
  "sha256:2c26dc439ddcb4a3c54885a8d718312d7e7848757c531d81cfbdcf6fc9a3a36b" [label="local://context" shape="ellipse"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:9542af7a2d6481711418c469306d4844cd80e0fb0745667734ce6dcc6d3f1d29" [label="copy{src=/clean-apt, dest=/usr/bin}" shape="note"];
  "sha256:8240bd4ecfbbdb530e2cd344ff4a221f59d50b3f826b0d2924ea62a49b42df16" [label="copy{src=/clean-install, dest=/usr/bin}" shape="note"];
  "sha256:409515b45abc45e2c3cf003f2cdd8117ba818168b95135ac0cd5ef027a2a8afd" [label="copy{src=/Gemfile, dest=/Gemfile}" shape="note"];
  "sha256:929e2aef5245bd6cfe7d12c89ab316f668917aaace93bf1e0b65190807e8829c" [label="/bin/sh -c BUILD_DEPS=\"make gcc g++ libc6-dev ruby-dev libffi-dev\"     && clean-install $BUILD_DEPS                      ca-certificates                      libjemalloc1                      ruby     && echo 'gem: --no-document' >> /etc/gemrc     && gem install --file Gemfile     && apt-get purge -y --auto-remove                      -o APT::AutoRemove::RecommendsImportant=false                      $BUILD_DEPS     && clean-apt     && ulimit -n 65536" shape="box"];
  "sha256:b4285ee1a956ab29d2448e81c9955df500227240ef107487d4e8301124a7667d" [label="copy{src=/fluent.conf, dest=/etc/fluent/fluent.conf}" shape="note"];
  "sha256:b7d9f608c0ca8ab262d75d23795961d327fdd54f8fe65e2ac8dffe57fb274036" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:5dbb902d1a59bc78dc3ead4b63e5cc1126eca80894604d5583ab698fe2f419b1" [label="sha256:5dbb902d1a59bc78dc3ead4b63e5cc1126eca80894604d5583ab698fe2f419b1" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:9542af7a2d6481711418c469306d4844cd80e0fb0745667734ce6dcc6d3f1d29" [label=""];
  "sha256:2c26dc439ddcb4a3c54885a8d718312d7e7848757c531d81cfbdcf6fc9a3a36b" -> "sha256:9542af7a2d6481711418c469306d4844cd80e0fb0745667734ce6dcc6d3f1d29" [label=""];
  "sha256:9542af7a2d6481711418c469306d4844cd80e0fb0745667734ce6dcc6d3f1d29" -> "sha256:8240bd4ecfbbdb530e2cd344ff4a221f59d50b3f826b0d2924ea62a49b42df16" [label=""];
  "sha256:2c26dc439ddcb4a3c54885a8d718312d7e7848757c531d81cfbdcf6fc9a3a36b" -> "sha256:8240bd4ecfbbdb530e2cd344ff4a221f59d50b3f826b0d2924ea62a49b42df16" [label=""];
  "sha256:8240bd4ecfbbdb530e2cd344ff4a221f59d50b3f826b0d2924ea62a49b42df16" -> "sha256:409515b45abc45e2c3cf003f2cdd8117ba818168b95135ac0cd5ef027a2a8afd" [label=""];
  "sha256:2c26dc439ddcb4a3c54885a8d718312d7e7848757c531d81cfbdcf6fc9a3a36b" -> "sha256:409515b45abc45e2c3cf003f2cdd8117ba818168b95135ac0cd5ef027a2a8afd" [label=""];
  "sha256:409515b45abc45e2c3cf003f2cdd8117ba818168b95135ac0cd5ef027a2a8afd" -> "sha256:929e2aef5245bd6cfe7d12c89ab316f668917aaace93bf1e0b65190807e8829c" [label=""];
  "sha256:929e2aef5245bd6cfe7d12c89ab316f668917aaace93bf1e0b65190807e8829c" -> "sha256:b4285ee1a956ab29d2448e81c9955df500227240ef107487d4e8301124a7667d" [label=""];
  "sha256:2c26dc439ddcb4a3c54885a8d718312d7e7848757c531d81cfbdcf6fc9a3a36b" -> "sha256:b4285ee1a956ab29d2448e81c9955df500227240ef107487d4e8301124a7667d" [label=""];
  "sha256:b4285ee1a956ab29d2448e81c9955df500227240ef107487d4e8301124a7667d" -> "sha256:b7d9f608c0ca8ab262d75d23795961d327fdd54f8fe65e2ac8dffe57fb274036" [label=""];
  "sha256:2c26dc439ddcb4a3c54885a8d718312d7e7848757c531d81cfbdcf6fc9a3a36b" -> "sha256:b7d9f608c0ca8ab262d75d23795961d327fdd54f8fe65e2ac8dffe57fb274036" [label=""];
  "sha256:b7d9f608c0ca8ab262d75d23795961d327fdd54f8fe65e2ac8dffe57fb274036" -> "sha256:5dbb902d1a59bc78dc3ead4b63e5cc1126eca80894604d5583ab698fe2f419b1" [label=""];
}

