[app/sources/363769546.Dockerfile]
digraph {
  "sha256:365c6d32465183986d90075ce30738e27f55001e1dfc66627ec51812a2b648eb" [label="local://context" shape="ellipse"];
  "sha256:3503c8f5424f766d650d9d26b54e3056f35a74c192a5043a937a0bf0b2d4a92c" [label="docker-image://docker.io/webdevops/php-nginx:debian-7@sha256:b03e6c47a16de26e29ecac3ce4ce0cc299708f75fdf7c8b326f6da2c9030b1b3" shape="ellipse"];
  "sha256:fa0817d58920467dfd7ebaf74abd4447ad121ba07fd81e6aeeaf34f3e274f625" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:d459cfbbbc26e89c2a97732902e1a8674df09c7857943e593778ec8888b9ab0a" [label="/bin/sh -c set -x     && apt-install         gnupg     && wget -q -O - https://packages.blackfire.io/gpg.key | apt-key add -     && echo \"deb https://packages.blackfire.io/debian any main\" | tee /etc/apt/sources.list.d/blackfire.list     && apt-install         graphviz         php5-xdebug         blackfire-php         blackfire-agent         nano         vim     && docker-service enable syslog     && docker-service enable postfix     && docker-service enable ssh     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:69634bd98d5a8187389b79bcf91e0547ea12e7b1b2f5787ec47a61529c71644c" [label="sha256:69634bd98d5a8187389b79bcf91e0547ea12e7b1b2f5787ec47a61529c71644c" shape="plaintext"];
  "sha256:3503c8f5424f766d650d9d26b54e3056f35a74c192a5043a937a0bf0b2d4a92c" -> "sha256:fa0817d58920467dfd7ebaf74abd4447ad121ba07fd81e6aeeaf34f3e274f625" [label=""];
  "sha256:365c6d32465183986d90075ce30738e27f55001e1dfc66627ec51812a2b648eb" -> "sha256:fa0817d58920467dfd7ebaf74abd4447ad121ba07fd81e6aeeaf34f3e274f625" [label=""];
  "sha256:fa0817d58920467dfd7ebaf74abd4447ad121ba07fd81e6aeeaf34f3e274f625" -> "sha256:d459cfbbbc26e89c2a97732902e1a8674df09c7857943e593778ec8888b9ab0a" [label=""];
  "sha256:d459cfbbbc26e89c2a97732902e1a8674df09c7857943e593778ec8888b9ab0a" -> "sha256:69634bd98d5a8187389b79bcf91e0547ea12e7b1b2f5787ec47a61529c71644c" [label=""];
}

