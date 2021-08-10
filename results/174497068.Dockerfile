[app/sources/174497068.Dockerfile]
digraph {
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:ac626257b88d257c128670d921172c2121bdc61a590fba1bf575b3566e49197d" [label="/bin/sh -c apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db &&     echo 'deb http://mirrors.syringanetworks.net/mariadb/repo/10.1/ubuntu trusty main' >> /etc/apt/sources.list &&     echo 'deb-src http://mirrors.syringanetworks.net/mariadb/repo/10.1/ubuntu trusty main' >> /etc/apt/sources.list  &&     apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y mariadb-server pwgen &&     rm -rf /var/lib/mysql/* &&     sed -i -r 's/bind-address.*$/bind-address = 0.0.0.0/' /etc/mysql/my.cnf &&     apt-get install -y memcached &&     mkdir -p ${APP}" shape="box"];
  "sha256:8ab7fc5f5c5ae1f11f9940d6c3e760dfc8af9142083f2d9f920eb5329e5c7dd8" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:955a9fdd268f4ac605213ff9e663073011fea9297b2fc7ef168238c801930c0f" [label="local://context" shape="ellipse"];
  "sha256:6921c2dba92fb5859c25823a6f26e045358395f375e50caa83313f7bb9611e99" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:b06ae2430cefca433427d0a866cba4a679c7316fe94e15b07f9b657bd4e14afd" [label="copy{src=/docker, dest=/docker}" shape="note"];
  "sha256:dc3a7ddcaac2d953dc8cfb37d4f0353584bb98d03df4501bce875403deeaaee0" [label="/bin/sh -c chmod +x /docker/*.sh &&     npm install &&     npm cache clean && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:5469be3c6fb865752ebde19609fbd8596baafd47c0933a49ae6543be70111b13" [label="sha256:5469be3c6fb865752ebde19609fbd8596baafd47c0933a49ae6543be70111b13" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:ac626257b88d257c128670d921172c2121bdc61a590fba1bf575b3566e49197d" [label=""];
  "sha256:ac626257b88d257c128670d921172c2121bdc61a590fba1bf575b3566e49197d" -> "sha256:8ab7fc5f5c5ae1f11f9940d6c3e760dfc8af9142083f2d9f920eb5329e5c7dd8" [label=""];
  "sha256:8ab7fc5f5c5ae1f11f9940d6c3e760dfc8af9142083f2d9f920eb5329e5c7dd8" -> "sha256:6921c2dba92fb5859c25823a6f26e045358395f375e50caa83313f7bb9611e99" [label=""];
  "sha256:955a9fdd268f4ac605213ff9e663073011fea9297b2fc7ef168238c801930c0f" -> "sha256:6921c2dba92fb5859c25823a6f26e045358395f375e50caa83313f7bb9611e99" [label=""];
  "sha256:6921c2dba92fb5859c25823a6f26e045358395f375e50caa83313f7bb9611e99" -> "sha256:b06ae2430cefca433427d0a866cba4a679c7316fe94e15b07f9b657bd4e14afd" [label=""];
  "sha256:955a9fdd268f4ac605213ff9e663073011fea9297b2fc7ef168238c801930c0f" -> "sha256:b06ae2430cefca433427d0a866cba4a679c7316fe94e15b07f9b657bd4e14afd" [label=""];
  "sha256:b06ae2430cefca433427d0a866cba4a679c7316fe94e15b07f9b657bd4e14afd" -> "sha256:dc3a7ddcaac2d953dc8cfb37d4f0353584bb98d03df4501bce875403deeaaee0" [label=""];
  "sha256:dc3a7ddcaac2d953dc8cfb37d4f0353584bb98d03df4501bce875403deeaaee0" -> "sha256:5469be3c6fb865752ebde19609fbd8596baafd47c0933a49ae6543be70111b13" [label=""];
}

