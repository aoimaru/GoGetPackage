[app/sources/252790662.Dockerfile]
digraph {
  "sha256:23e7de1c39d9a9bd7bb5b5624483288d8e4807663d4235ce51b74d8706ec2d97" [label="docker-image://docker.io/carqualifier/docker-nginx-php:php71" shape="ellipse"];
  "sha256:6def775ed29f34c71cdd7e9a094670cfe7acf207aad03297209707100e3542d2" [label="local://context" shape="ellipse"];
  "sha256:95b04b2bdb8b394599aa55b5ce35f536446af5e86e7cb4fc8512fedb19d4746f" [label="copy{src=/container-files/aerospike-client-php-3.4.14.tar.gz, dest=/tmp/}" shape="note"];
  "sha256:9c4322cddde984568171fed657c065da403b5931d5689e3f8789bf6df8410949" [label="copy{src=/container-files/aerospike.ini, dest=/etc/php.d/20-aerospike.ini}" shape="note"];
  "sha256:6129091dbb5cb898881e1f72254fc10b4e3f3ca871505dbbf51f3b2a8aa59cb7" [label="/bin/sh -c yum install -y @development openssl-devel && source /etc/profile.d/php71-paths.sh && cd /tmp/aerospike-client-php-3.4.14/src/aerospike && ./build.sh && make install && chmod 644 /etc/php.d/20-aerospike.ini && yes '' | pecl install -f mongodb && echo \"extension=mongodb.so\" >> /etc/php.ini && git clone --depth=1 git://github.com/phalcon/cphalcon.git && cd cphalcon/build && ./install && echo \"extension=phalcon.so\" >> /etc/php.d/50-phalcon.ini" shape="box"];
  "sha256:871b7b39e7dbbc202ee94ca9ece79cc28e719d9c16a8e080426c1624aa16a54e" [label="sha256:871b7b39e7dbbc202ee94ca9ece79cc28e719d9c16a8e080426c1624aa16a54e" shape="plaintext"];
  "sha256:23e7de1c39d9a9bd7bb5b5624483288d8e4807663d4235ce51b74d8706ec2d97" -> "sha256:95b04b2bdb8b394599aa55b5ce35f536446af5e86e7cb4fc8512fedb19d4746f" [label=""];
  "sha256:6def775ed29f34c71cdd7e9a094670cfe7acf207aad03297209707100e3542d2" -> "sha256:95b04b2bdb8b394599aa55b5ce35f536446af5e86e7cb4fc8512fedb19d4746f" [label=""];
  "sha256:95b04b2bdb8b394599aa55b5ce35f536446af5e86e7cb4fc8512fedb19d4746f" -> "sha256:9c4322cddde984568171fed657c065da403b5931d5689e3f8789bf6df8410949" [label=""];
  "sha256:6def775ed29f34c71cdd7e9a094670cfe7acf207aad03297209707100e3542d2" -> "sha256:9c4322cddde984568171fed657c065da403b5931d5689e3f8789bf6df8410949" [label=""];
  "sha256:9c4322cddde984568171fed657c065da403b5931d5689e3f8789bf6df8410949" -> "sha256:6129091dbb5cb898881e1f72254fc10b4e3f3ca871505dbbf51f3b2a8aa59cb7" [label=""];
  "sha256:6129091dbb5cb898881e1f72254fc10b4e3f3ca871505dbbf51f3b2a8aa59cb7" -> "sha256:871b7b39e7dbbc202ee94ca9ece79cc28e719d9c16a8e080426c1624aa16a54e" [label=""];
}

