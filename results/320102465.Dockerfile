[app/sources/320102465.Dockerfile]
digraph {
  "sha256:ccf350971dbf0475ce1fe80eadb8d1e35703ffca86ccbc13f4740644bcb188c5" [label="docker-image://docker.io/webdevops/base-app:centos-7@sha256:fe8248cda8ebb9efda5e1385985dd9018f52a9309538626026dee943fa39727d" shape="ellipse"];
  "sha256:91812d547eb96a3117ecdd159db92c1feed8f566d7fb8f936f7fe7927e45a7fe" [label="local://context" shape="ellipse"];
  "sha256:7e1ba4a95746606e5a6f33d2dd37dadaea076738dda811b6436710bf277d83d3" [label="copy{src=/conf, dest=/opt/docker/}" shape="note"];
  "sha256:b5fd958ed6d717bd9eae8570bf3ec177d12e683e300e4f1124acb3fac4dc812c" [label="/bin/sh -c set -x     && rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm     && yum-install         ImageMagick         GraphicsMagick         php70w-cli         php70w-fpm         php70w-common         php70w-intl         php70w-mysqlnd         php70w-pecl-memcached         php70w-mcrypt         php70w-gd         php70w-mbstring         php70w-bcmath         php70w-soap         php70w-pecl-apcu         sqlite         php70w-xmlrpc         php70w-xml         geoip         php70w-ldap         ImageMagick-devel         ImageMagick-perl         php70w-pear         php70w-devel         gcc         make         php70w-opcache         php70w-pecl-imagick     && pecl channel-update pecl.php.net     && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer     && pecl install redis     && echo \"extension=redis.so\" > /etc/php.d/redis.ini     && yum remove -y ImageMagick-devel php70w-devel gcc make     && docker-service enable syslog     && docker-service enable cron     && docker-run-bootstrap     && docker-image-cleanup" shape="box"];
  "sha256:6440cb3d7c91aa00bf310424203b6107514228332cbfc471bd4d8f9b45a76251" [label="sha256:6440cb3d7c91aa00bf310424203b6107514228332cbfc471bd4d8f9b45a76251" shape="plaintext"];
  "sha256:ccf350971dbf0475ce1fe80eadb8d1e35703ffca86ccbc13f4740644bcb188c5" -> "sha256:7e1ba4a95746606e5a6f33d2dd37dadaea076738dda811b6436710bf277d83d3" [label=""];
  "sha256:91812d547eb96a3117ecdd159db92c1feed8f566d7fb8f936f7fe7927e45a7fe" -> "sha256:7e1ba4a95746606e5a6f33d2dd37dadaea076738dda811b6436710bf277d83d3" [label=""];
  "sha256:7e1ba4a95746606e5a6f33d2dd37dadaea076738dda811b6436710bf277d83d3" -> "sha256:b5fd958ed6d717bd9eae8570bf3ec177d12e683e300e4f1124acb3fac4dc812c" [label=""];
  "sha256:b5fd958ed6d717bd9eae8570bf3ec177d12e683e300e4f1124acb3fac4dc812c" -> "sha256:6440cb3d7c91aa00bf310424203b6107514228332cbfc471bd4d8f9b45a76251" [label=""];
}

