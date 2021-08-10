[app/sources/320101722.Dockerfile]
digraph {
  "sha256:7e367ab2adb2d2f82fc2991e38089b1b95e5f286d7b53076f6b006bc49163098" [label="docker-image://docker.io/webdevops/php-apache:ubuntu-17.04@sha256:9ea808dc8069c3b14c9a3f2db0e7d50697910ba8850bf2c4241e49960e494be9" shape="ellipse"];
  "sha256:f8399c647fe345181f06289a6ce2c31bb9fba05319f43386bb3baf91cb0c3277" [label="local://context" shape="ellipse"];
  "sha256:1b00713cecfc1a244cd681c68e27adddc5ecf62d1531b11844ee79431292ca0b" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:49d0c740e80b42ed1ba2653c7201fd69fd6a78873e5ba70896cfc39475a12875" [label="/bin/sh -c set -x     && apt-install         gnupg     && wget -O - https://packagecloud.io/gpg.key | apt-key add -     && echo \"deb https://packages.blackfire.io/debian any main\" | tee /etc/apt/sources.list.d/blackfire.list     && apt-install         graphviz         php-xdebug         blackfire-php         blackfire-agent     && docker-service enable syslog     && docker-service enable postfix     && docker-service enable ssh     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:6123291fdde56c6910e8d51e92315836dd938619b921a650be53995d5b4e3eb3" [label="sha256:6123291fdde56c6910e8d51e92315836dd938619b921a650be53995d5b4e3eb3" shape="plaintext"];
  "sha256:7e367ab2adb2d2f82fc2991e38089b1b95e5f286d7b53076f6b006bc49163098" -> "sha256:1b00713cecfc1a244cd681c68e27adddc5ecf62d1531b11844ee79431292ca0b" [label=""];
  "sha256:f8399c647fe345181f06289a6ce2c31bb9fba05319f43386bb3baf91cb0c3277" -> "sha256:1b00713cecfc1a244cd681c68e27adddc5ecf62d1531b11844ee79431292ca0b" [label=""];
  "sha256:1b00713cecfc1a244cd681c68e27adddc5ecf62d1531b11844ee79431292ca0b" -> "sha256:49d0c740e80b42ed1ba2653c7201fd69fd6a78873e5ba70896cfc39475a12875" [label=""];
  "sha256:49d0c740e80b42ed1ba2653c7201fd69fd6a78873e5ba70896cfc39475a12875" -> "sha256:6123291fdde56c6910e8d51e92315836dd938619b921a650be53995d5b4e3eb3" [label=""];
}

