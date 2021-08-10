[app/sources/276064251.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:9bc8c6470ce54dcd367d8a7e950e0c60d6fba10a626f71581675c80f8520cb82" [label="local://context" shape="ellipse"];
  "sha256:97464a4be84af01e92b31672f2236fe46882f0ece7005b8867b523c20c875cd3" [label="copy{src=/clean-apt, dest=/usr/bin}" shape="note"];
  "sha256:79e8b4c4dd3395eda647a5abf1ebdc0fcf6143d0d50096b8b31f96b71c7be8e3" [label="copy{src=/clean-install, dest=/usr/bin}" shape="note"];
  "sha256:42bb894be74f9092c3b384238da082a8a5e81aee0d4e4b77b9ecef2d7db609b6" [label="copy{src=/Gemfile, dest=/Gemfile}" shape="note"];
  "sha256:5a0293913705a30f97025e1f14b5c383670a71cf678bb102d399ac9bd2320308" [label="/bin/sh -c BUILD_DEPS=\"make gcc g++ libc6-dev ruby-dev libffi-dev\"     && clean-install $BUILD_DEPS                      ca-certificates                      libjemalloc1                      ruby     && echo 'gem: --no-document' >> /etc/gemrc     && gem install --file Gemfile     && apt-get purge -y --auto-remove                      -o APT::AutoRemove::RecommendsImportant=false                      $BUILD_DEPS     && clean-apt     && ulimit -n 65536" shape="box"];
  "sha256:cc8f5b0463b822d67591fb8d0ae1bbabffaa1ab7d6ce564f6bc480b84ba30954" [label="copy{src=/fluent.conf, dest=/etc/fluent/fluent.conf}" shape="note"];
  "sha256:b9e101cd8436c5765a76725404b4a1f25888043dbd4b0f49fa5036d47e9e4086" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:cc95a7c4bcd03fdfbe02159e2888a1d01bc69931d8447f1845b7e8b022140889" [label="sha256:cc95a7c4bcd03fdfbe02159e2888a1d01bc69931d8447f1845b7e8b022140889" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:97464a4be84af01e92b31672f2236fe46882f0ece7005b8867b523c20c875cd3" [label=""];
  "sha256:9bc8c6470ce54dcd367d8a7e950e0c60d6fba10a626f71581675c80f8520cb82" -> "sha256:97464a4be84af01e92b31672f2236fe46882f0ece7005b8867b523c20c875cd3" [label=""];
  "sha256:97464a4be84af01e92b31672f2236fe46882f0ece7005b8867b523c20c875cd3" -> "sha256:79e8b4c4dd3395eda647a5abf1ebdc0fcf6143d0d50096b8b31f96b71c7be8e3" [label=""];
  "sha256:9bc8c6470ce54dcd367d8a7e950e0c60d6fba10a626f71581675c80f8520cb82" -> "sha256:79e8b4c4dd3395eda647a5abf1ebdc0fcf6143d0d50096b8b31f96b71c7be8e3" [label=""];
  "sha256:79e8b4c4dd3395eda647a5abf1ebdc0fcf6143d0d50096b8b31f96b71c7be8e3" -> "sha256:42bb894be74f9092c3b384238da082a8a5e81aee0d4e4b77b9ecef2d7db609b6" [label=""];
  "sha256:9bc8c6470ce54dcd367d8a7e950e0c60d6fba10a626f71581675c80f8520cb82" -> "sha256:42bb894be74f9092c3b384238da082a8a5e81aee0d4e4b77b9ecef2d7db609b6" [label=""];
  "sha256:42bb894be74f9092c3b384238da082a8a5e81aee0d4e4b77b9ecef2d7db609b6" -> "sha256:5a0293913705a30f97025e1f14b5c383670a71cf678bb102d399ac9bd2320308" [label=""];
  "sha256:5a0293913705a30f97025e1f14b5c383670a71cf678bb102d399ac9bd2320308" -> "sha256:cc8f5b0463b822d67591fb8d0ae1bbabffaa1ab7d6ce564f6bc480b84ba30954" [label=""];
  "sha256:9bc8c6470ce54dcd367d8a7e950e0c60d6fba10a626f71581675c80f8520cb82" -> "sha256:cc8f5b0463b822d67591fb8d0ae1bbabffaa1ab7d6ce564f6bc480b84ba30954" [label=""];
  "sha256:cc8f5b0463b822d67591fb8d0ae1bbabffaa1ab7d6ce564f6bc480b84ba30954" -> "sha256:b9e101cd8436c5765a76725404b4a1f25888043dbd4b0f49fa5036d47e9e4086" [label=""];
  "sha256:9bc8c6470ce54dcd367d8a7e950e0c60d6fba10a626f71581675c80f8520cb82" -> "sha256:b9e101cd8436c5765a76725404b4a1f25888043dbd4b0f49fa5036d47e9e4086" [label=""];
  "sha256:b9e101cd8436c5765a76725404b4a1f25888043dbd4b0f49fa5036d47e9e4086" -> "sha256:cc95a7c4bcd03fdfbe02159e2888a1d01bc69931d8447f1845b7e8b022140889" [label=""];
}

