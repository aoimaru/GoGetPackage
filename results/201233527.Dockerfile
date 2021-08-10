[app/sources/201233527.Dockerfile]
digraph {
  "sha256:26618c2d78ff0b02685a93c924db49d044ad54b3fe9500729f43a126c8c554fe" [label="local://context" shape="ellipse"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:64593e2f018f489f800204422fead2807d8c76a36d5ba824211ac31482c51ee4" [label="copy{src=/clean-apt, dest=/usr/bin}" shape="note"];
  "sha256:372adcc06fe1aaa10df61e7f0692c10c389ada83da42653f18d791b0cc3534ec" [label="copy{src=/clean-install, dest=/usr/bin}" shape="note"];
  "sha256:c54de525bc0171b7946a1d9a5be2a6b311abc24326f308e6c4ec9212b61ef0e4" [label="copy{src=/Gemfile, dest=/Gemfile}" shape="note"];
  "sha256:ca330427a9a93345a128c37c7df998e243f99296325357ce7fe7e0e8251829ff" [label="/bin/sh -c BUILD_DEPS=\"make gcc g++ libc6-dev ruby-dev libffi-dev\"     && clean-install $BUILD_DEPS                      ca-certificates                      libjemalloc1                      ruby     && echo 'gem: --no-document' >> /etc/gemrc     && gem install --file Gemfile     && apt-get purge -y --auto-remove                      -o APT::AutoRemove::RecommendsImportant=false                      $BUILD_DEPS     && clean-apt     && ulimit -n 65536" shape="box"];
  "sha256:4d40c203b7924b9502fbbdc1a1d40406f5fc469e5d466631c0f43889d2f02f79" [label="copy{src=/fluent.conf, dest=/etc/fluent/fluent.conf}" shape="note"];
  "sha256:8490ef158cde73480cb2238bcce28094f87529781e21c7a7ccf3ae26bcb9120f" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:e1645b0d36247af4526422feef48e6d138201b7ae6e783246a715c098c415f08" [label="sha256:e1645b0d36247af4526422feef48e6d138201b7ae6e783246a715c098c415f08" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:64593e2f018f489f800204422fead2807d8c76a36d5ba824211ac31482c51ee4" [label=""];
  "sha256:26618c2d78ff0b02685a93c924db49d044ad54b3fe9500729f43a126c8c554fe" -> "sha256:64593e2f018f489f800204422fead2807d8c76a36d5ba824211ac31482c51ee4" [label=""];
  "sha256:64593e2f018f489f800204422fead2807d8c76a36d5ba824211ac31482c51ee4" -> "sha256:372adcc06fe1aaa10df61e7f0692c10c389ada83da42653f18d791b0cc3534ec" [label=""];
  "sha256:26618c2d78ff0b02685a93c924db49d044ad54b3fe9500729f43a126c8c554fe" -> "sha256:372adcc06fe1aaa10df61e7f0692c10c389ada83da42653f18d791b0cc3534ec" [label=""];
  "sha256:372adcc06fe1aaa10df61e7f0692c10c389ada83da42653f18d791b0cc3534ec" -> "sha256:c54de525bc0171b7946a1d9a5be2a6b311abc24326f308e6c4ec9212b61ef0e4" [label=""];
  "sha256:26618c2d78ff0b02685a93c924db49d044ad54b3fe9500729f43a126c8c554fe" -> "sha256:c54de525bc0171b7946a1d9a5be2a6b311abc24326f308e6c4ec9212b61ef0e4" [label=""];
  "sha256:c54de525bc0171b7946a1d9a5be2a6b311abc24326f308e6c4ec9212b61ef0e4" -> "sha256:ca330427a9a93345a128c37c7df998e243f99296325357ce7fe7e0e8251829ff" [label=""];
  "sha256:ca330427a9a93345a128c37c7df998e243f99296325357ce7fe7e0e8251829ff" -> "sha256:4d40c203b7924b9502fbbdc1a1d40406f5fc469e5d466631c0f43889d2f02f79" [label=""];
  "sha256:26618c2d78ff0b02685a93c924db49d044ad54b3fe9500729f43a126c8c554fe" -> "sha256:4d40c203b7924b9502fbbdc1a1d40406f5fc469e5d466631c0f43889d2f02f79" [label=""];
  "sha256:4d40c203b7924b9502fbbdc1a1d40406f5fc469e5d466631c0f43889d2f02f79" -> "sha256:8490ef158cde73480cb2238bcce28094f87529781e21c7a7ccf3ae26bcb9120f" [label=""];
  "sha256:26618c2d78ff0b02685a93c924db49d044ad54b3fe9500729f43a126c8c554fe" -> "sha256:8490ef158cde73480cb2238bcce28094f87529781e21c7a7ccf3ae26bcb9120f" [label=""];
  "sha256:8490ef158cde73480cb2238bcce28094f87529781e21c7a7ccf3ae26bcb9120f" -> "sha256:e1645b0d36247af4526422feef48e6d138201b7ae6e783246a715c098c415f08" [label=""];
}

