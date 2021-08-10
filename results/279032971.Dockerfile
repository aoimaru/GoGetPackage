[app/sources/279032971.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:5a8bebbaa9e7a192fc3c5d7ae71f8c8129a2d871111400c1a972ce88af265521" [label="/bin/sh -c apk add --no-cache alpine-sdk     && adduser -D -g '' -u 1000 -G abuild packager     && echo \"packager ALL=(ALL) ALL\" >> /etc/sudoers     && echo \"packager ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers     && echo \"/public/v3.9\" | tee -a /etc/apk/repositories     && mkdir -p /etc/php/7.1 /etc/php/7.2 /etc/php/7.3 /etc/php/7.4     && curl https://raw.githubusercontent.com/php/php-src/PHP-7.1/php.ini-development --output /etc/php/7.1/php.ini     && curl https://raw.githubusercontent.com/php/php-src/PHP-7.2/php.ini-development --output /etc/php/7.2/php.ini     && curl https://raw.githubusercontent.com/php/php-src/PHP-7.3/php.ini-development --output /etc/php/7.3/php.ini     && curl https://raw.githubusercontent.com/php/php-src/PHP-7.4/php.ini-development --output /etc/php/7.4/php.ini" shape="box"];
  "sha256:2ae9de5434b3970bc34eda07d546c636afe72a60a4c1f55c29b9e307c6d19ad9" [label="local://context" shape="ellipse"];
  "sha256:de8594032f29e06c7005ac811e8e9f8ad8e24b024631cd65f082440c80f68c6b" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:c8426db2764e2774965c93d6c1994ee92fa6b594bd2b95bc835f0800b31c2488" [label="mkdir{path=/v3.9}" shape="note"];
  "sha256:49d8b6e7d76ca011c87305598f0638f7fdb5c00a9af6ec058041c5e51d3e8422" [label="sha256:49d8b6e7d76ca011c87305598f0638f7fdb5c00a9af6ec058041c5e51d3e8422" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:5a8bebbaa9e7a192fc3c5d7ae71f8c8129a2d871111400c1a972ce88af265521" [label=""];
  "sha256:5a8bebbaa9e7a192fc3c5d7ae71f8c8129a2d871111400c1a972ce88af265521" -> "sha256:de8594032f29e06c7005ac811e8e9f8ad8e24b024631cd65f082440c80f68c6b" [label=""];
  "sha256:2ae9de5434b3970bc34eda07d546c636afe72a60a4c1f55c29b9e307c6d19ad9" -> "sha256:de8594032f29e06c7005ac811e8e9f8ad8e24b024631cd65f082440c80f68c6b" [label=""];
  "sha256:de8594032f29e06c7005ac811e8e9f8ad8e24b024631cd65f082440c80f68c6b" -> "sha256:c8426db2764e2774965c93d6c1994ee92fa6b594bd2b95bc835f0800b31c2488" [label=""];
  "sha256:c8426db2764e2774965c93d6c1994ee92fa6b594bd2b95bc835f0800b31c2488" -> "sha256:49d8b6e7d76ca011c87305598f0638f7fdb5c00a9af6ec058041c5e51d3e8422" [label=""];
}

