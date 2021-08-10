[app/sources/351253088.Dockerfile]
digraph {
  "sha256:1915d0fdb329fc6f0ffa64c18b305038c2c21226e2a3fce8553f8b43515794fc" [label="docker-image://docker.io/library/opensuse:13.2" shape="ellipse"];
  "sha256:7be237f0507be6f571a34573bb5fbaa57a969b925653d1729ed6cfb946750d8b" [label="/bin/sh -c zypper --non-interactive install keepalived wget openssh-fips telnet aaa_base arping2 python python-base mozilla-nss sudo ipcalc java-1_7_0-openjdk" shape="box"];
  "sha256:4bdd1948103413fe7b2d002bfd97b1d85639e543e5a056817ee89ba582e916c4" [label="/bin/sh -c zypper --non-interactive install --no-recommends patch gcc-c++ pcre-devel libopenssl-devel tar make" shape="box"];
  "sha256:0ab85705297f42ed7221328132bd894a407fa8faba8970cbbda7f72229d5fac1" [label="http://download.opensuse.org/repositories/home:/seife:/testing/openSUSE_13.2/x86_64/sipcalc-1.1.6-5.1.x86_64.rpm" shape="ellipse"];
  "sha256:9af51e949005bbbcede0a54ebc136873c18e61c120ee40b0e78d08463b2a5adc" [label="copy{src=/sipcalc-1.1.6-5.1.x86_64.rpm, dest=/}" shape="note"];
  "sha256:42dd31f3e47d13419bbabe44ec095c547d392dd88f271a8b4cc1a34670167cf2" [label="/bin/sh -c rpm -Uvh --nodeps sipcalc-1.1.6-5.1.x86_64.rpm &&  \trm -f sipcalc-1.1.6-5.1.x86_64.rpm" shape="box"];
  "sha256:09295cc8e601c6f6b5f2e986f47cacf246920b73234e7d1529d47069a5860574" [label="/bin/sh -c groupadd storageos && useradd -d /opt/storageos -g storageos storageos" shape="box"];
  "sha256:0d839160560f6c4bf4a4ed0213ff1361d423fb0becad7af3e1bfe0c9c5686954" [label="/bin/sh -c groupadd svcuser && useradd -g svcuser svcuser" shape="box"];
  "sha256:c28e490a4ac7856c29fe710e7b308f14767eb9f01889ca6e26a75a45c9e92b5b" [label="/bin/sh -c wget http://nginx.org/download/nginx-1.6.2.tar.gz &&     wget --no-check-certificate https://github.com/yaoweibin/nginx_upstream_check_module/archive/v0.3.0.tar.gz &&     wget --no-check-certificate https://github.com/openresty/headers-more-nginx-module/archive/v0.25.tar.gz &&     tar xvzf nginx-1.6.2.tar.gz && tar xvzf v0.3.0.tar.gz && tar xvzf v0.25.tar.gz &&     cd nginx-1.6.2 && patch -p1 < ../nginx_upstream_check_module-0.3.0/check_1.5.12+.patch && ./configure --add-module=../nginx_upstream_check_module-0.3.0 --add-module=../headers-more-nginx-module-0.25 --with-http_ssl_module --prefix=/usr --conf-path=/etc/nginx/nginx.conf && make && make install && cd .. &&     rm -f nginx-1.6.2.tar.gz v0.3.0.tar.gz v0.25.tar.gz &&     rm -rf nginx-1.6.2 nginx_upstream_check_module-0.3.0 headers-more-nginx-module-0.25" shape="box"];
  "sha256:4a1a26b81500a3d8d6a105f6b87310923b078709ad3d39cfc6a67f5380c64850" [label="local://context" shape="ellipse"];
  "sha256:eb8314f4dcc438d47f20d9ddb120978331e0cef2aa5d6cba80d927b104daf9fb" [label="copy{src=/storageos-*.x86_64.rpm, dest=/}" shape="note"];
  "sha256:18ae97d2b068b793e90e7587fed5f88f80389ffab9b111fa020091ecfd369a46" [label="/bin/sh -c DO_NOT_START=\"yes\" rpm -iv storageos-*.x86_64.rpm &&     rm -f /storageos-*.x86_64.rpm" shape="box"];
  "sha256:bb2d79e91c8a52044105c6fdb8913f48197cf09282f4435fe2221860e5f04b0f" [label="/bin/sh -c ln -s /coprhd/ovfenv.properties /etc" shape="box"];
  "sha256:204df95fe10d01d0e0393d689d5b8976a5b5f71f6b43dbd2fbf382598c91bd14" [label="sha256:204df95fe10d01d0e0393d689d5b8976a5b5f71f6b43dbd2fbf382598c91bd14" shape="plaintext"];
  "sha256:1915d0fdb329fc6f0ffa64c18b305038c2c21226e2a3fce8553f8b43515794fc" -> "sha256:7be237f0507be6f571a34573bb5fbaa57a969b925653d1729ed6cfb946750d8b" [label=""];
  "sha256:7be237f0507be6f571a34573bb5fbaa57a969b925653d1729ed6cfb946750d8b" -> "sha256:4bdd1948103413fe7b2d002bfd97b1d85639e543e5a056817ee89ba582e916c4" [label=""];
  "sha256:4bdd1948103413fe7b2d002bfd97b1d85639e543e5a056817ee89ba582e916c4" -> "sha256:9af51e949005bbbcede0a54ebc136873c18e61c120ee40b0e78d08463b2a5adc" [label=""];
  "sha256:0ab85705297f42ed7221328132bd894a407fa8faba8970cbbda7f72229d5fac1" -> "sha256:9af51e949005bbbcede0a54ebc136873c18e61c120ee40b0e78d08463b2a5adc" [label=""];
  "sha256:9af51e949005bbbcede0a54ebc136873c18e61c120ee40b0e78d08463b2a5adc" -> "sha256:42dd31f3e47d13419bbabe44ec095c547d392dd88f271a8b4cc1a34670167cf2" [label=""];
  "sha256:42dd31f3e47d13419bbabe44ec095c547d392dd88f271a8b4cc1a34670167cf2" -> "sha256:09295cc8e601c6f6b5f2e986f47cacf246920b73234e7d1529d47069a5860574" [label=""];
  "sha256:09295cc8e601c6f6b5f2e986f47cacf246920b73234e7d1529d47069a5860574" -> "sha256:0d839160560f6c4bf4a4ed0213ff1361d423fb0becad7af3e1bfe0c9c5686954" [label=""];
  "sha256:0d839160560f6c4bf4a4ed0213ff1361d423fb0becad7af3e1bfe0c9c5686954" -> "sha256:c28e490a4ac7856c29fe710e7b308f14767eb9f01889ca6e26a75a45c9e92b5b" [label=""];
  "sha256:c28e490a4ac7856c29fe710e7b308f14767eb9f01889ca6e26a75a45c9e92b5b" -> "sha256:eb8314f4dcc438d47f20d9ddb120978331e0cef2aa5d6cba80d927b104daf9fb" [label=""];
  "sha256:4a1a26b81500a3d8d6a105f6b87310923b078709ad3d39cfc6a67f5380c64850" -> "sha256:eb8314f4dcc438d47f20d9ddb120978331e0cef2aa5d6cba80d927b104daf9fb" [label=""];
  "sha256:eb8314f4dcc438d47f20d9ddb120978331e0cef2aa5d6cba80d927b104daf9fb" -> "sha256:18ae97d2b068b793e90e7587fed5f88f80389ffab9b111fa020091ecfd369a46" [label=""];
  "sha256:18ae97d2b068b793e90e7587fed5f88f80389ffab9b111fa020091ecfd369a46" -> "sha256:bb2d79e91c8a52044105c6fdb8913f48197cf09282f4435fe2221860e5f04b0f" [label=""];
  "sha256:bb2d79e91c8a52044105c6fdb8913f48197cf09282f4435fe2221860e5f04b0f" -> "sha256:204df95fe10d01d0e0393d689d5b8976a5b5f71f6b43dbd2fbf382598c91bd14" [label=""];
}

