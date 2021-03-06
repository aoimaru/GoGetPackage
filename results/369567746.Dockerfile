[app/sources/369567746.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:01a7bd915ff572b752331a89fb5b10118d55e265acd7da70f58813bd0de5d606" [label="/bin/sh -c yum -y update &&     yum -y install --setopt=tsflags=nodocs epel-release &&     rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm &&     yum clean all" shape="box"];
  "sha256:fc006a3425340248bf21b1a0aeb9beb46e25706cbe420ac1e18c412f00029792" [label="/bin/sh -c rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7 /etc/pki/rpm-gpg/RPM-GPG-KEY-remi /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7" shape="box"];
  "sha256:7eea8781894d529fc19efa4435e37f081baff860163ae67052a04740adb27ac3" [label="/bin/sh -c yum -y install         vim-enhanced         wget         git         git-gui         unzip         p7zip &&     yum clean all" shape="box"];
  "sha256:b31223095c7ed1cd9889255c3e94c9d8c51819fb09da2eabf06f3fdf237360b5" [label="/bin/sh -c yum -y --setopt=tsflags=nodocs install         httpd         mod_ssl         openssl &&     yum clean all" shape="box"];
  "sha256:ae577200c7e3e75ef0c1b6e253d3fb53a6538288bd9713de1b495d3b6d442c55" [label="/bin/sh -c yum -y --enablerepo=remi-php70 install         php-cli         php         php-fpm         php-common         php-mysqlnd         php-xml         php-adodb         php-curl         php-gd         php-mcrypt         php-ldap         php-imap         php-soap         php-mbstring         php-pecl-memcache         php-pecl-memcached         php-pecl-zip         php-pecl-xdebug         php-pear         php-pdo         php-bcmath         php-process         php-tidy         php-intl         phpmyadmin &&     yum clean all" shape="box"];
  "sha256:87d32d7cfe397183dc5dc3f976cd307a230126f2229799b2f7fc43b111b339af" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:d624f5476cd761afc03951fe310e5132ed0764b54aebfac43d7adf6a9a1aee62" [label="/bin/sh -c echo 'date.timezone=Europe/Paris' > /etc/php.d/00-docker-php-date-timezone.ini" shape="box"];
  "sha256:08d06a4f4ec627bae63157597c61b1e81c4ab35b54dd429e4c8d2b3076b9a5b6" [label="/bin/sh -c ln -s /usr/share/phpMyAdmin/ /var/www/phpmyadmin &&     sed -i \"s/localhost/mariadb/\" /etc/phpMyAdmin/config.inc.php" shape="box"];
  "sha256:732a15b17e99eecc1907ce03ded4bf6f7a33664411c8f5fa9295aeedd7c19cc5" [label="/bin/sh -c sed -i \"s/Require ip 127.0.0.1/Require ip 172.17/\" /etc/httpd/conf.d/phpMyAdmin.conf &&     sed -i \"s/Allow from 127.0.0.1/Allow from 172.17/\" /etc/httpd/conf.d/phpMyAdmin.conf" shape="box"];
  "sha256:b2ed2b0dc4991a94fe8ad6cd8831ee7e68313d2aa617ba2c8292432b452c9f60" [label="/bin/sh -c set -xe     && cd /var/www/html     && wget ${MANTIS_URL}     && tar -xvf ${MANTIS_FILE}     && rm ${MANTIS_FILE}     && mv mantisbt-${MANTIS_VER} mantis     && chown -R apache:apache mantis     && chmod -R g+w mantis" shape="box"];
  "sha256:e0814bb8a3c4e00ed3eaf3089fa703f0f088f4986acbe2a1e4e66408833b8dc7" [label="/bin/sh -c set -xe     && cd /var/www/html     && wget ${CODEVTT_URL} -O ${CODEVTT_FILE}     && unzip ${CODEVTT_FILE}     && rm ${CODEVTT_FILE}     && mv codevtt_v${CODEVTT_VER} codevtt     && chown -R apache:apache codevtt     && chmod -R g+w codevtt" shape="box"];
  "sha256:da3ac1435e0c20629bc1d3ee84a4fa71cff1cc6f864b6c2451298961ce2e5731" [label="/bin/sh -c set -xe     && cd /var/www/html/mantis/plugins     && ln -s /var/www/html/codevtt/mantis_plugin/mantis_2_0/CodevTT     && mkdir -p /tmp/codevtt/logs     && chown -R apache:apache /tmp/codevtt" shape="box"];
  "sha256:a954aeefe88da3a89c25667965159b3460d0550b08cc573a60b084cda55c32f0" [label="local://context" shape="ellipse"];
  "sha256:d4c63175f749f8c48ceae3d6d0482df2fd2f907abd86053b3177ab2e30accb1c" [label="copy{src=/httpd_config/ssl.conf, dest=/etc/httpd/conf.d/ssl.conf}" shape="note"];
  "sha256:932db6b43af5eeba9160b8bbc494c3a46a029839f232f090faa601c0daeb464b" [label="copy{src=/httpd_config/php.ini, dest=/etc}" shape="note"];
  "sha256:58f5d03e3344e904addb9dab22ac4ef9229797870cf50e9eddacdf3766b8b600" [label="copy{src=/mantis_config/config_inc.php, dest=/var/www/html/mantis/config}" shape="note"];
  "sha256:088329c1739d832ca77e05c928834b1e556d4172f7ad4f97825be2604989230d" [label="copy{src=/mantis_config/custom_constants_inc.php, dest=/var/www/html/mantis/config}" shape="note"];
  "sha256:820569cf165ed7825c1119caa421c7868da43452da3cefc6c0254ff1dae7b756" [label="copy{src=/mantis_config/custom_relationships_inc.php, dest=/var/www/html/mantis/config}" shape="note"];
  "sha256:040a4e82e6742627edc2d309368258cade988418c7b614b680b4921e9df82511" [label="copy{src=/mantis_config/custom_strings_inc.php, dest=/var/www/html/mantis/config}" shape="note"];
  "sha256:c0486cd831c10537cbcbf57790235212f8516b75f84b1b87c36db5ee512a1585" [label="copy{src=/codevtt_config/config.ini, dest=/var/www/html/codevtt}" shape="note"];
  "sha256:2e7837a36789a58c936709e5eb8a4a02d25734e4e78d9f6ed1f0c4b4bb30cc01" [label="copy{src=/codevtt_config/log4php.xml, dest=/var/www/html/codevtt}" shape="note"];
  "sha256:7b6f3a3507a31055b41858f1b6d45313f2c8538d6aad246782e5d0f19160b850" [label="copy{src=/index.html, dest=/var/www/html/index.html}" shape="note"];
  "sha256:f163fa75cbcfb1a5457ae64000b782054afd30dfd3bfb32179af0877c200a38f" [label="sha256:f163fa75cbcfb1a5457ae64000b782054afd30dfd3bfb32179af0877c200a38f" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:01a7bd915ff572b752331a89fb5b10118d55e265acd7da70f58813bd0de5d606" [label=""];
  "sha256:01a7bd915ff572b752331a89fb5b10118d55e265acd7da70f58813bd0de5d606" -> "sha256:fc006a3425340248bf21b1a0aeb9beb46e25706cbe420ac1e18c412f00029792" [label=""];
  "sha256:fc006a3425340248bf21b1a0aeb9beb46e25706cbe420ac1e18c412f00029792" -> "sha256:7eea8781894d529fc19efa4435e37f081baff860163ae67052a04740adb27ac3" [label=""];
  "sha256:7eea8781894d529fc19efa4435e37f081baff860163ae67052a04740adb27ac3" -> "sha256:b31223095c7ed1cd9889255c3e94c9d8c51819fb09da2eabf06f3fdf237360b5" [label=""];
  "sha256:b31223095c7ed1cd9889255c3e94c9d8c51819fb09da2eabf06f3fdf237360b5" -> "sha256:ae577200c7e3e75ef0c1b6e253d3fb53a6538288bd9713de1b495d3b6d442c55" [label=""];
  "sha256:ae577200c7e3e75ef0c1b6e253d3fb53a6538288bd9713de1b495d3b6d442c55" -> "sha256:87d32d7cfe397183dc5dc3f976cd307a230126f2229799b2f7fc43b111b339af" [label=""];
  "sha256:87d32d7cfe397183dc5dc3f976cd307a230126f2229799b2f7fc43b111b339af" -> "sha256:d624f5476cd761afc03951fe310e5132ed0764b54aebfac43d7adf6a9a1aee62" [label=""];
  "sha256:d624f5476cd761afc03951fe310e5132ed0764b54aebfac43d7adf6a9a1aee62" -> "sha256:08d06a4f4ec627bae63157597c61b1e81c4ab35b54dd429e4c8d2b3076b9a5b6" [label=""];
  "sha256:08d06a4f4ec627bae63157597c61b1e81c4ab35b54dd429e4c8d2b3076b9a5b6" -> "sha256:732a15b17e99eecc1907ce03ded4bf6f7a33664411c8f5fa9295aeedd7c19cc5" [label=""];
  "sha256:732a15b17e99eecc1907ce03ded4bf6f7a33664411c8f5fa9295aeedd7c19cc5" -> "sha256:b2ed2b0dc4991a94fe8ad6cd8831ee7e68313d2aa617ba2c8292432b452c9f60" [label=""];
  "sha256:b2ed2b0dc4991a94fe8ad6cd8831ee7e68313d2aa617ba2c8292432b452c9f60" -> "sha256:e0814bb8a3c4e00ed3eaf3089fa703f0f088f4986acbe2a1e4e66408833b8dc7" [label=""];
  "sha256:e0814bb8a3c4e00ed3eaf3089fa703f0f088f4986acbe2a1e4e66408833b8dc7" -> "sha256:da3ac1435e0c20629bc1d3ee84a4fa71cff1cc6f864b6c2451298961ce2e5731" [label=""];
  "sha256:da3ac1435e0c20629bc1d3ee84a4fa71cff1cc6f864b6c2451298961ce2e5731" -> "sha256:d4c63175f749f8c48ceae3d6d0482df2fd2f907abd86053b3177ab2e30accb1c" [label=""];
  "sha256:a954aeefe88da3a89c25667965159b3460d0550b08cc573a60b084cda55c32f0" -> "sha256:d4c63175f749f8c48ceae3d6d0482df2fd2f907abd86053b3177ab2e30accb1c" [label=""];
  "sha256:d4c63175f749f8c48ceae3d6d0482df2fd2f907abd86053b3177ab2e30accb1c" -> "sha256:932db6b43af5eeba9160b8bbc494c3a46a029839f232f090faa601c0daeb464b" [label=""];
  "sha256:a954aeefe88da3a89c25667965159b3460d0550b08cc573a60b084cda55c32f0" -> "sha256:932db6b43af5eeba9160b8bbc494c3a46a029839f232f090faa601c0daeb464b" [label=""];
  "sha256:932db6b43af5eeba9160b8bbc494c3a46a029839f232f090faa601c0daeb464b" -> "sha256:58f5d03e3344e904addb9dab22ac4ef9229797870cf50e9eddacdf3766b8b600" [label=""];
  "sha256:a954aeefe88da3a89c25667965159b3460d0550b08cc573a60b084cda55c32f0" -> "sha256:58f5d03e3344e904addb9dab22ac4ef9229797870cf50e9eddacdf3766b8b600" [label=""];
  "sha256:58f5d03e3344e904addb9dab22ac4ef9229797870cf50e9eddacdf3766b8b600" -> "sha256:088329c1739d832ca77e05c928834b1e556d4172f7ad4f97825be2604989230d" [label=""];
  "sha256:a954aeefe88da3a89c25667965159b3460d0550b08cc573a60b084cda55c32f0" -> "sha256:088329c1739d832ca77e05c928834b1e556d4172f7ad4f97825be2604989230d" [label=""];
  "sha256:088329c1739d832ca77e05c928834b1e556d4172f7ad4f97825be2604989230d" -> "sha256:820569cf165ed7825c1119caa421c7868da43452da3cefc6c0254ff1dae7b756" [label=""];
  "sha256:a954aeefe88da3a89c25667965159b3460d0550b08cc573a60b084cda55c32f0" -> "sha256:820569cf165ed7825c1119caa421c7868da43452da3cefc6c0254ff1dae7b756" [label=""];
  "sha256:820569cf165ed7825c1119caa421c7868da43452da3cefc6c0254ff1dae7b756" -> "sha256:040a4e82e6742627edc2d309368258cade988418c7b614b680b4921e9df82511" [label=""];
  "sha256:a954aeefe88da3a89c25667965159b3460d0550b08cc573a60b084cda55c32f0" -> "sha256:040a4e82e6742627edc2d309368258cade988418c7b614b680b4921e9df82511" [label=""];
  "sha256:040a4e82e6742627edc2d309368258cade988418c7b614b680b4921e9df82511" -> "sha256:c0486cd831c10537cbcbf57790235212f8516b75f84b1b87c36db5ee512a1585" [label=""];
  "sha256:a954aeefe88da3a89c25667965159b3460d0550b08cc573a60b084cda55c32f0" -> "sha256:c0486cd831c10537cbcbf57790235212f8516b75f84b1b87c36db5ee512a1585" [label=""];
  "sha256:c0486cd831c10537cbcbf57790235212f8516b75f84b1b87c36db5ee512a1585" -> "sha256:2e7837a36789a58c936709e5eb8a4a02d25734e4e78d9f6ed1f0c4b4bb30cc01" [label=""];
  "sha256:a954aeefe88da3a89c25667965159b3460d0550b08cc573a60b084cda55c32f0" -> "sha256:2e7837a36789a58c936709e5eb8a4a02d25734e4e78d9f6ed1f0c4b4bb30cc01" [label=""];
  "sha256:2e7837a36789a58c936709e5eb8a4a02d25734e4e78d9f6ed1f0c4b4bb30cc01" -> "sha256:7b6f3a3507a31055b41858f1b6d45313f2c8538d6aad246782e5d0f19160b850" [label=""];
  "sha256:a954aeefe88da3a89c25667965159b3460d0550b08cc573a60b084cda55c32f0" -> "sha256:7b6f3a3507a31055b41858f1b6d45313f2c8538d6aad246782e5d0f19160b850" [label=""];
  "sha256:7b6f3a3507a31055b41858f1b6d45313f2c8538d6aad246782e5d0f19160b850" -> "sha256:f163fa75cbcfb1a5457ae64000b782054afd30dfd3bfb32179af0877c200a38f" [label=""];
}

