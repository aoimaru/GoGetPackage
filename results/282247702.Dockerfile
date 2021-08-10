[app/sources/282247702.Dockerfile]
digraph {
  "sha256:3f3934e589ed69acf6399eb1147f9c267ef60a154cf7d8f70e4c75c361d46dad" [label="docker-image://docker.io/webdevops/php-apache:7.3@sha256:96f57c4d2b1002be6e9e96d3274a11571963c66edac051f6215e1a8728694e67" shape="ellipse"];
  "sha256:9babcadad751d5c8033c63fdbcb11debff00bcaf7ea248346f86748857582c38" [label="local://context" shape="ellipse"];
  "sha256:8942c47440111dfea09b15c1fa5b4b363adf95fe0e62d89768499a5758d136fa" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:bca11da694de69723533a5631b7b13918addd10a876ac15ec61910fcb869386c" [label="/bin/sh -c set -x     && wget -q -O - https://packages.blackfire.io/gpg.key | apt-key add -     && echo \"deb https://packages.blackfire.io/debian any main\" | tee /etc/apt/sources.list.d/blackfire.list     && apt-install         blackfire-php         blackfire-agent     && pecl install xdebug-2.7.0     && echo \"zend_extension=xdebug.so\" > /usr/local/etc/php/conf.d/xdebug.ini     && docker-service enable syslog     && docker-service enable postfix     && docker-service enable ssh     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:9b80462baee9f778cee62cdb114596197ac58f00f058b80eac5e2bc8ddf84d64" [label="sha256:9b80462baee9f778cee62cdb114596197ac58f00f058b80eac5e2bc8ddf84d64" shape="plaintext"];
  "sha256:3f3934e589ed69acf6399eb1147f9c267ef60a154cf7d8f70e4c75c361d46dad" -> "sha256:8942c47440111dfea09b15c1fa5b4b363adf95fe0e62d89768499a5758d136fa" [label=""];
  "sha256:9babcadad751d5c8033c63fdbcb11debff00bcaf7ea248346f86748857582c38" -> "sha256:8942c47440111dfea09b15c1fa5b4b363adf95fe0e62d89768499a5758d136fa" [label=""];
  "sha256:8942c47440111dfea09b15c1fa5b4b363adf95fe0e62d89768499a5758d136fa" -> "sha256:bca11da694de69723533a5631b7b13918addd10a876ac15ec61910fcb869386c" [label=""];
  "sha256:bca11da694de69723533a5631b7b13918addd10a876ac15ec61910fcb869386c" -> "sha256:9b80462baee9f778cee62cdb114596197ac58f00f058b80eac5e2bc8ddf84d64" [label=""];
}

