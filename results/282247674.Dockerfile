[app/sources/282247674.Dockerfile]
digraph {
  "sha256:b9c6d5dae67cd4295484978dec9f79992a36ea8af2cd93f790344ecd831d309a" [label="docker-image://docker.io/webdevops/php-apache:7.1@sha256:92fb1348211f71912708f5ae5e287ced93f91ae8986feff637c8dcba02142a2d" shape="ellipse"];
  "sha256:e1ec58e1edbb5daba6c26d3ff637d6b84327d87232d7febf7c2d32d006a78dab" [label="local://context" shape="ellipse"];
  "sha256:28315d5e3be01748cd2ea60f443df2ca8a26ecbe9b7d440ea83420cd213b0156" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:b527f4ff87d99c061b7ad90b9193e862c92c6f7ac234875675de0bb5f663eb2d" [label="/bin/sh -c set -x     && wget -q -O - https://packages.blackfire.io/gpg.key | apt-key add -     && echo \"deb https://packages.blackfire.io/debian any main\" | tee /etc/apt/sources.list.d/blackfire.list     && apt-install         blackfire-php         blackfire-agent     && pecl install xdebug     && echo \"zend_extension=xdebug.so\" > /usr/local/etc/php/conf.d/xdebug.ini     && docker-service enable syslog     && docker-service enable postfix     && docker-service enable ssh     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:3a63b30ec056a2ab7506ae44afc076b0c8d4d7f2b233a09ba847bffbbf496fdc" [label="sha256:3a63b30ec056a2ab7506ae44afc076b0c8d4d7f2b233a09ba847bffbbf496fdc" shape="plaintext"];
  "sha256:b9c6d5dae67cd4295484978dec9f79992a36ea8af2cd93f790344ecd831d309a" -> "sha256:28315d5e3be01748cd2ea60f443df2ca8a26ecbe9b7d440ea83420cd213b0156" [label=""];
  "sha256:e1ec58e1edbb5daba6c26d3ff637d6b84327d87232d7febf7c2d32d006a78dab" -> "sha256:28315d5e3be01748cd2ea60f443df2ca8a26ecbe9b7d440ea83420cd213b0156" [label=""];
  "sha256:28315d5e3be01748cd2ea60f443df2ca8a26ecbe9b7d440ea83420cd213b0156" -> "sha256:b527f4ff87d99c061b7ad90b9193e862c92c6f7ac234875675de0bb5f663eb2d" [label=""];
  "sha256:b527f4ff87d99c061b7ad90b9193e862c92c6f7ac234875675de0bb5f663eb2d" -> "sha256:3a63b30ec056a2ab7506ae44afc076b0c8d4d7f2b233a09ba847bffbbf496fdc" [label=""];
}

