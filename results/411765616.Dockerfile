[app/sources/411765616.Dockerfile]
digraph {
  "sha256:4367727e767de001c6c3916f2f3516890761f361227df579e92073eb04fabf0f" [label="local://context" shape="ellipse"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:ebb9cc34a5684730ddb3a5d55e6b4170f5519fed2b9ea042bbc2eb58e1906770" [label="/bin/sh -c set -ex     && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 14AA40EC0831756756D7F66C4F4EA0AAE5267A6C     && echo deb http://ppa.launchpad.net/ondrej/php/ubuntu xenial main > '/etc/apt/sources.list.d/ondrej.list'     && apt-get -qq update     && DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -yq         ca-certificates         sudo         make         git         subversion         curl         zip         unzip         php7.1-bcmath=\"7.1.4*\"         php7.1-cli=\"7.1.4*\"         php7.1-curl=\"7.1.4*\"          php7.1-fpm=\"7.1.4*\"         php7.1-gd=\"7.1.4*\"         php7.1-imap=\"7.1.4*\"         php7.1-json=\"7.1.4*\"         php7.1-mbstring=\"7.1.4*\"         php7.1-mysql=\"7.1.4*\"         php7.1-xml=\"7.1.4*\"         php7.1-zip=\"7.1.4*\"         php7.1-soap=\"7.1.4*\"         php7.1-mcrypt=\"7.1.4*\"         php7.1-mysql=\"7.1.4*\"         php7.1-dev=\"7.1.4*\"         php7.1=\"7.1.4*\"         php-pear         mysql-client-5.7         mysql-server-5.7" shape="box"];
  "sha256:f4e56cc84f60f1067fb49088c6817b28d7512121e35a45d5e2c3468b2431e969" [label="/bin/sh -c pecl install -o -f xdebug-2.5.3     && rm -rf /tmp/pear     && echo \"zend_extension=/usr/lib/php/20160303/xdebug.so\" > /etc/php/7.1/cli/php.ini" shape="box"];
  "sha256:41b084fe3e8fca4c21d40b5f2d41ef3efb62790ba782674c30d806021e3f0f8b" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer" shape="box"];
  "sha256:ed8125015027749ace4831e665cb5e5fae1391fb9a6639deb5bf475ac2af581c" [label="copy{src=/create_user.py, dest=/create_user.py}" shape="note"];
  "sha256:f3c42c9b4b55e8ae82a29ca210dfc9dceff399dc035bde4a86d4c783dd927ce3" [label="sha256:f3c42c9b4b55e8ae82a29ca210dfc9dceff399dc035bde4a86d4c783dd927ce3" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:ebb9cc34a5684730ddb3a5d55e6b4170f5519fed2b9ea042bbc2eb58e1906770" [label=""];
  "sha256:ebb9cc34a5684730ddb3a5d55e6b4170f5519fed2b9ea042bbc2eb58e1906770" -> "sha256:f4e56cc84f60f1067fb49088c6817b28d7512121e35a45d5e2c3468b2431e969" [label=""];
  "sha256:f4e56cc84f60f1067fb49088c6817b28d7512121e35a45d5e2c3468b2431e969" -> "sha256:41b084fe3e8fca4c21d40b5f2d41ef3efb62790ba782674c30d806021e3f0f8b" [label=""];
  "sha256:41b084fe3e8fca4c21d40b5f2d41ef3efb62790ba782674c30d806021e3f0f8b" -> "sha256:ed8125015027749ace4831e665cb5e5fae1391fb9a6639deb5bf475ac2af581c" [label=""];
  "sha256:4367727e767de001c6c3916f2f3516890761f361227df579e92073eb04fabf0f" -> "sha256:ed8125015027749ace4831e665cb5e5fae1391fb9a6639deb5bf475ac2af581c" [label=""];
  "sha256:ed8125015027749ace4831e665cb5e5fae1391fb9a6639deb5bf475ac2af581c" -> "sha256:f3c42c9b4b55e8ae82a29ca210dfc9dceff399dc035bde4a86d4c783dd927ce3" [label=""];
}

