[app/sources/337127414.Dockerfile]
digraph {
  "sha256:453962a21aa5851da51babd40470e81d9ec6f05198328e7a05896acbb8d256bc" [label="local://context" shape="ellipse"];
  "sha256:fa023c3f4b0688e70bb045ac81570239bef0fd35b7bacd2a20d333b89d315f37" [label="docker-image://docker.io/openrasp/centos7:latest" shape="ellipse"];
  "sha256:11e6a34bd48d4b9ae4982c75c1a4595fefe2b2089052255f791781f0eac25817" [label="/bin/sh -c yum install -y epel-release \t&& curl https://packages.baidu.com/app/remi/remi-release-7.rpm -o remi-release-7.rpm \t&& rpm -ivh remi-release-7.rpm \t&& rm -f remi-release-7.rpm" shape="box"];
  "sha256:a266a4202a5ffd7563ef8185c7d4caa83f85256d13c22a875ad63bff8b7a49b8" [label="/bin/sh -c yum install -y php73 php73-fpm php73-php php73-php-fpm php73-php-cli \tphp73-php-mysqlnd php73-php-gd php73-php-soap php73-php-bcmath \tphp73-php-mcrypt php73-php-mbstring php73-php-xml php73-php-pecl-yaml \tphp73-php-ioncube-loader php73-php-pecl-xdebug php73-php-intl" shape="box"];
  "sha256:6acfb6798ac49e9e2a5a18126d72b6bfe766b01dd2190674c635187af3699301" [label="/bin/sh -c mv /etc/opt/remi/php73/php.d/15-xdebug.ini /etc/opt/remi/php73/php.d/15-xdebug.ini.bak" shape="box"];
  "sha256:b9ecd7a67db48ef2e594edf264817bafa4c76ecefc23588d0997514d945a29c5" [label="/bin/sh -c ln -s /opt/remi/php73/root/bin/php /usr/bin" shape="box"];
  "sha256:6212b6189a74fe3030b794c8f19d9e4ebb849148cf54f8d2fe60440a04f4a85e" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php \t&& mv composer.phar /usr/bin/composer" shape="box"];
  "sha256:aae96c64bea0c363587775626dcc9eb14d8490ca1f39b1ece0121d269e89ea00" [label="copy{src=/index.php, dest=/var/www/html/index.php}" shape="note"];
  "sha256:c5399798f628162896774c84a6a68a0091f5f8a0157d55d2f0488df3a1e47daa" [label="copy{src=/*.sh, dest=/root/}" shape="note"];
  "sha256:08602b59ca9390c897adac945f15fe90d24dfab6706b4304474bf9fe65fbaf51" [label="sha256:08602b59ca9390c897adac945f15fe90d24dfab6706b4304474bf9fe65fbaf51" shape="plaintext"];
  "sha256:fa023c3f4b0688e70bb045ac81570239bef0fd35b7bacd2a20d333b89d315f37" -> "sha256:11e6a34bd48d4b9ae4982c75c1a4595fefe2b2089052255f791781f0eac25817" [label=""];
  "sha256:11e6a34bd48d4b9ae4982c75c1a4595fefe2b2089052255f791781f0eac25817" -> "sha256:a266a4202a5ffd7563ef8185c7d4caa83f85256d13c22a875ad63bff8b7a49b8" [label=""];
  "sha256:a266a4202a5ffd7563ef8185c7d4caa83f85256d13c22a875ad63bff8b7a49b8" -> "sha256:6acfb6798ac49e9e2a5a18126d72b6bfe766b01dd2190674c635187af3699301" [label=""];
  "sha256:6acfb6798ac49e9e2a5a18126d72b6bfe766b01dd2190674c635187af3699301" -> "sha256:b9ecd7a67db48ef2e594edf264817bafa4c76ecefc23588d0997514d945a29c5" [label=""];
  "sha256:b9ecd7a67db48ef2e594edf264817bafa4c76ecefc23588d0997514d945a29c5" -> "sha256:6212b6189a74fe3030b794c8f19d9e4ebb849148cf54f8d2fe60440a04f4a85e" [label=""];
  "sha256:6212b6189a74fe3030b794c8f19d9e4ebb849148cf54f8d2fe60440a04f4a85e" -> "sha256:aae96c64bea0c363587775626dcc9eb14d8490ca1f39b1ece0121d269e89ea00" [label=""];
  "sha256:453962a21aa5851da51babd40470e81d9ec6f05198328e7a05896acbb8d256bc" -> "sha256:aae96c64bea0c363587775626dcc9eb14d8490ca1f39b1ece0121d269e89ea00" [label=""];
  "sha256:aae96c64bea0c363587775626dcc9eb14d8490ca1f39b1ece0121d269e89ea00" -> "sha256:c5399798f628162896774c84a6a68a0091f5f8a0157d55d2f0488df3a1e47daa" [label=""];
  "sha256:453962a21aa5851da51babd40470e81d9ec6f05198328e7a05896acbb8d256bc" -> "sha256:c5399798f628162896774c84a6a68a0091f5f8a0157d55d2f0488df3a1e47daa" [label=""];
  "sha256:c5399798f628162896774c84a6a68a0091f5f8a0157d55d2f0488df3a1e47daa" -> "sha256:08602b59ca9390c897adac945f15fe90d24dfab6706b4304474bf9fe65fbaf51" [label=""];
}

