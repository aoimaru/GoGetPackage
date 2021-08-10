[app/sources/356014295.Dockerfile]
digraph {
  "sha256:92db9ed74c22f31ef48f8840cbbe07cccec4bced5268c8577fc142bc625b3a12" [label="docker-image://docker.io/library/ubuntu:bionic-20181204" shape="ellipse"];
  "sha256:0b7f0f94e213e49c33b0dac0cea378ddae48a05e906a01f749e4b21479e375ab" [label="/bin/sh -c apt-get update  && DEBIAN_FRONTEND=noninteractive apt-get install -y wget sudo unzip       php${PHP_VERSION}-fpm php${PHP_VERSION}-cli php${PHP_VERSION}-mysql       php${PHP_VERSION}-gd php${PHP_VERSION}-json php${PHP_VERSION}-mbstring       php${PHP_VERSION}-recode php${PHP_VERSION}-xmlrpc       mysql-client nginx gettext-base git  && sed -i 's/^listen = .*/listen = 0.0.0.0:9000/' /etc/php/${PHP_VERSION}/fpm/pool.d/www.conf  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:a4be836306797b5efd7a4c2653f83b8ee797f01a3fb3ebafb47e6f64313fb1e0" [label="local://context" shape="ellipse"];
  "sha256:2e6f6db486cc9290be51fa461b5cb7ce348421d746361bddb47f9dc6de733e2d" [label="copy{src=/assets/build, dest=/etc/docker-invoiceplane/build/}" shape="note"];
  "sha256:860b8d7883c1c9d752f551bebac4893b1f820bd6155c1c2d37b31ae812fac316" [label="/bin/sh -c bash ${INVOICEPLANE_BUILD_DIR}/install.sh" shape="box"];
  "sha256:9afbdef734171ef004122175aa791d1cf7a04de2f7fc86e5f93bc08ebc8ba967" [label="copy{src=/assets/runtime, dest=/etc/docker-invoiceplane/runtime/}" shape="note"];
  "sha256:b0e5390f73ec633f56d1874af1a992e20745275f1bec7da50ab658409aa79aa5" [label="copy{src=/assets/tools, dest=/usr/bin/}" shape="note"];
  "sha256:c05cb63704bb69a152362c8fcc071df4e1d2d55c9298cfe2db46e71e0e985745" [label="copy{src=/entrypoint.sh, dest=/sbin/entrypoint.sh}" shape="note"];
  "sha256:cd393d0e00f54699f6f588e090179581bac2814b02fd753479a12d982af5bef8" [label="/bin/sh -c chmod 755 /sbin/entrypoint.sh" shape="box"];
  "sha256:35f3cf333c817b497bab97cbc80422923048a08b9a1927fc8f0c25023d1c1bb0" [label="mkdir{path=/var/www/invoiceplane}" shape="note"];
  "sha256:54bb101fdecd56ca68fa12a91e8569b5d3703c711e8871bb54519d507e2669d7" [label="sha256:54bb101fdecd56ca68fa12a91e8569b5d3703c711e8871bb54519d507e2669d7" shape="plaintext"];
  "sha256:92db9ed74c22f31ef48f8840cbbe07cccec4bced5268c8577fc142bc625b3a12" -> "sha256:0b7f0f94e213e49c33b0dac0cea378ddae48a05e906a01f749e4b21479e375ab" [label=""];
  "sha256:0b7f0f94e213e49c33b0dac0cea378ddae48a05e906a01f749e4b21479e375ab" -> "sha256:2e6f6db486cc9290be51fa461b5cb7ce348421d746361bddb47f9dc6de733e2d" [label=""];
  "sha256:a4be836306797b5efd7a4c2653f83b8ee797f01a3fb3ebafb47e6f64313fb1e0" -> "sha256:2e6f6db486cc9290be51fa461b5cb7ce348421d746361bddb47f9dc6de733e2d" [label=""];
  "sha256:2e6f6db486cc9290be51fa461b5cb7ce348421d746361bddb47f9dc6de733e2d" -> "sha256:860b8d7883c1c9d752f551bebac4893b1f820bd6155c1c2d37b31ae812fac316" [label=""];
  "sha256:860b8d7883c1c9d752f551bebac4893b1f820bd6155c1c2d37b31ae812fac316" -> "sha256:9afbdef734171ef004122175aa791d1cf7a04de2f7fc86e5f93bc08ebc8ba967" [label=""];
  "sha256:a4be836306797b5efd7a4c2653f83b8ee797f01a3fb3ebafb47e6f64313fb1e0" -> "sha256:9afbdef734171ef004122175aa791d1cf7a04de2f7fc86e5f93bc08ebc8ba967" [label=""];
  "sha256:9afbdef734171ef004122175aa791d1cf7a04de2f7fc86e5f93bc08ebc8ba967" -> "sha256:b0e5390f73ec633f56d1874af1a992e20745275f1bec7da50ab658409aa79aa5" [label=""];
  "sha256:a4be836306797b5efd7a4c2653f83b8ee797f01a3fb3ebafb47e6f64313fb1e0" -> "sha256:b0e5390f73ec633f56d1874af1a992e20745275f1bec7da50ab658409aa79aa5" [label=""];
  "sha256:b0e5390f73ec633f56d1874af1a992e20745275f1bec7da50ab658409aa79aa5" -> "sha256:c05cb63704bb69a152362c8fcc071df4e1d2d55c9298cfe2db46e71e0e985745" [label=""];
  "sha256:a4be836306797b5efd7a4c2653f83b8ee797f01a3fb3ebafb47e6f64313fb1e0" -> "sha256:c05cb63704bb69a152362c8fcc071df4e1d2d55c9298cfe2db46e71e0e985745" [label=""];
  "sha256:c05cb63704bb69a152362c8fcc071df4e1d2d55c9298cfe2db46e71e0e985745" -> "sha256:cd393d0e00f54699f6f588e090179581bac2814b02fd753479a12d982af5bef8" [label=""];
  "sha256:cd393d0e00f54699f6f588e090179581bac2814b02fd753479a12d982af5bef8" -> "sha256:35f3cf333c817b497bab97cbc80422923048a08b9a1927fc8f0c25023d1c1bb0" [label=""];
  "sha256:35f3cf333c817b497bab97cbc80422923048a08b9a1927fc8f0c25023d1c1bb0" -> "sha256:54bb101fdecd56ca68fa12a91e8569b5d3703c711e8871bb54519d507e2669d7" [label=""];
}

