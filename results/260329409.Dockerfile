[app/sources/260329409.Dockerfile]
digraph {
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" [label="docker-image://docker.io/library/centos:centos7" shape="ellipse"];
  "sha256:a3f31136af90673b3de8d1eb8069810fec5dd39311949246ff34e6b3cda500df" [label="local://context" shape="ellipse"];
  "sha256:034c30c28a0e54a0dc0fd3ecb1b5588cda3a82608f8282df5e6f71f0c2c0b69b" [label="copy{src=/assets/google-chrome.repo, dest=/etc/yum.repos.d}" shape="note"];
  "sha256:017cc7bde98b3e299389cf3accbf6da85e8b815fa7af755db0742bf3f8caaca8" [label="/bin/sh -c yum clean all" shape="box"];
  "sha256:e20cd0aeca3216f81f9d26cb1c77727f2a0fddb37ff5dad148ff08842c24279a" [label="/bin/sh -c rm -rf /var/cache/yum" shape="box"];
  "sha256:bc6fc3b5c14c7145d3d49e753f057377d6d478648a4e5759d8f4e002c9854c72" [label="/bin/sh -c yum -y upgrade" shape="box"];
  "sha256:7f3037ad9f51860ccd654062a07b2be5972a5e384e45a5c577bbe7d3420a2811" [label="/bin/sh -c yum -y install     epel-release" shape="box"];
  "sha256:2646cadc4d92961ddab099650f88aac4064e616af87954bd20c481f08dacb53b" [label="/bin/sh -c yum install -y     expect     gcc     gcc-c++     gnu-free-sans-fonts     google-chrome-stable     make     mariadb-server     openssl     postfix     rpm-build     rsync     sudo     vim" shape="box"];
  "sha256:7b77f1c5336129be86f2e158ee5956ced6c2ae9ed4e9695eba7fc1a1c628c0ec" [label="/bin/sh -c curl -s https://raw.githubusercontent.com/ubccr/xdmod/$BRANCH/open_xdmod/modules/xdmod/xdmod.spec.in | grep '^Requires' | awk '{$1=\"\"; print $0}' |  tr '\\n' ' ' | sed -E 's/[ \\t]+/\\n/g' | sort -u | grep '^[[:alpha:]]' | tr '\\n' ' ' | xargs yum install -y" shape="box"];
  "sha256:573af0b18666a438775c91a30432c42610dae37f3609d85317badca86b2eeec4" [label="/bin/sh -c curl -s https://raw.githubusercontent.com/ubccr/xdmod-supremm/$BRANCH/xdmod-supremm.spec.in | grep '^Requires' | awk '{$1=\"\"; print $0}' |  tr '\\n' ' ' | sed -E 's/[ \\t]+/\\n/g' | sort -u | grep '^[[:alpha:]]' | grep -v xdmod | tr '\\n' ' ' | xargs yum install -y" shape="box"];
  "sha256:5ae004c9c985717944903d5159174e69f19f5935d0e27290c8f23ffd22082a5c" [label="/bin/sh -c curl -s https://raw.githubusercontent.com/ubccr/xdmod-federated/$BRANCH/xdmod-federated.spec.in | grep '^Requires' | awk '{$1=\"\"; print $0}' |  tr '\\n' ' ' | sed -E 's/[ \\t]+/\\n/g' | sort -u | grep '^[[:alpha:]]' | grep -v xdmod | tr '\\n' ' ' | xargs yum install -y" shape="box"];
  "sha256:db9012383f7780a4cd78cec31c2aa2225b9e199261a5cd6db1533c34901a4198" [label="/bin/sh -c yum -y install https://centos7.iuscommunity.org/ius-release.rpm" shape="box"];
  "sha256:560b0744c9d67a9932f89ea41ba2e766b6994b2e74fe10828469c8f2ea9210b0" [label="/bin/sh -c yum -y install git2u" shape="box"];
  "sha256:d335279ba5a6a64d6a9cb3a92bd0c109f6672f098622f47609ab3410f13533c0" [label="/bin/sh -c yum -y remove ius-release" shape="box"];
  "sha256:7ea75d588da8cd6d32742641db1171e3a2c8f0a020e444cc631794eed27f5aa7" [label="/bin/sh -c sed -i 's/.*date.timezone[[:space:]]*=.*/date.timezone = UTC/' /etc/php.ini &&     sed -i 's/.*memory_limit[[:space:]]*=.*/memory_limit = -1/' /etc/php.ini" shape="box"];
  "sha256:bd9ea7c01209903bcd312cd6151350bdda0d85301b46b29abf40244e7359783c" [label="/bin/sh -c rm /etc/localtime && ln -s /usr/share/zoneinfo/UTC /etc/localtime" shape="box"];
  "sha256:8089b7a3b8cfd33bfbf3433f950230b25923dcbecc6c5c294efa9aea93e5466a" [label="/bin/sh -c sed -ie 's/inet_interfaces = localhost/#inet_interfaces = localhost/' /etc/postfix/main.cf  &&     sed -ie 's/smtp      inet  n       -       n       -       -       smtpd/#smtp      inet  n       -       n       -       -       smtpd/' /etc/postfix/master.cf &&     sed -ie 's/smtp      unix  -       -       n       -       -       smtp/smtp      unix  -       -       n       -       -       local/' /etc/postfix/master.cf &&     sed -ie 's/relay     unix  -       -       n       -       -       smtp/relay     unix  -       -       n       -       -       local/' /etc/postfix/master.cf &&     echo '/.*/ root' >> /etc/postfix/virtual &&     postmap /etc/postfix/virtual &&     echo 'virtual_alias_maps = regexp:/etc/postfix/virtual' >> /etc/postfix/main.cf &&     newaliases" shape="box"];
  "sha256:8cc6f69931a100417ff3f798cb57ed435ce48ba2c749d3c535741443c21a2865" [label="/bin/sh -c php -r \"copy('https://getcomposer.org/installer', 'composer-setup.php');\" &&     EXPECTED_SIGNATURE=\"$(wget -q -O - https://composer.github.io/installer.sig)\" &&     ACTUAL_SIGNATURE=\"$(php -r \"echo hash_file('SHA384', 'composer-setup.php');\")\" &&     if [ \"$EXPECTED_SIGNATURE\" != \"$ACTUAL_SIGNATURE\" ]; then echo 'ERROR: Invalid composer signature'; exit 1; fi &&     php composer-setup.php --install-dir=/bin --filename=composer &&     php -r \"unlink('composer-setup.php');\"" shape="box"];
  "sha256:81f548d4432dce41c3ee615820821de55fdc8973510675a736c7fddea2f90080" [label="/bin/sh -c yum clean all" shape="box"];
  "sha256:2faf8d6670ab15779a6a4c053f95ca0d4a8bd993cc0d987fa3e6e4bbbb262d1a" [label="/bin/sh -c rm -rf /var/cache/yum" shape="box"];
  "sha256:a4107aae6ddf0ce0f2c832568e1af8dc004b9c326f2d4fb03abd4da6ae75860e" [label="sha256:a4107aae6ddf0ce0f2c832568e1af8dc004b9c326f2d4fb03abd4da6ae75860e" shape="plaintext"];
  "sha256:c735fb7f447c51d14a476ae7a56855a089b7150b69d34f6a080b74ea6d48fec7" -> "sha256:034c30c28a0e54a0dc0fd3ecb1b5588cda3a82608f8282df5e6f71f0c2c0b69b" [label=""];
  "sha256:a3f31136af90673b3de8d1eb8069810fec5dd39311949246ff34e6b3cda500df" -> "sha256:034c30c28a0e54a0dc0fd3ecb1b5588cda3a82608f8282df5e6f71f0c2c0b69b" [label=""];
  "sha256:034c30c28a0e54a0dc0fd3ecb1b5588cda3a82608f8282df5e6f71f0c2c0b69b" -> "sha256:017cc7bde98b3e299389cf3accbf6da85e8b815fa7af755db0742bf3f8caaca8" [label=""];
  "sha256:017cc7bde98b3e299389cf3accbf6da85e8b815fa7af755db0742bf3f8caaca8" -> "sha256:e20cd0aeca3216f81f9d26cb1c77727f2a0fddb37ff5dad148ff08842c24279a" [label=""];
  "sha256:e20cd0aeca3216f81f9d26cb1c77727f2a0fddb37ff5dad148ff08842c24279a" -> "sha256:bc6fc3b5c14c7145d3d49e753f057377d6d478648a4e5759d8f4e002c9854c72" [label=""];
  "sha256:bc6fc3b5c14c7145d3d49e753f057377d6d478648a4e5759d8f4e002c9854c72" -> "sha256:7f3037ad9f51860ccd654062a07b2be5972a5e384e45a5c577bbe7d3420a2811" [label=""];
  "sha256:7f3037ad9f51860ccd654062a07b2be5972a5e384e45a5c577bbe7d3420a2811" -> "sha256:2646cadc4d92961ddab099650f88aac4064e616af87954bd20c481f08dacb53b" [label=""];
  "sha256:2646cadc4d92961ddab099650f88aac4064e616af87954bd20c481f08dacb53b" -> "sha256:7b77f1c5336129be86f2e158ee5956ced6c2ae9ed4e9695eba7fc1a1c628c0ec" [label=""];
  "sha256:7b77f1c5336129be86f2e158ee5956ced6c2ae9ed4e9695eba7fc1a1c628c0ec" -> "sha256:573af0b18666a438775c91a30432c42610dae37f3609d85317badca86b2eeec4" [label=""];
  "sha256:573af0b18666a438775c91a30432c42610dae37f3609d85317badca86b2eeec4" -> "sha256:5ae004c9c985717944903d5159174e69f19f5935d0e27290c8f23ffd22082a5c" [label=""];
  "sha256:5ae004c9c985717944903d5159174e69f19f5935d0e27290c8f23ffd22082a5c" -> "sha256:db9012383f7780a4cd78cec31c2aa2225b9e199261a5cd6db1533c34901a4198" [label=""];
  "sha256:db9012383f7780a4cd78cec31c2aa2225b9e199261a5cd6db1533c34901a4198" -> "sha256:560b0744c9d67a9932f89ea41ba2e766b6994b2e74fe10828469c8f2ea9210b0" [label=""];
  "sha256:560b0744c9d67a9932f89ea41ba2e766b6994b2e74fe10828469c8f2ea9210b0" -> "sha256:d335279ba5a6a64d6a9cb3a92bd0c109f6672f098622f47609ab3410f13533c0" [label=""];
  "sha256:d335279ba5a6a64d6a9cb3a92bd0c109f6672f098622f47609ab3410f13533c0" -> "sha256:7ea75d588da8cd6d32742641db1171e3a2c8f0a020e444cc631794eed27f5aa7" [label=""];
  "sha256:7ea75d588da8cd6d32742641db1171e3a2c8f0a020e444cc631794eed27f5aa7" -> "sha256:bd9ea7c01209903bcd312cd6151350bdda0d85301b46b29abf40244e7359783c" [label=""];
  "sha256:bd9ea7c01209903bcd312cd6151350bdda0d85301b46b29abf40244e7359783c" -> "sha256:8089b7a3b8cfd33bfbf3433f950230b25923dcbecc6c5c294efa9aea93e5466a" [label=""];
  "sha256:8089b7a3b8cfd33bfbf3433f950230b25923dcbecc6c5c294efa9aea93e5466a" -> "sha256:8cc6f69931a100417ff3f798cb57ed435ce48ba2c749d3c535741443c21a2865" [label=""];
  "sha256:8cc6f69931a100417ff3f798cb57ed435ce48ba2c749d3c535741443c21a2865" -> "sha256:81f548d4432dce41c3ee615820821de55fdc8973510675a736c7fddea2f90080" [label=""];
  "sha256:81f548d4432dce41c3ee615820821de55fdc8973510675a736c7fddea2f90080" -> "sha256:2faf8d6670ab15779a6a4c053f95ca0d4a8bd993cc0d987fa3e6e4bbbb262d1a" [label=""];
  "sha256:2faf8d6670ab15779a6a4c053f95ca0d4a8bd993cc0d987fa3e6e4bbbb262d1a" -> "sha256:a4107aae6ddf0ce0f2c832568e1af8dc004b9c326f2d4fb03abd4da6ae75860e" [label=""];
}

