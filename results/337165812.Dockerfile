[app/sources/337165812.Dockerfile]
digraph {
  "sha256:1f2b96f1646d721c092e5e126c908eee771aa6f7f5c705dc1c7062242219da13" [label="docker-image://docker.io/devilbox/php-fpm-5.2:latest" shape="ellipse"];
  "sha256:9ddf4bf68163eee68b1e328b90cc00bc4a08057f86249959208b36e531122ed9" [label="/bin/sh -c set -x \t&& groupadd -g ${MY_GID} -r ${MY_GROUP} \t&& useradd -u ${MY_UID} -m -s /bin/bash -g ${MY_GROUP} ${MY_USER}" shape="box"];
  "sha256:4c24f56af52bbc480c64d0909b8b9d63e85a46e2ecb27cf62508a456fc46c5d6" [label="/bin/sh -c set -x \t&& rm -f /etc/apt/sources.list \t&& { \t\techo \"deb http://ftp.debian.org/debian jessie main\"; \t\techo \"#deb http://ftp.debian.org/debian jessie-updates main\"; \t\techo \"deb http://security.debian.org/debian-security jessie/updates main\"; \t} | tee /etc/apt/sources.list" shape="box"];
  "sha256:da88e738577589f9d634f34d85071da738e86d108f2336eef4b4a6890688a5fa" [label="/bin/sh -c set -x \t&& DEBIAN_FRONTEND=noninteractive apt-get update -qq \t&& DEBIAN_FRONTEND=noninteractive apt-get install -qq -y --no-install-recommends --no-install-suggests procps \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:daff96eb3741ae1f0111e8af833470dae208bbc82b36ccdda5279fd2df5ee8d8" [label="/bin/sh -c set -x \t&& rm -rf /usr/local/etc/php-fpm.d \t&& mkdir -p /usr/local/etc/php-fpm.d \t&& mkdir -p /var/lib/php/session \t&& mkdir -p /var/lib/php/wsdlcache \t&& chown -R devilbox:devilbox /var/lib/php/session \t&& chown -R devilbox:devilbox /var/lib/php/wsdlcache" shape="box"];
  "sha256:ecb6061d17ccd994d285f6ac65506efb183eb48c98eaaa175d64cd69a6333569" [label="local://context" shape="ellipse"];
  "sha256:d94d1b8b9074f017195fae256f0347648d63d85c34be2ef6aa183dbd683f134f" [label="copy{src=/data/php-ini.d/php-5.2.ini, dest=/usr/local/etc/php/conf.d/xxx-devilbox-default-php.ini}" shape="note"];
  "sha256:8a24ed782e23e14f45ef68e4a67edb0b8c01d9d61015e9527c721f34d4013b1c" [label="copy{src=/data/php-fpm.conf/php-fpm-5.2.conf, dest=/usr/local/etc/php-fpm.conf}" shape="note"];
  "sha256:2d1d2a9cc3de4647f1ba5dcbdfc87dc3835ebe1299711cc6d800dc8210adc84c" [label="copy{src=/data/docker-entrypoint.sh, dest=/docker-entrypoint.sh}" shape="note"];
  "sha256:56a6fbf573fc2fd9da1cd9de8ba16fa358abe968382c0d6f330683939b3261b7" [label="copy{src=/data/docker-entrypoint.d, dest=/docker-entrypoint.d}" shape="note"];
  "sha256:922740cb63f46875859c7a2237bdc92625df956fbff2741ccb6492527d31b875" [label="/bin/sh -c set -x \t&& echo \"date.timezone=UTC\" > /usr/local/etc/php/php.ini \t&& php -v | grep -oE 'PHP\\s[.0-9]+' | grep -oE '[.0-9]+' | grep '^5.2' \t&& /usr/local/sbin/php-fpm --test \t\t&& PHP_ERROR=\"$( php -v 2>&1 1>/dev/null )\" \t&& if [ -n \"${PHP_ERROR}\" ]; then echo \"${PHP_ERROR}\"; false; fi \t&& PHP_ERROR=\"$( php -i 2>&1 1>/dev/null )\" \t&& if [ -n \"${PHP_ERROR}\" ]; then echo \"${PHP_ERROR}\"; false; fi \t\t&& PHP_FPM_ERROR=\"$( php-fpm -v 2>&1 1>/dev/null )\" \t&& if [ -n \"${PHP_FPM_ERROR}\" ]; then echo \"${PHP_FPM_ERROR}\"; false; fi \t&& PHP_FPM_ERROR=\"$( php-fpm -i 2>&1 1>/dev/null )\" \t&& if [ -n \"${PHP_FPM_ERROR}\" ]; then echo \"${PHP_FPM_ERROR}\"; false; fi \t&& rm -f /usr/local/etc/php/php.ini" shape="box"];
  "sha256:0a3a8cd2c2d6b076c04c5d0fa6737dbad6f5c80e5e0045baed527a7350dc5107" [label="sha256:0a3a8cd2c2d6b076c04c5d0fa6737dbad6f5c80e5e0045baed527a7350dc5107" shape="plaintext"];
  "sha256:1f2b96f1646d721c092e5e126c908eee771aa6f7f5c705dc1c7062242219da13" -> "sha256:9ddf4bf68163eee68b1e328b90cc00bc4a08057f86249959208b36e531122ed9" [label=""];
  "sha256:9ddf4bf68163eee68b1e328b90cc00bc4a08057f86249959208b36e531122ed9" -> "sha256:4c24f56af52bbc480c64d0909b8b9d63e85a46e2ecb27cf62508a456fc46c5d6" [label=""];
  "sha256:4c24f56af52bbc480c64d0909b8b9d63e85a46e2ecb27cf62508a456fc46c5d6" -> "sha256:da88e738577589f9d634f34d85071da738e86d108f2336eef4b4a6890688a5fa" [label=""];
  "sha256:da88e738577589f9d634f34d85071da738e86d108f2336eef4b4a6890688a5fa" -> "sha256:daff96eb3741ae1f0111e8af833470dae208bbc82b36ccdda5279fd2df5ee8d8" [label=""];
  "sha256:daff96eb3741ae1f0111e8af833470dae208bbc82b36ccdda5279fd2df5ee8d8" -> "sha256:d94d1b8b9074f017195fae256f0347648d63d85c34be2ef6aa183dbd683f134f" [label=""];
  "sha256:ecb6061d17ccd994d285f6ac65506efb183eb48c98eaaa175d64cd69a6333569" -> "sha256:d94d1b8b9074f017195fae256f0347648d63d85c34be2ef6aa183dbd683f134f" [label=""];
  "sha256:d94d1b8b9074f017195fae256f0347648d63d85c34be2ef6aa183dbd683f134f" -> "sha256:8a24ed782e23e14f45ef68e4a67edb0b8c01d9d61015e9527c721f34d4013b1c" [label=""];
  "sha256:ecb6061d17ccd994d285f6ac65506efb183eb48c98eaaa175d64cd69a6333569" -> "sha256:8a24ed782e23e14f45ef68e4a67edb0b8c01d9d61015e9527c721f34d4013b1c" [label=""];
  "sha256:8a24ed782e23e14f45ef68e4a67edb0b8c01d9d61015e9527c721f34d4013b1c" -> "sha256:2d1d2a9cc3de4647f1ba5dcbdfc87dc3835ebe1299711cc6d800dc8210adc84c" [label=""];
  "sha256:ecb6061d17ccd994d285f6ac65506efb183eb48c98eaaa175d64cd69a6333569" -> "sha256:2d1d2a9cc3de4647f1ba5dcbdfc87dc3835ebe1299711cc6d800dc8210adc84c" [label=""];
  "sha256:2d1d2a9cc3de4647f1ba5dcbdfc87dc3835ebe1299711cc6d800dc8210adc84c" -> "sha256:56a6fbf573fc2fd9da1cd9de8ba16fa358abe968382c0d6f330683939b3261b7" [label=""];
  "sha256:ecb6061d17ccd994d285f6ac65506efb183eb48c98eaaa175d64cd69a6333569" -> "sha256:56a6fbf573fc2fd9da1cd9de8ba16fa358abe968382c0d6f330683939b3261b7" [label=""];
  "sha256:56a6fbf573fc2fd9da1cd9de8ba16fa358abe968382c0d6f330683939b3261b7" -> "sha256:922740cb63f46875859c7a2237bdc92625df956fbff2741ccb6492527d31b875" [label=""];
  "sha256:922740cb63f46875859c7a2237bdc92625df956fbff2741ccb6492527d31b875" -> "sha256:0a3a8cd2c2d6b076c04c5d0fa6737dbad6f5c80e5e0045baed527a7350dc5107" [label=""];
}

