[app/sources/310550653.Dockerfile]
digraph {
  "sha256:fbc1865a0c8782a4e330e68c092b66a76ee392f59ac88917f14e9e8cdebf785d" [label="docker-image://docker.io/library/php:7.0-apache" shape="ellipse"];
  "sha256:cbcaa53b086093cdc10a41a58403fba074c43f5fb2803c15fde0202342bf20b1" [label="local://context" shape="ellipse"];
  "sha256:f07db154d6efcc8e777a16efc4c8e5fc265fd923a695dcbfc0fd833d57aafe98" [label="copy{src=/config/php.ini, dest=/usr/local/etc/php/php.ini}" shape="note"];
  "sha256:c8a319c17deb239f2b36b36abf27900350652cb271901f590d417d0b43b2f51f" [label="copy{src=/config/docker-php.conf, dest=/etc/apache2/conf-available/docker-php.conf}" shape="note"];
  "sha256:0531c365438758d95562e28571127d456d3bc62e3cca9a64da70386a10d81030" [label="copy{src=/config/000-default.conf, dest=/etc/apache2/sites-available/000-default.conf}" shape="note"];
  "sha256:54e1b369642d918167672c4c80eac511208612030f4cc2d3cc943b2b303f1416" [label="copy{src=/src, dest=/var/www/html/}" shape="note"];
  "sha256:44e53b15e29cd5202507a1945e6f7ed00863ce63047bcfd0c98eee808a6122db" [label="/bin/sh -c apt-get update &&     apt-get upgrade -y &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/" shape="box"];
  "sha256:821a4ef4b9a77e28b1d7955f573f61df98452a7e70cffd959fab87df6d2ebd0d" [label="/bin/sh -c mkdir -p /tmp/cache/7badddeddbd076fe8352e80d8ddf3e73/var/www/html/index.php.bin &&     chown -R www-data:www-data /tmp/cache &&     chown -R root:root /tmp/cache/7badddeddbd076fe8352e80d8ddf3e73/var/www/html/index.php.bin &&     chmod 755 /tmp/cache &&     chmod 000 /tmp/cache/7badddeddbd076fe8352e80d8ddf3e73/var/www/html/index.php.bin &&     chown -R root:root /var/www/html &&     chown -R www-data:www-data /var/www/html/sandbox &&     chmod -R 444 /var/www/html &&     chmod 755 /var/www/html &&     chmod 755 /var/www/html/sandbox &&     chmod 755 /var/www/html/flag &&     service apache2 restart &&     chmod 1733 /dev/shm" shape="box"];
  "sha256:63f94531e6c3b63088fcf4e4bb19db575e37180b56982648d0946f6b39275a3f" [label="sha256:63f94531e6c3b63088fcf4e4bb19db575e37180b56982648d0946f6b39275a3f" shape="plaintext"];
  "sha256:fbc1865a0c8782a4e330e68c092b66a76ee392f59ac88917f14e9e8cdebf785d" -> "sha256:f07db154d6efcc8e777a16efc4c8e5fc265fd923a695dcbfc0fd833d57aafe98" [label=""];
  "sha256:cbcaa53b086093cdc10a41a58403fba074c43f5fb2803c15fde0202342bf20b1" -> "sha256:f07db154d6efcc8e777a16efc4c8e5fc265fd923a695dcbfc0fd833d57aafe98" [label=""];
  "sha256:f07db154d6efcc8e777a16efc4c8e5fc265fd923a695dcbfc0fd833d57aafe98" -> "sha256:c8a319c17deb239f2b36b36abf27900350652cb271901f590d417d0b43b2f51f" [label=""];
  "sha256:cbcaa53b086093cdc10a41a58403fba074c43f5fb2803c15fde0202342bf20b1" -> "sha256:c8a319c17deb239f2b36b36abf27900350652cb271901f590d417d0b43b2f51f" [label=""];
  "sha256:c8a319c17deb239f2b36b36abf27900350652cb271901f590d417d0b43b2f51f" -> "sha256:0531c365438758d95562e28571127d456d3bc62e3cca9a64da70386a10d81030" [label=""];
  "sha256:cbcaa53b086093cdc10a41a58403fba074c43f5fb2803c15fde0202342bf20b1" -> "sha256:0531c365438758d95562e28571127d456d3bc62e3cca9a64da70386a10d81030" [label=""];
  "sha256:0531c365438758d95562e28571127d456d3bc62e3cca9a64da70386a10d81030" -> "sha256:54e1b369642d918167672c4c80eac511208612030f4cc2d3cc943b2b303f1416" [label=""];
  "sha256:cbcaa53b086093cdc10a41a58403fba074c43f5fb2803c15fde0202342bf20b1" -> "sha256:54e1b369642d918167672c4c80eac511208612030f4cc2d3cc943b2b303f1416" [label=""];
  "sha256:54e1b369642d918167672c4c80eac511208612030f4cc2d3cc943b2b303f1416" -> "sha256:44e53b15e29cd5202507a1945e6f7ed00863ce63047bcfd0c98eee808a6122db" [label=""];
  "sha256:44e53b15e29cd5202507a1945e6f7ed00863ce63047bcfd0c98eee808a6122db" -> "sha256:821a4ef4b9a77e28b1d7955f573f61df98452a7e70cffd959fab87df6d2ebd0d" [label=""];
  "sha256:821a4ef4b9a77e28b1d7955f573f61df98452a7e70cffd959fab87df6d2ebd0d" -> "sha256:63f94531e6c3b63088fcf4e4bb19db575e37180b56982648d0946f6b39275a3f" [label=""];
}

