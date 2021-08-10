[app/sources/363769365.Dockerfile]
digraph {
  "sha256:1ab9e5c8f6c46506270e98c8a19fd6f3640977d5e27827050b408783d1e07ed4" [label="docker-image://docker.io/webdevops/php-nginx:5.6@sha256:9b050ca792d06f998ba60d99d3e2981a3979bc6fd133d63d5d2230c3b322ccb7" shape="ellipse"];
  "sha256:7603a7948e4fc84b51b77060aa652fe2d42e1ba8de0b0e63a0a92c704d1d11fd" [label="local://context" shape="ellipse"];
  "sha256:fe79cc68bb02ba22f37d109fa9d813a119f41d41634c030287df9a3b57cf895c" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:7a9f50d56e597b73ac07d824e1a1b52e73c3905ecdad94f385d352c0e5780c26" [label="/bin/sh -c set -x     && wget -q -O - https://packages.blackfire.io/gpg.key | apt-key add -     && echo \"deb https://packages.blackfire.io/debian any main\" | tee /etc/apt/sources.list.d/blackfire.list     && apt-install         blackfire-php         blackfire-agent     && pecl install xdebug-2.5.5     && echo \"zend_extension=xdebug.so\" > /usr/local/etc/php/conf.d/xdebug.ini     && docker-service enable syslog     && docker-service enable postfix     && docker-service enable ssh     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:26e22d3b036643f0eaaff7591deff2d2de9aa07ed8cfe6bc8c291cb2c57fbb5d" [label="sha256:26e22d3b036643f0eaaff7591deff2d2de9aa07ed8cfe6bc8c291cb2c57fbb5d" shape="plaintext"];
  "sha256:1ab9e5c8f6c46506270e98c8a19fd6f3640977d5e27827050b408783d1e07ed4" -> "sha256:fe79cc68bb02ba22f37d109fa9d813a119f41d41634c030287df9a3b57cf895c" [label=""];
  "sha256:7603a7948e4fc84b51b77060aa652fe2d42e1ba8de0b0e63a0a92c704d1d11fd" -> "sha256:fe79cc68bb02ba22f37d109fa9d813a119f41d41634c030287df9a3b57cf895c" [label=""];
  "sha256:fe79cc68bb02ba22f37d109fa9d813a119f41d41634c030287df9a3b57cf895c" -> "sha256:7a9f50d56e597b73ac07d824e1a1b52e73c3905ecdad94f385d352c0e5780c26" [label=""];
  "sha256:7a9f50d56e597b73ac07d824e1a1b52e73c3905ecdad94f385d352c0e5780c26" -> "sha256:26e22d3b036643f0eaaff7591deff2d2de9aa07ed8cfe6bc8c291cb2c57fbb5d" [label=""];
}

