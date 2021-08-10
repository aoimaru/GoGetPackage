[app/sources/363766827.Dockerfile]
digraph {
  "sha256:5863b58bdd96fc961a8a5455135604035b0de697705bda7d2c247e4c61972664" [label="local://context" shape="ellipse"];
  "sha256:384dc6853d4023423f4e71dad970e2331dc4416db5301a3c4aa0652a330e107f" [label="docker-image://docker.io/webdevops/php-apache:ubuntu-16.04@sha256:6f66066c604b0aa592a5cdfaddb6c0e0541aa54b642287155ffe2c37429fe1a2" shape="ellipse"];
  "sha256:70ec68aaf14d933bba0732c2844ef19391361187c923c7501e73941dd360db67" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:e67fabe322bfaf3ea8cc7a7a3de6307eff4104ec4b0a163e3ff97774040c2b8b" [label="/bin/sh -c set -x     && apt-install         gnupg     && wget -q -O - https://packages.blackfire.io/gpg.key | apt-key add -     && echo \"deb https://packages.blackfire.io/debian any main\" | tee /etc/apt/sources.list.d/blackfire.list     && apt-install         graphviz         php-xdebug         blackfire-php         blackfire-agent         nano         vim     && docker-service enable syslog     && docker-service enable postfix     && docker-service enable ssh     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:218395b415234c7d2e47b429c41eb3af95cb56d2e0ad1ac010742fa12f542a82" [label="sha256:218395b415234c7d2e47b429c41eb3af95cb56d2e0ad1ac010742fa12f542a82" shape="plaintext"];
  "sha256:384dc6853d4023423f4e71dad970e2331dc4416db5301a3c4aa0652a330e107f" -> "sha256:70ec68aaf14d933bba0732c2844ef19391361187c923c7501e73941dd360db67" [label=""];
  "sha256:5863b58bdd96fc961a8a5455135604035b0de697705bda7d2c247e4c61972664" -> "sha256:70ec68aaf14d933bba0732c2844ef19391361187c923c7501e73941dd360db67" [label=""];
  "sha256:70ec68aaf14d933bba0732c2844ef19391361187c923c7501e73941dd360db67" -> "sha256:e67fabe322bfaf3ea8cc7a7a3de6307eff4104ec4b0a163e3ff97774040c2b8b" [label=""];
  "sha256:e67fabe322bfaf3ea8cc7a7a3de6307eff4104ec4b0a163e3ff97774040c2b8b" -> "sha256:218395b415234c7d2e47b429c41eb3af95cb56d2e0ad1ac010742fa12f542a82" [label=""];
}

