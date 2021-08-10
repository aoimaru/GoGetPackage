[app/sources/157111344.Dockerfile]
digraph {
  "sha256:bafebe5484849b5d3566c5b1046bf49a87a379fd3d6d5e78fd0cb795d0d8b156" [label="local://context" shape="ellipse"];
  "sha256:c512fbd10831565724cb88c31df602d7670dbc7af660501e47a785a1ce37cba3" [label="docker-image://docker.io/library/php:7.2.19-apache-stretch" shape="ellipse"];
  "sha256:7927adce614b2bfa93d933f3901f72124b9b2b1b0c48d2dda28e234826c590ee" [label="/bin/sh -c echo \"deb http://deb.debian.org/debian jessie main\" > /etc/apt/sources.list &&    echo \"deb http://security.debian.org jessie/updates main\" >> /etc/apt/sources.list" shape="box"];
  "sha256:4179e07d351d0ac392ad63c48a1d7745cc13039d0c3c9b9b9d591550824acde3" [label="/bin/sh -c apt-get update     && apt-get install -y         libfreetype6-dev         libjpeg62-turbo-dev         libmcrypt-dev         libpng-dev         openssl libssl-dev         libxml2-dev         unzip         git         vim         libicu-dev         ssmtp         mailutils     && docker-php-ext-install -j$(nproc) iconv pdo_mysql mbstring xml tokenizer zip intl     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/     && docker-php-ext-install -j$(nproc) gd \t&& apt-get clean \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c73d159f2a8174592db6b7c4b59a2abe9fbbfa20eb8c4e438e87074670afd0fd" [label="/bin/sh -c ln -s /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/" shape="box"];
  "sha256:914c38c50690c0b097bb92c16757b879c55d3f4a63b9a814ec3e97b4b77840fd" [label="/bin/sh -c ln -s /etc/apache2/mods-available/ssl.load /etc/apache2/mods-enabled/" shape="box"];
  "sha256:e5c298b61f37b32b48f46f7d3e17b6f71bc6069d513916c6b8996d13544ebae1" [label="/bin/sh -c ln -s /etc/apache2/sites-available/default-ssl.conf /etc/apache2/sites-enabled/" shape="box"];
  "sha256:3e11ff786389330f24615113bad08a7be93f0fabb3280a9c277ea2d2767a5693" [label="copy{src=/apache/ssl/ssl-cert-snakeoil.key, dest=/etc/ssl/private/}" shape="note"];
  "sha256:1106275eff853ba67225527354242ada92430dff710a79483e1921ded7ab779b" [label="copy{src=/apache/ssl/ssl-cert-snakeoil.pem, dest=/etc/ssl/certs/}" shape="note"];
  "sha256:1ac3b1b81443fee8e974b7d45b71db649973911b05205530f804c3552f5805f2" [label="/bin/sh -c chmod 400 /etc/ssl/private/ssl-cert-snakeoil.key \t&& chmod 400 /etc/ssl/certs/ssl-cert-snakeoil.pem" shape="box"];
  "sha256:a90473b5c6dffa56f4e29683d40039db16586935a587808330c0d6c3fa466b68" [label="/bin/sh -c echo 'sendmail_path = \"/usr/sbin/ssmtp -t\"' > /usr/local/etc/php/conf.d/mail.ini \t&& echo \"memory_limit = 256M\" >> /usr/local/etc/php/php.ini     && echo \"post_max_size = 256M\" >> /usr/local/etc/php/php.ini     && echo \"upload_max_filesize = 256M\" >> /usr/local/etc/php/php.ini     && echo \"date.timezone = Asia/Tokyo\" >> /usr/local/etc/php/php.ini \t&& yes | pecl install xdebug mcrypt     && echo \"zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)\" > /usr/local/etc/php/conf.d/xdebug.ini     && echo \"xdebug.remote_enable=on\" >> /usr/local/etc/php/conf.d/xdebug.ini     && echo \"xdebug.remote_autostart=off\" >> /usr/local/etc/php/conf.d/xdebug.ini     && echo \"xdebug.remote_host=host.docker.internal\" >> /usr/local/etc/php/conf.d/xdebug.ini" shape="box"];
  "sha256:da5e4c744141d7e2679d08074f1d21cd441f52733f871377d8ba8805adcebc5b" [label="/bin/sh -c echo \"FromLineOverride=YES\" > /etc/ssmtp/ssmtp.conf  \t&& echo \"Mailhub=bc-smtp:1025\" >> /etc/ssmtp/ssmtp.conf" shape="box"];
  "sha256:c94c76cc81b42433fc3b6e1b9a4f70bb94a55fa33ea1c56fc20f2da3fbe27fc4" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php     && mv composer.phar /usr/local/bin/composer     && composer self-update" shape="box"];
  "sha256:0edd121b37ba9459ee0bf84d1ea809215f3deaac96579dce35ce34a41fbc7876" [label="sha256:0edd121b37ba9459ee0bf84d1ea809215f3deaac96579dce35ce34a41fbc7876" shape="plaintext"];
  "sha256:c512fbd10831565724cb88c31df602d7670dbc7af660501e47a785a1ce37cba3" -> "sha256:7927adce614b2bfa93d933f3901f72124b9b2b1b0c48d2dda28e234826c590ee" [label=""];
  "sha256:7927adce614b2bfa93d933f3901f72124b9b2b1b0c48d2dda28e234826c590ee" -> "sha256:4179e07d351d0ac392ad63c48a1d7745cc13039d0c3c9b9b9d591550824acde3" [label=""];
  "sha256:4179e07d351d0ac392ad63c48a1d7745cc13039d0c3c9b9b9d591550824acde3" -> "sha256:c73d159f2a8174592db6b7c4b59a2abe9fbbfa20eb8c4e438e87074670afd0fd" [label=""];
  "sha256:c73d159f2a8174592db6b7c4b59a2abe9fbbfa20eb8c4e438e87074670afd0fd" -> "sha256:914c38c50690c0b097bb92c16757b879c55d3f4a63b9a814ec3e97b4b77840fd" [label=""];
  "sha256:914c38c50690c0b097bb92c16757b879c55d3f4a63b9a814ec3e97b4b77840fd" -> "sha256:e5c298b61f37b32b48f46f7d3e17b6f71bc6069d513916c6b8996d13544ebae1" [label=""];
  "sha256:e5c298b61f37b32b48f46f7d3e17b6f71bc6069d513916c6b8996d13544ebae1" -> "sha256:3e11ff786389330f24615113bad08a7be93f0fabb3280a9c277ea2d2767a5693" [label=""];
  "sha256:bafebe5484849b5d3566c5b1046bf49a87a379fd3d6d5e78fd0cb795d0d8b156" -> "sha256:3e11ff786389330f24615113bad08a7be93f0fabb3280a9c277ea2d2767a5693" [label=""];
  "sha256:3e11ff786389330f24615113bad08a7be93f0fabb3280a9c277ea2d2767a5693" -> "sha256:1106275eff853ba67225527354242ada92430dff710a79483e1921ded7ab779b" [label=""];
  "sha256:bafebe5484849b5d3566c5b1046bf49a87a379fd3d6d5e78fd0cb795d0d8b156" -> "sha256:1106275eff853ba67225527354242ada92430dff710a79483e1921ded7ab779b" [label=""];
  "sha256:1106275eff853ba67225527354242ada92430dff710a79483e1921ded7ab779b" -> "sha256:1ac3b1b81443fee8e974b7d45b71db649973911b05205530f804c3552f5805f2" [label=""];
  "sha256:1ac3b1b81443fee8e974b7d45b71db649973911b05205530f804c3552f5805f2" -> "sha256:a90473b5c6dffa56f4e29683d40039db16586935a587808330c0d6c3fa466b68" [label=""];
  "sha256:a90473b5c6dffa56f4e29683d40039db16586935a587808330c0d6c3fa466b68" -> "sha256:da5e4c744141d7e2679d08074f1d21cd441f52733f871377d8ba8805adcebc5b" [label=""];
  "sha256:da5e4c744141d7e2679d08074f1d21cd441f52733f871377d8ba8805adcebc5b" -> "sha256:c94c76cc81b42433fc3b6e1b9a4f70bb94a55fa33ea1c56fc20f2da3fbe27fc4" [label=""];
  "sha256:c94c76cc81b42433fc3b6e1b9a4f70bb94a55fa33ea1c56fc20f2da3fbe27fc4" -> "sha256:0edd121b37ba9459ee0bf84d1ea809215f3deaac96579dce35ce34a41fbc7876" [label=""];
}

