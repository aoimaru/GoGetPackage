[app/sources/218097322.Dockerfile]
digraph {
  "sha256:5294b30a627bb362f5e2626d9a7d66b2934f65b9cbbfd85c349546330494e3d5" [label="local://context" shape="ellipse"];
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" [label="docker-image://docker.io/library/php:7.1-fpm" shape="ellipse"];
  "sha256:fb7ed8db87436ea3513f5fe68f15666cf47df50d975d5f914df2d66e9a3f8246" [label="/bin/sh -c apt-get update -qq && apt-get install -qqy     sudo     wget     git     apt-utils     acl     openssl     nano     htop     unzip     tzdata     netcat     iproute2     cron     libicu-dev     libmcrypt-dev     libfreetype6-dev libjpeg-dev     apt-transport-https lsb-release ca-certificates     software-properties-common     libbz2-dev     && echo \"Europe/Paris\" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata     && echo 'alias ll=\"ls -lah --color=auto\"' >> /etc/bash.bashrc     && docker-php-ext-configure intl     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/     && docker-php-ext-install        iconv        mcrypt        intl        pdo        pdo_mysql        mbstring        opcache        zip        gd        exif        bz2     && usermod -u 1000 www-data     && groupmod -g 1000 www-data     && find / -user 33 -exec chown -h 1000 {} \\; || true     && find / -group 33 -exec chgrp -h 1000 {} \\; || true     && usermod -g 1000 www-data" shape="box"];
  "sha256:d5f6bc0bbe098719d0be4498845c3b0d9a482f92bfdee61da2acbe6692bbef8f" [label="copy{src=/logrotate/symfony, dest=/etc/logrotate.d/symfony}" shape="note"];
  "sha256:d78055c89f109fecff384844b710e83cbbc97f14bc945e1da1c1e7bcb530bdca" [label="copy{src=/logrotate/php, dest=/etc/logrotate.d/php}" shape="note"];
  "sha256:310b594486ac291e84737f49254ee197d145d09817035113c9c94b00e1fd4f36" [label="copy{src=/logrotate/cron, dest=/etc/periodic/daily/logrotate-cron}" shape="note"];
  "sha256:907adf654864d6c9b3e2b6c0451701c30e5bcfa045689337f240ea065dbb571b" [label="copy{src=/php/*.ini, dest=/usr/local/etc/php/conf.d/}" shape="note"];
  "sha256:0364fd0be5462e6e71f472f124f10febbecd815e91fc0a65555f4969689551e5" [label="copy{src=/php/php.ini, dest=/usr/local/etc/php/php.ini}" shape="note"];
  "sha256:f4cda65489be754e0de00dc12fac0474367a9eb130a7466679021b10012a22c2" [label="copy{src=/script/start.sh, dest=/root/start.sh}" shape="note"];
  "sha256:c2df7b3d57b45f507910f191e3f7b1131d56bef038de6beb70b876b192aaddf0" [label="copy{src=/script/entry.sh, dest=/root/entry.sh}" shape="note"];
  "sha256:813b37005e1e77c56fe86563f386ee27077f55ddf283cccdd6c89aecd1488759" [label="/bin/sh -c chmod +x /root/start.sh /root/entry.sh   && chmod +x /etc/periodic/daily/logrotate-cron" shape="box"];
  "sha256:81025acfdc972659c3b542a09a1fc5491140609276c20dc7ca8476181aa5f05d" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:50ae0e3bcbb26e3d81e8ea3860c668a1945c3e9c5aee0267b09bb96a2918e375" [label="sha256:50ae0e3bcbb26e3d81e8ea3860c668a1945c3e9c5aee0267b09bb96a2918e375" shape="plaintext"];
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" -> "sha256:fb7ed8db87436ea3513f5fe68f15666cf47df50d975d5f914df2d66e9a3f8246" [label=""];
  "sha256:fb7ed8db87436ea3513f5fe68f15666cf47df50d975d5f914df2d66e9a3f8246" -> "sha256:d5f6bc0bbe098719d0be4498845c3b0d9a482f92bfdee61da2acbe6692bbef8f" [label=""];
  "sha256:5294b30a627bb362f5e2626d9a7d66b2934f65b9cbbfd85c349546330494e3d5" -> "sha256:d5f6bc0bbe098719d0be4498845c3b0d9a482f92bfdee61da2acbe6692bbef8f" [label=""];
  "sha256:d5f6bc0bbe098719d0be4498845c3b0d9a482f92bfdee61da2acbe6692bbef8f" -> "sha256:d78055c89f109fecff384844b710e83cbbc97f14bc945e1da1c1e7bcb530bdca" [label=""];
  "sha256:5294b30a627bb362f5e2626d9a7d66b2934f65b9cbbfd85c349546330494e3d5" -> "sha256:d78055c89f109fecff384844b710e83cbbc97f14bc945e1da1c1e7bcb530bdca" [label=""];
  "sha256:d78055c89f109fecff384844b710e83cbbc97f14bc945e1da1c1e7bcb530bdca" -> "sha256:310b594486ac291e84737f49254ee197d145d09817035113c9c94b00e1fd4f36" [label=""];
  "sha256:5294b30a627bb362f5e2626d9a7d66b2934f65b9cbbfd85c349546330494e3d5" -> "sha256:310b594486ac291e84737f49254ee197d145d09817035113c9c94b00e1fd4f36" [label=""];
  "sha256:310b594486ac291e84737f49254ee197d145d09817035113c9c94b00e1fd4f36" -> "sha256:907adf654864d6c9b3e2b6c0451701c30e5bcfa045689337f240ea065dbb571b" [label=""];
  "sha256:5294b30a627bb362f5e2626d9a7d66b2934f65b9cbbfd85c349546330494e3d5" -> "sha256:907adf654864d6c9b3e2b6c0451701c30e5bcfa045689337f240ea065dbb571b" [label=""];
  "sha256:907adf654864d6c9b3e2b6c0451701c30e5bcfa045689337f240ea065dbb571b" -> "sha256:0364fd0be5462e6e71f472f124f10febbecd815e91fc0a65555f4969689551e5" [label=""];
  "sha256:5294b30a627bb362f5e2626d9a7d66b2934f65b9cbbfd85c349546330494e3d5" -> "sha256:0364fd0be5462e6e71f472f124f10febbecd815e91fc0a65555f4969689551e5" [label=""];
  "sha256:0364fd0be5462e6e71f472f124f10febbecd815e91fc0a65555f4969689551e5" -> "sha256:f4cda65489be754e0de00dc12fac0474367a9eb130a7466679021b10012a22c2" [label=""];
  "sha256:5294b30a627bb362f5e2626d9a7d66b2934f65b9cbbfd85c349546330494e3d5" -> "sha256:f4cda65489be754e0de00dc12fac0474367a9eb130a7466679021b10012a22c2" [label=""];
  "sha256:f4cda65489be754e0de00dc12fac0474367a9eb130a7466679021b10012a22c2" -> "sha256:c2df7b3d57b45f507910f191e3f7b1131d56bef038de6beb70b876b192aaddf0" [label=""];
  "sha256:5294b30a627bb362f5e2626d9a7d66b2934f65b9cbbfd85c349546330494e3d5" -> "sha256:c2df7b3d57b45f507910f191e3f7b1131d56bef038de6beb70b876b192aaddf0" [label=""];
  "sha256:c2df7b3d57b45f507910f191e3f7b1131d56bef038de6beb70b876b192aaddf0" -> "sha256:813b37005e1e77c56fe86563f386ee27077f55ddf283cccdd6c89aecd1488759" [label=""];
  "sha256:813b37005e1e77c56fe86563f386ee27077f55ddf283cccdd6c89aecd1488759" -> "sha256:81025acfdc972659c3b542a09a1fc5491140609276c20dc7ca8476181aa5f05d" [label=""];
  "sha256:81025acfdc972659c3b542a09a1fc5491140609276c20dc7ca8476181aa5f05d" -> "sha256:50ae0e3bcbb26e3d81e8ea3860c668a1945c3e9c5aee0267b09bb96a2918e375" [label=""];
}

