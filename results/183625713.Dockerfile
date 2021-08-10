[app/sources/183625713.Dockerfile]
digraph {
  "sha256:76bcf51dbd09b2122ae4dda429ef4f3251abdfb27ba8a14314cdb3f9ed25190f" [label="local://context" shape="ellipse"];
  "sha256:5e3ffce172abe029e14398c960f76178160392adccdc24ec33a7ba0bde79cc90" [label="docker-image://docker.io/library/php:5.6-apache" shape="ellipse"];
  "sha256:e2f101d4f66de812ade6da02b7ed76302fd029878bde3156566669d51fd8cd5d" [label="/bin/sh -c apt-get update     && apt-get install -y git  zlib1g-dev     && docker-php-ext-install mysql pdo_mysql zip" shape="box"];
  "sha256:c67839f4f8dc30cfa3abc1874649a5f44da28d50cc9b3527df50633aedeb2701" [label="copy{src=/docker/vhost.conf, dest=/etc/apache2/sites-enabled/000-default.conf}" shape="note"];
  "sha256:756f3ccb697b449d3aa90c4e7050747a273e695af9020a12072a333a47966614" [label="copy{src=/docker/php.ini, dest=/usr/local/etc/php/php.ini}" shape="note"];
  "sha256:fe0603cc667738bcdad851e340bc8f88823b3191668f3ca884e702aca0ba1c3c" [label="/bin/sh -c a2enmod rewrite" shape="box"];
  "sha256:da37bcc281e6892d6ac6dd4da34a3a9b2fd9997c0541f7f7cd3c1bae7e6d608e" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php     && mv composer.phar /usr/bin/composer" shape="box"];
  "sha256:233d1f2366d6ee3842022f186189e75266773708237e22a35a1bac8af354f969" [label="mkdir{path=/var/www/wordpress}" shape="note"];
  "sha256:3598fcf83b788643bf9fb59c93bae5d9109aa477d4c3fe118864ebe3c098362d" [label="sha256:3598fcf83b788643bf9fb59c93bae5d9109aa477d4c3fe118864ebe3c098362d" shape="plaintext"];
  "sha256:5e3ffce172abe029e14398c960f76178160392adccdc24ec33a7ba0bde79cc90" -> "sha256:e2f101d4f66de812ade6da02b7ed76302fd029878bde3156566669d51fd8cd5d" [label=""];
  "sha256:e2f101d4f66de812ade6da02b7ed76302fd029878bde3156566669d51fd8cd5d" -> "sha256:c67839f4f8dc30cfa3abc1874649a5f44da28d50cc9b3527df50633aedeb2701" [label=""];
  "sha256:76bcf51dbd09b2122ae4dda429ef4f3251abdfb27ba8a14314cdb3f9ed25190f" -> "sha256:c67839f4f8dc30cfa3abc1874649a5f44da28d50cc9b3527df50633aedeb2701" [label=""];
  "sha256:c67839f4f8dc30cfa3abc1874649a5f44da28d50cc9b3527df50633aedeb2701" -> "sha256:756f3ccb697b449d3aa90c4e7050747a273e695af9020a12072a333a47966614" [label=""];
  "sha256:76bcf51dbd09b2122ae4dda429ef4f3251abdfb27ba8a14314cdb3f9ed25190f" -> "sha256:756f3ccb697b449d3aa90c4e7050747a273e695af9020a12072a333a47966614" [label=""];
  "sha256:756f3ccb697b449d3aa90c4e7050747a273e695af9020a12072a333a47966614" -> "sha256:fe0603cc667738bcdad851e340bc8f88823b3191668f3ca884e702aca0ba1c3c" [label=""];
  "sha256:fe0603cc667738bcdad851e340bc8f88823b3191668f3ca884e702aca0ba1c3c" -> "sha256:da37bcc281e6892d6ac6dd4da34a3a9b2fd9997c0541f7f7cd3c1bae7e6d608e" [label=""];
  "sha256:da37bcc281e6892d6ac6dd4da34a3a9b2fd9997c0541f7f7cd3c1bae7e6d608e" -> "sha256:233d1f2366d6ee3842022f186189e75266773708237e22a35a1bac8af354f969" [label=""];
  "sha256:233d1f2366d6ee3842022f186189e75266773708237e22a35a1bac8af354f969" -> "sha256:3598fcf83b788643bf9fb59c93bae5d9109aa477d4c3fe118864ebe3c098362d" [label=""];
}

