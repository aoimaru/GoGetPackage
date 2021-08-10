[app/sources/283330616.Dockerfile]
digraph {
  "sha256:68bb04c5c85e9039df128576a21668b1937ea553175b741926e896440926c821" [label="local://context" shape="ellipse"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:124f2080bb6a73e8408ed3041c42d68ce123d568968ad7e24d8a09c597d8a50a" [label="copy{src=/clean-apt, dest=/usr/bin}" shape="note"];
  "sha256:ed2f9219f9ae6ddfc87daab401bd91009288f5c344af4a1b696de8bf09d4e2d5" [label="copy{src=/clean-install, dest=/usr/bin}" shape="note"];
  "sha256:b8880143d4c93258b197bf4eeecd7874ce0564baef5fd059854fa752e2be8c2d" [label="copy{src=/Gemfile, dest=/Gemfile}" shape="note"];
  "sha256:96a2a787f69d1898cffb6939ffb4472b0a5c75ac06630eb22d8bfec7fa6c84fc" [label="/bin/sh -c BUILD_DEPS=\"make gcc g++ libc6-dev ruby-dev\"     && clean-install $BUILD_DEPS                      ca-certificates                      libjemalloc1                      ruby     && echo 'gem: --no-document' >> /etc/gemrc     && gem install --file Gemfile     && apt-get purge -y --auto-remove                      -o APT::AutoRemove::RecommendsImportant=false                      $BUILD_DEPS     && clean-apt     && ulimit -n 65536" shape="box"];
  "sha256:14cb7556860a4804af8f12428f0faca09171d7e5d80685d2fd3179a1000a6301" [label="copy{src=/fluent.conf, dest=/etc/fluent/fluent.conf}" shape="note"];
  "sha256:d2d8ce23ac719f2b0f73238cf46b569e6461bc3ffa6048da271c62a777c633c4" [label="copy{src=/docker-concat.conf, dest=/etc/fluent/config.d/docker-concat.conf}" shape="note"];
  "sha256:fd833bf5dc5e87b843e4d864f11457f2dffb87245484eb80bf420cf2d2524824" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:8af4316a2dea7ba1b0bc6d43be6a09dd56496f04a452893ddf3c7dfd11f666c3" [label="sha256:8af4316a2dea7ba1b0bc6d43be6a09dd56496f04a452893ddf3c7dfd11f666c3" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:124f2080bb6a73e8408ed3041c42d68ce123d568968ad7e24d8a09c597d8a50a" [label=""];
  "sha256:68bb04c5c85e9039df128576a21668b1937ea553175b741926e896440926c821" -> "sha256:124f2080bb6a73e8408ed3041c42d68ce123d568968ad7e24d8a09c597d8a50a" [label=""];
  "sha256:124f2080bb6a73e8408ed3041c42d68ce123d568968ad7e24d8a09c597d8a50a" -> "sha256:ed2f9219f9ae6ddfc87daab401bd91009288f5c344af4a1b696de8bf09d4e2d5" [label=""];
  "sha256:68bb04c5c85e9039df128576a21668b1937ea553175b741926e896440926c821" -> "sha256:ed2f9219f9ae6ddfc87daab401bd91009288f5c344af4a1b696de8bf09d4e2d5" [label=""];
  "sha256:ed2f9219f9ae6ddfc87daab401bd91009288f5c344af4a1b696de8bf09d4e2d5" -> "sha256:b8880143d4c93258b197bf4eeecd7874ce0564baef5fd059854fa752e2be8c2d" [label=""];
  "sha256:68bb04c5c85e9039df128576a21668b1937ea553175b741926e896440926c821" -> "sha256:b8880143d4c93258b197bf4eeecd7874ce0564baef5fd059854fa752e2be8c2d" [label=""];
  "sha256:b8880143d4c93258b197bf4eeecd7874ce0564baef5fd059854fa752e2be8c2d" -> "sha256:96a2a787f69d1898cffb6939ffb4472b0a5c75ac06630eb22d8bfec7fa6c84fc" [label=""];
  "sha256:96a2a787f69d1898cffb6939ffb4472b0a5c75ac06630eb22d8bfec7fa6c84fc" -> "sha256:14cb7556860a4804af8f12428f0faca09171d7e5d80685d2fd3179a1000a6301" [label=""];
  "sha256:68bb04c5c85e9039df128576a21668b1937ea553175b741926e896440926c821" -> "sha256:14cb7556860a4804af8f12428f0faca09171d7e5d80685d2fd3179a1000a6301" [label=""];
  "sha256:14cb7556860a4804af8f12428f0faca09171d7e5d80685d2fd3179a1000a6301" -> "sha256:d2d8ce23ac719f2b0f73238cf46b569e6461bc3ffa6048da271c62a777c633c4" [label=""];
  "sha256:68bb04c5c85e9039df128576a21668b1937ea553175b741926e896440926c821" -> "sha256:d2d8ce23ac719f2b0f73238cf46b569e6461bc3ffa6048da271c62a777c633c4" [label=""];
  "sha256:d2d8ce23ac719f2b0f73238cf46b569e6461bc3ffa6048da271c62a777c633c4" -> "sha256:fd833bf5dc5e87b843e4d864f11457f2dffb87245484eb80bf420cf2d2524824" [label=""];
  "sha256:68bb04c5c85e9039df128576a21668b1937ea553175b741926e896440926c821" -> "sha256:fd833bf5dc5e87b843e4d864f11457f2dffb87245484eb80bf420cf2d2524824" [label=""];
  "sha256:fd833bf5dc5e87b843e4d864f11457f2dffb87245484eb80bf420cf2d2524824" -> "sha256:8af4316a2dea7ba1b0bc6d43be6a09dd56496f04a452893ddf3c7dfd11f666c3" [label=""];
}

