[app/sources/218097315.Dockerfile]
digraph {
  "sha256:5518638196890bfd034de0a42daff17992a8aba0a8cbb3644e70d32a12d503a1" [label="local://context" shape="ellipse"];
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" [label="docker-image://docker.io/library/php:7.1-fpm" shape="ellipse"];
  "sha256:91653f1478ef4a14612741d0e595576fb1fbb35f263f270b5b74c674ba33aae6" [label="/bin/sh -c apt-get update -qq && apt-get install -qqy     sudo     wget     git     apt-utils     acl     openssl     nano     htop     unzip     tzdata     netcat     cron     libicu-dev     libmcrypt-dev     libfreetype6-dev libjpeg-dev     apt-transport-https lsb-release ca-certificates     software-properties-common python-software-properties     libbz2-dev     && echo \"Europe/Paris\" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata     && echo 'alias ll=\"ls -lah --color=auto\"' >> /etc/bash.bashrc     && docker-php-ext-configure intl     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/     && docker-php-ext-install        iconv        mcrypt        intl        pdo        pdo_mysql        mbstring        opcache        zip        gd        exif        bz2     && usermod -u 1000 www-data     && groupmod -g 1000 www-data     && find / -user 33 -exec chown -h 1000 {} \\; || true     && find / -group 33 -exec chgrp -h 1000 {} \\; || true     && usermod -g 1000 www-data" shape="box"];
  "sha256:b5e54e0f68465627d90ebe4489d5615a49b9b9ec738a004dc1f0eae8b71e9f69" [label="copy{src=/logrotate/symfony, dest=/etc/logrotate.d/symfony}" shape="note"];
  "sha256:263bfa925bae15dd15a6320f38e1c490ac7ca3d707b31198b82ef4d637ab997b" [label="copy{src=/logrotate/php, dest=/etc/logrotate.d/php}" shape="note"];
  "sha256:aa39b7e3f832bafe37772392870d0668a727e3d221ec867277aab6d6978552e6" [label="copy{src=/logrotate/cron, dest=/etc/periodic/daily/logrotate-cron}" shape="note"];
  "sha256:0e0737ceaeade425c29efa3729728c1d69a364af8cdc665a6a3669db1e566ed4" [label="copy{src=/php/*.ini, dest=/usr/local/etc/php/conf.d/}" shape="note"];
  "sha256:ad057d2320c00c574fc6dcd1b8f2ba9c8c404cc4b05aa67600410caa4f862e35" [label="copy{src=/php/php.ini, dest=/usr/local/etc/php/php.ini}" shape="note"];
  "sha256:0e8b12535555cddca2cc2c1be621acd7cd1f1b8b473d9b6507418711d9a9b61c" [label="copy{src=/script/start.sh, dest=/root/start.sh}" shape="note"];
  "sha256:94dbe7b18acd6cc6ee48054711d15adcf1049c0fda380e1fa44f6d8a8cf580e0" [label="copy{src=/script/entry.sh, dest=/root/entry.sh}" shape="note"];
  "sha256:4e88ffe233637d0a05ddf21fe3aee25f90d4fd05253359ce31353137193fd40e" [label="/bin/sh -c chmod +x /root/start.sh /root/entry.sh   && chmod +x /etc/periodic/daily/logrotate-cron" shape="box"];
  "sha256:4645e064f2cfa9e82dba257c6cce7a2efda12b08a7d2b313e3180f2699131ffd" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:2b6af65d85f806b0ec950d2bc9ee96c96ebc93c06677c5194a1036df8e66e380" [label="sha256:2b6af65d85f806b0ec950d2bc9ee96c96ebc93c06677c5194a1036df8e66e380" shape="plaintext"];
  "sha256:469de9dcd442ea5b60fda4bc05f7e9661858bf288796fb9783724187ded32870" -> "sha256:91653f1478ef4a14612741d0e595576fb1fbb35f263f270b5b74c674ba33aae6" [label=""];
  "sha256:91653f1478ef4a14612741d0e595576fb1fbb35f263f270b5b74c674ba33aae6" -> "sha256:b5e54e0f68465627d90ebe4489d5615a49b9b9ec738a004dc1f0eae8b71e9f69" [label=""];
  "sha256:5518638196890bfd034de0a42daff17992a8aba0a8cbb3644e70d32a12d503a1" -> "sha256:b5e54e0f68465627d90ebe4489d5615a49b9b9ec738a004dc1f0eae8b71e9f69" [label=""];
  "sha256:b5e54e0f68465627d90ebe4489d5615a49b9b9ec738a004dc1f0eae8b71e9f69" -> "sha256:263bfa925bae15dd15a6320f38e1c490ac7ca3d707b31198b82ef4d637ab997b" [label=""];
  "sha256:5518638196890bfd034de0a42daff17992a8aba0a8cbb3644e70d32a12d503a1" -> "sha256:263bfa925bae15dd15a6320f38e1c490ac7ca3d707b31198b82ef4d637ab997b" [label=""];
  "sha256:263bfa925bae15dd15a6320f38e1c490ac7ca3d707b31198b82ef4d637ab997b" -> "sha256:aa39b7e3f832bafe37772392870d0668a727e3d221ec867277aab6d6978552e6" [label=""];
  "sha256:5518638196890bfd034de0a42daff17992a8aba0a8cbb3644e70d32a12d503a1" -> "sha256:aa39b7e3f832bafe37772392870d0668a727e3d221ec867277aab6d6978552e6" [label=""];
  "sha256:aa39b7e3f832bafe37772392870d0668a727e3d221ec867277aab6d6978552e6" -> "sha256:0e0737ceaeade425c29efa3729728c1d69a364af8cdc665a6a3669db1e566ed4" [label=""];
  "sha256:5518638196890bfd034de0a42daff17992a8aba0a8cbb3644e70d32a12d503a1" -> "sha256:0e0737ceaeade425c29efa3729728c1d69a364af8cdc665a6a3669db1e566ed4" [label=""];
  "sha256:0e0737ceaeade425c29efa3729728c1d69a364af8cdc665a6a3669db1e566ed4" -> "sha256:ad057d2320c00c574fc6dcd1b8f2ba9c8c404cc4b05aa67600410caa4f862e35" [label=""];
  "sha256:5518638196890bfd034de0a42daff17992a8aba0a8cbb3644e70d32a12d503a1" -> "sha256:ad057d2320c00c574fc6dcd1b8f2ba9c8c404cc4b05aa67600410caa4f862e35" [label=""];
  "sha256:ad057d2320c00c574fc6dcd1b8f2ba9c8c404cc4b05aa67600410caa4f862e35" -> "sha256:0e8b12535555cddca2cc2c1be621acd7cd1f1b8b473d9b6507418711d9a9b61c" [label=""];
  "sha256:5518638196890bfd034de0a42daff17992a8aba0a8cbb3644e70d32a12d503a1" -> "sha256:0e8b12535555cddca2cc2c1be621acd7cd1f1b8b473d9b6507418711d9a9b61c" [label=""];
  "sha256:0e8b12535555cddca2cc2c1be621acd7cd1f1b8b473d9b6507418711d9a9b61c" -> "sha256:94dbe7b18acd6cc6ee48054711d15adcf1049c0fda380e1fa44f6d8a8cf580e0" [label=""];
  "sha256:5518638196890bfd034de0a42daff17992a8aba0a8cbb3644e70d32a12d503a1" -> "sha256:94dbe7b18acd6cc6ee48054711d15adcf1049c0fda380e1fa44f6d8a8cf580e0" [label=""];
  "sha256:94dbe7b18acd6cc6ee48054711d15adcf1049c0fda380e1fa44f6d8a8cf580e0" -> "sha256:4e88ffe233637d0a05ddf21fe3aee25f90d4fd05253359ce31353137193fd40e" [label=""];
  "sha256:4e88ffe233637d0a05ddf21fe3aee25f90d4fd05253359ce31353137193fd40e" -> "sha256:4645e064f2cfa9e82dba257c6cce7a2efda12b08a7d2b313e3180f2699131ffd" [label=""];
  "sha256:4645e064f2cfa9e82dba257c6cce7a2efda12b08a7d2b313e3180f2699131ffd" -> "sha256:2b6af65d85f806b0ec950d2bc9ee96c96ebc93c06677c5194a1036df8e66e380" [label=""];
}

