[app/sources/462009975.Dockerfile]
digraph {
  "sha256:686186c61460d3a98a9ee679e507dd07ab5564a8cb4d93c37382e750e34c1a2a" [label="local://context" shape="ellipse"];
  "sha256:166dc16950532a27811166a18af60a82f2102e90593121bb79761bf0da4ed99e" [label="docker-image://docker.io/dlandon/baseimage:latest" shape="ellipse"];
  "sha256:e2e8c689a274432e6ffdc357825b8e2dc340bb409d047e4990e791ba214f0b78" [label="copy{src=/init, dest=/etc/my_init.d/}" shape="note"];
  "sha256:3f34fef78f33ccb3d2ea4e3910c64e188edcdc17a2566fe12672922717e15167" [label="copy{src=/defaults, dest=/root/}" shape="note"];
  "sha256:f60f00567e8b19e7b000e260e01f668e632da13b22797d04048f8a02251bb347" [label="copy{src=/zmeventnotification/zmeventnotification.pl, dest=/usr/bin/}" shape="note"];
  "sha256:4a156734eb2954ffb321a2c4159c2fa0c1138e32036817a07768ada5b81932f2" [label="copy{src=/zmeventnotification/zmeventnotification.ini, dest=/root/}" shape="note"];
  "sha256:d15e770a7364e7b3c2310221b6c875e402e89ad81537e7fb96456784cd9920e6" [label="copy{src=/zmeventnotification/setup.py, dest=/usr/bin/}" shape="note"];
  "sha256:da0f01656b3e10bee0250021537aa8836dc3041ebb975dbd8bc96e446013a67b" [label="copy{src=/zmeventnotification/zmes_hook_helpers, dest=/usr/bin/zmes_hook_helpers/}" shape="note"];
  "sha256:98ac81a99464a180b908e42e976379fdc328f23d59209ead7d29609da5c1e64f" [label="/bin/sh -c add-apt-repository -y ppa:iconnor/zoneminder-$ZM_VERS && \tadd-apt-repository ppa:ondrej/php && \tapt-get update && \tapt-get -y upgrade -o Dpkg::Options::=\"--force-confold\" && \tapt-get -y dist-upgrade && \tapt-get -y install apache2 mariadb-server && \tapt-get -y install ssmtp mailutils net-tools libav-tools wget sudo make && \tapt-get -y install php$PHP_VERS php$PHP_VERS-fpm libapache2-mod-php$PHP_VERS php$PHP_VERS-mysql php$PHP_VERS-gd && \tapt-get -y install libcrypt-mysql-perl libyaml-perl libjson-perl && \tapt-get -y install --no-install-recommends libvlc-dev libvlccore-dev vlc && \tapt-get -y install zoneminder" shape="box"];
  "sha256:fd5bec58d60cffff42cb27afeb65cb6ce1b4673914260b86245893aabfc83411" [label="/bin/sh -c rm /etc/mysql/my.cnf && \tcp /etc/mysql/mariadb.conf.d/50-server.cnf /etc/mysql/my.cnf && \tadduser www-data video && \ta2enmod php$PHP_VERS proxy_fcgi ssl rewrite expires headers && \ta2enconf php$PHP_VERS-fpm zoneminder && \techo \"extension=apcu.so\" > /etc/php/$PHP_VERS/mods-available/apcu.ini && \techo \"extension=mcrypt.so\" > /etc/php/$PHP_VERS/mods-available/mcrypt.ini && \tperl -MCPAN -e \"force install Net::WebSocket::Server\" && \tperl -MCPAN -e \"force install LWP::Protocol::https\" && \tperl -MCPAN -e \"force install Config::IniFiles\" && \tperl -MCPAN -e \"force install Net::MQTT::Simple\" && \tperl -MCPAN -e \"force install Net::MQTT::Simple::Auth\"" shape="box"];
  "sha256:a9c14e556c01ce9bdaccb8b4ee498d84709273ebeaabd97b30f60632aa7c78d7" [label="/bin/sh -c cd /root && \twget www.andywilcock.com/code/cambozola/cambozola-latest.tar.gz && \ttar xvf cambozola-latest.tar.gz && \tcp cambozola*/dist/cambozola.jar /usr/share/zoneminder/www && \trm -rf cambozola*/ && \trm -rf cambozola-latest.tar.gz && \tchmod 775 /usr/share/zoneminder/www/cambozola.jar && \tchown -R www-data:www-data /usr/share/zoneminder/ && \techo \"ServerName localhost\" >> /etc/apache2/apache2.conf && \tsed -i \"s|^;date.timezone =.*|date.timezone = ${TZ}|\" /etc/php/$PHP_VERS/apache2/php.ini && \tservice mysql start && \tmysql -uroot < /usr/share/zoneminder/db/zm_create.sql && \tmysql -uroot -e \"grant all on zm.* to 'zmuser'@localhost identified by 'zmpass';\" && \tmysqladmin -uroot reload && \tmysql -sfu root < \"mysql_secure_installation.sql\" && \trm mysql_secure_installation.sql && \tmysql -sfu root < \"mysql_defaults.sql\" && \trm mysql_defaults.sql" shape="box"];
  "sha256:7c4e36c044c7a44843eabc65c6bf492bf34343547e4af95d4e4cf54abcf2c9f5" [label="/bin/sh -c mv /root/zoneminder /etc/init.d/zoneminder && \tchmod +x /etc/init.d/zoneminder && \tservice mysql restart && \tsleep 5 && \tservice apache2 restart && \tservice zoneminder start" shape="box"];
  "sha256:369e5bd57c8b7b481d9ecbdf240197c8adf04ee57f4354df85c0712c9f2b0a68" [label="/bin/sh -c systemd-tmpfiles --create zoneminder.conf && \tmv /root/default-ssl.conf /etc/apache2/sites-enabled/default-ssl.conf && \tmkdir /etc/apache2/ssl/ && \tchmod a+x /usr/bin/zmeventnotification.pl && \tchmod a+x /usr/bin/setup.py && \tchmod a+x /usr/bin/zmes_hook_helpers/* && \tmkdir -p /var/lib/zmeventnotification/images && \tchown -R www-data:www-data /var/lib/zmeventnotification/ && \tchmod -R +x /etc/my_init.d/ && \tcp -p /etc/zm/zm.conf /root/zm.conf && \techo \"#!/bin/sh\\n\\n/usr/bin/zmaudit.pl -f\" >> /etc/cron.weekly/zmaudit && \tchmod +x /etc/cron.weekly/zmaudit" shape="box"];
  "sha256:c7e93b8831969a0cf001cbc9d95f50913b1678b84144dc2455dea277453ef6f4" [label="/bin/sh -c apt-get -y remove wget make && \tapt-get -y clean && \tapt-get -y autoremove && \trm -rf /tmp/* /var/tmp/*" shape="box"];
  "sha256:307a8083af77c3b3ece18e15a1b6ba2caa98f5ed0dc510d437cd04ed7a6971bc" [label="sha256:307a8083af77c3b3ece18e15a1b6ba2caa98f5ed0dc510d437cd04ed7a6971bc" shape="plaintext"];
  "sha256:166dc16950532a27811166a18af60a82f2102e90593121bb79761bf0da4ed99e" -> "sha256:e2e8c689a274432e6ffdc357825b8e2dc340bb409d047e4990e791ba214f0b78" [label=""];
  "sha256:686186c61460d3a98a9ee679e507dd07ab5564a8cb4d93c37382e750e34c1a2a" -> "sha256:e2e8c689a274432e6ffdc357825b8e2dc340bb409d047e4990e791ba214f0b78" [label=""];
  "sha256:e2e8c689a274432e6ffdc357825b8e2dc340bb409d047e4990e791ba214f0b78" -> "sha256:3f34fef78f33ccb3d2ea4e3910c64e188edcdc17a2566fe12672922717e15167" [label=""];
  "sha256:686186c61460d3a98a9ee679e507dd07ab5564a8cb4d93c37382e750e34c1a2a" -> "sha256:3f34fef78f33ccb3d2ea4e3910c64e188edcdc17a2566fe12672922717e15167" [label=""];
  "sha256:3f34fef78f33ccb3d2ea4e3910c64e188edcdc17a2566fe12672922717e15167" -> "sha256:f60f00567e8b19e7b000e260e01f668e632da13b22797d04048f8a02251bb347" [label=""];
  "sha256:686186c61460d3a98a9ee679e507dd07ab5564a8cb4d93c37382e750e34c1a2a" -> "sha256:f60f00567e8b19e7b000e260e01f668e632da13b22797d04048f8a02251bb347" [label=""];
  "sha256:f60f00567e8b19e7b000e260e01f668e632da13b22797d04048f8a02251bb347" -> "sha256:4a156734eb2954ffb321a2c4159c2fa0c1138e32036817a07768ada5b81932f2" [label=""];
  "sha256:686186c61460d3a98a9ee679e507dd07ab5564a8cb4d93c37382e750e34c1a2a" -> "sha256:4a156734eb2954ffb321a2c4159c2fa0c1138e32036817a07768ada5b81932f2" [label=""];
  "sha256:4a156734eb2954ffb321a2c4159c2fa0c1138e32036817a07768ada5b81932f2" -> "sha256:d15e770a7364e7b3c2310221b6c875e402e89ad81537e7fb96456784cd9920e6" [label=""];
  "sha256:686186c61460d3a98a9ee679e507dd07ab5564a8cb4d93c37382e750e34c1a2a" -> "sha256:d15e770a7364e7b3c2310221b6c875e402e89ad81537e7fb96456784cd9920e6" [label=""];
  "sha256:d15e770a7364e7b3c2310221b6c875e402e89ad81537e7fb96456784cd9920e6" -> "sha256:da0f01656b3e10bee0250021537aa8836dc3041ebb975dbd8bc96e446013a67b" [label=""];
  "sha256:686186c61460d3a98a9ee679e507dd07ab5564a8cb4d93c37382e750e34c1a2a" -> "sha256:da0f01656b3e10bee0250021537aa8836dc3041ebb975dbd8bc96e446013a67b" [label=""];
  "sha256:da0f01656b3e10bee0250021537aa8836dc3041ebb975dbd8bc96e446013a67b" -> "sha256:98ac81a99464a180b908e42e976379fdc328f23d59209ead7d29609da5c1e64f" [label=""];
  "sha256:98ac81a99464a180b908e42e976379fdc328f23d59209ead7d29609da5c1e64f" -> "sha256:fd5bec58d60cffff42cb27afeb65cb6ce1b4673914260b86245893aabfc83411" [label=""];
  "sha256:fd5bec58d60cffff42cb27afeb65cb6ce1b4673914260b86245893aabfc83411" -> "sha256:a9c14e556c01ce9bdaccb8b4ee498d84709273ebeaabd97b30f60632aa7c78d7" [label=""];
  "sha256:a9c14e556c01ce9bdaccb8b4ee498d84709273ebeaabd97b30f60632aa7c78d7" -> "sha256:7c4e36c044c7a44843eabc65c6bf492bf34343547e4af95d4e4cf54abcf2c9f5" [label=""];
  "sha256:7c4e36c044c7a44843eabc65c6bf492bf34343547e4af95d4e4cf54abcf2c9f5" -> "sha256:369e5bd57c8b7b481d9ecbdf240197c8adf04ee57f4354df85c0712c9f2b0a68" [label=""];
  "sha256:369e5bd57c8b7b481d9ecbdf240197c8adf04ee57f4354df85c0712c9f2b0a68" -> "sha256:c7e93b8831969a0cf001cbc9d95f50913b1678b84144dc2455dea277453ef6f4" [label=""];
  "sha256:c7e93b8831969a0cf001cbc9d95f50913b1678b84144dc2455dea277453ef6f4" -> "sha256:307a8083af77c3b3ece18e15a1b6ba2caa98f5ed0dc510d437cd04ed7a6971bc" [label=""];
}

