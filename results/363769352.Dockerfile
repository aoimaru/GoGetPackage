[app/sources/363769352.Dockerfile]
digraph {
  "sha256:0d5a34a3f35c4e42e0cc7a6ef8c02d04599ab1442f1bd808b2b8ab176d41328a" [label="docker-image://docker.io/webdevops/php:ubuntu-18.04@sha256:db2d90943812a13f85d55af499930be01b114af28d1956d1fd6d84770b1d04e3" shape="ellipse"];
  "sha256:acf23c6002b60a29245dfd40c2c8dc38fa9fefa1ab1401816fc78bbebeb8d2dc" [label="local://context" shape="ellipse"];
  "sha256:de5fdf7afcf02fd9f0ac3338b6d2893ab55bdb08ef586d46f4e7ed5ac90199f2" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:e39dea1ece536ae928adadb43cd54486336307ab53b99e7f7dc06b1ed26acdff" [label="/bin/sh -c set -x     && apt-install         gnupg     && wget -q -O - https://packages.blackfire.io/gpg.key | apt-key add -     && echo \"deb https://packages.blackfire.io/debian any main\" | tee /etc/apt/sources.list.d/blackfire.list     && apt-install         graphviz         php-xdebug         blackfire-php         blackfire-agent         nano         vim     && docker-service enable syslog     && docker-service enable postfix     && docker-service enable ssh     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:3604fff2fd79006d405b2b97d67417fe414ca78ae1de7c3462182f6609cefe12" [label="sha256:3604fff2fd79006d405b2b97d67417fe414ca78ae1de7c3462182f6609cefe12" shape="plaintext"];
  "sha256:0d5a34a3f35c4e42e0cc7a6ef8c02d04599ab1442f1bd808b2b8ab176d41328a" -> "sha256:de5fdf7afcf02fd9f0ac3338b6d2893ab55bdb08ef586d46f4e7ed5ac90199f2" [label=""];
  "sha256:acf23c6002b60a29245dfd40c2c8dc38fa9fefa1ab1401816fc78bbebeb8d2dc" -> "sha256:de5fdf7afcf02fd9f0ac3338b6d2893ab55bdb08ef586d46f4e7ed5ac90199f2" [label=""];
  "sha256:de5fdf7afcf02fd9f0ac3338b6d2893ab55bdb08ef586d46f4e7ed5ac90199f2" -> "sha256:e39dea1ece536ae928adadb43cd54486336307ab53b99e7f7dc06b1ed26acdff" [label=""];
  "sha256:e39dea1ece536ae928adadb43cd54486336307ab53b99e7f7dc06b1ed26acdff" -> "sha256:3604fff2fd79006d405b2b97d67417fe414ca78ae1de7c3462182f6609cefe12" [label=""];
}

