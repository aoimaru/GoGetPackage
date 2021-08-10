[app/sources/248317384.Dockerfile]
digraph {
  "sha256:6997eb6893ccc91af039f502032502f5af5b01f4aa85dce3428e82109c3d73d2" [label="local://context" shape="ellipse"];
  "sha256:cd76ec759af16361299de7866461649d314c7e40b90bfb5972d067bb290fce72" [label="docker-image://docker.io/library/debian:testing" shape="ellipse"];
  "sha256:f1c5f36d61cef99dc29f82852743ee3815afa7625a116dfdba0584d4d80c1fb1" [label="/bin/sh -c apt-get update && apt-get upgrade -y" shape="box"];
  "sha256:6d30021a0d7a1f9535c7c9d7267d768035b09b3ee34328b03e8fd73be6b091c3" [label="/bin/sh -c apt-get install -y wget curl mysql-client nginx" shape="box"];
  "sha256:ef03b384205cab4c3472b104d3352eef29ad0b6a80d19d62facb4d175b17c665" [label="/bin/sh -c apt-get update && apt-get -y install     php7.0     php7.0-cgi     php7.0-cli     php7.0-common     php7.0-curl     php7.0-dev     php7.0-gd     php7.0-gmp     php7.0-json     php7.0-ldap     php7.0-memcached     php7.0-mysql     php7.0-odbc     php7.0-opcache     php7.0-pspell     php7.0-readline     php7.0-sqlite3     php7.0-tidy     php7.0-xmlrpc     php7.0-xsl     php7.0-fpm     php7.0-intl     php7.0-zip     php7.0-mcrypt && apt-get clean" shape="box"];
  "sha256:5d1842923e963be6eb0fbd8f96314cf8ada0ef1a1add65a834a41b0adb093663" [label="/bin/sh -c mkdir /run/php" shape="box"];
  "sha256:05fa918a16be11d2d20a66dc683911c193ba33675736cb200f253ebb688bbb53" [label="copy{src=/docker/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:4cfd95a58a07881578a0001c002f1cbb8f016aab81638e2d431780862e57c603" [label="copy{src=/docker/nginx-site.conf, dest=/etc/nginx/sites-available/default}" shape="note"];
  "sha256:9abeffb532bb82d2bd22dfd4cb5fd610b2af3b7d2457663c91621087919e337e" [label="/bin/sh -c curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \t&& chmod +x wp-cli.phar \t&& mv wp-cli.phar /usr/local/bin/wp" shape="box"];
  "sha256:3804bd161287a7fb1570d4b9db7d6b546a51d22bee2049d7d946121405fadff3" [label="/bin/sh -c wp core download --path=/usr/src/wordpress --allow-root" shape="box"];
  "sha256:df94b8ba22d6584a5794b3e511d5507f1bdcc3632fc00d43d29a5f68b7a3e604" [label="copy{src=/content, dest=/usr/src/wordpress/wp-content}" shape="note"];
  "sha256:8b5c8b75871ff10f2b14cbffb79c51f96489fc9d5398b6f1c412a99c16f7acfc" [label="copy{src=/docker/custom.sh, dest=/custom.sh}" shape="note"];
  "sha256:c339b58abc9e578ea10a15a568c5b5d91d9320bf264f54689f587e3f8573b00a" [label="copy{src=/docker/data.sql, dest=/data.sql}" shape="note"];
  "sha256:8a941a675192bc68897564d142b097bcaace3453aee31be3a829bb36ab3896cd" [label="copy{src=/docker/mu-21d059a5-6614bceb-ed85e357-bd885a86, dest=/usr/src/wordpress}" shape="note"];
  "sha256:57f8a59c4c8fe9909b0757c38847faec77c14970de34e5069afa2b92898f37d9" [label="copy{src=/docker/php-opcache.ini, dest=/etc/php/7.0/fpm/conf.d/10-opcache.ini}" shape="note"];
  "sha256:9cbb3a8d3b6b9ccc59ff74acb0a493d951abe548f829ada5e93f9e954dd2e943" [label="/bin/sh -c chown -R www-data:www-data /usr/src/wordpress" shape="box"];
  "sha256:4c5b4229b92dfa36ef40299f25b4e420f88578935f524195f648bf2f4ca84526" [label="/bin/sh -c echo 'deb http://apt.newrelic.com/debian/ newrelic non-free' | tee /etc/apt/sources.list.d/newrelic.list     && wget -O- https://download.newrelic.com/548C16BF.gpg | apt-key add -" shape="box"];
  "sha256:1d5a61be3af88c39c252b2d3139008add21cd6cfd56e2e8c0526091ea8ea746a" [label="copy{src=/docker/docker-entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:dd944cd5795c842157899798f9411f0f050ed05c6508915d24d4576655bcdda3" [label="mkdir{path=/usr/src/wordpress}" shape="note"];
  "sha256:75523a5fb0dcc2c38192c988db793c95b55abbacc9ad99320eb962e5256b4c5a" [label="sha256:75523a5fb0dcc2c38192c988db793c95b55abbacc9ad99320eb962e5256b4c5a" shape="plaintext"];
  "sha256:cd76ec759af16361299de7866461649d314c7e40b90bfb5972d067bb290fce72" -> "sha256:f1c5f36d61cef99dc29f82852743ee3815afa7625a116dfdba0584d4d80c1fb1" [label=""];
  "sha256:f1c5f36d61cef99dc29f82852743ee3815afa7625a116dfdba0584d4d80c1fb1" -> "sha256:6d30021a0d7a1f9535c7c9d7267d768035b09b3ee34328b03e8fd73be6b091c3" [label=""];
  "sha256:6d30021a0d7a1f9535c7c9d7267d768035b09b3ee34328b03e8fd73be6b091c3" -> "sha256:ef03b384205cab4c3472b104d3352eef29ad0b6a80d19d62facb4d175b17c665" [label=""];
  "sha256:ef03b384205cab4c3472b104d3352eef29ad0b6a80d19d62facb4d175b17c665" -> "sha256:5d1842923e963be6eb0fbd8f96314cf8ada0ef1a1add65a834a41b0adb093663" [label=""];
  "sha256:5d1842923e963be6eb0fbd8f96314cf8ada0ef1a1add65a834a41b0adb093663" -> "sha256:05fa918a16be11d2d20a66dc683911c193ba33675736cb200f253ebb688bbb53" [label=""];
  "sha256:6997eb6893ccc91af039f502032502f5af5b01f4aa85dce3428e82109c3d73d2" -> "sha256:05fa918a16be11d2d20a66dc683911c193ba33675736cb200f253ebb688bbb53" [label=""];
  "sha256:05fa918a16be11d2d20a66dc683911c193ba33675736cb200f253ebb688bbb53" -> "sha256:4cfd95a58a07881578a0001c002f1cbb8f016aab81638e2d431780862e57c603" [label=""];
  "sha256:6997eb6893ccc91af039f502032502f5af5b01f4aa85dce3428e82109c3d73d2" -> "sha256:4cfd95a58a07881578a0001c002f1cbb8f016aab81638e2d431780862e57c603" [label=""];
  "sha256:4cfd95a58a07881578a0001c002f1cbb8f016aab81638e2d431780862e57c603" -> "sha256:9abeffb532bb82d2bd22dfd4cb5fd610b2af3b7d2457663c91621087919e337e" [label=""];
  "sha256:9abeffb532bb82d2bd22dfd4cb5fd610b2af3b7d2457663c91621087919e337e" -> "sha256:3804bd161287a7fb1570d4b9db7d6b546a51d22bee2049d7d946121405fadff3" [label=""];
  "sha256:3804bd161287a7fb1570d4b9db7d6b546a51d22bee2049d7d946121405fadff3" -> "sha256:df94b8ba22d6584a5794b3e511d5507f1bdcc3632fc00d43d29a5f68b7a3e604" [label=""];
  "sha256:6997eb6893ccc91af039f502032502f5af5b01f4aa85dce3428e82109c3d73d2" -> "sha256:df94b8ba22d6584a5794b3e511d5507f1bdcc3632fc00d43d29a5f68b7a3e604" [label=""];
  "sha256:df94b8ba22d6584a5794b3e511d5507f1bdcc3632fc00d43d29a5f68b7a3e604" -> "sha256:8b5c8b75871ff10f2b14cbffb79c51f96489fc9d5398b6f1c412a99c16f7acfc" [label=""];
  "sha256:6997eb6893ccc91af039f502032502f5af5b01f4aa85dce3428e82109c3d73d2" -> "sha256:8b5c8b75871ff10f2b14cbffb79c51f96489fc9d5398b6f1c412a99c16f7acfc" [label=""];
  "sha256:8b5c8b75871ff10f2b14cbffb79c51f96489fc9d5398b6f1c412a99c16f7acfc" -> "sha256:c339b58abc9e578ea10a15a568c5b5d91d9320bf264f54689f587e3f8573b00a" [label=""];
  "sha256:6997eb6893ccc91af039f502032502f5af5b01f4aa85dce3428e82109c3d73d2" -> "sha256:c339b58abc9e578ea10a15a568c5b5d91d9320bf264f54689f587e3f8573b00a" [label=""];
  "sha256:c339b58abc9e578ea10a15a568c5b5d91d9320bf264f54689f587e3f8573b00a" -> "sha256:8a941a675192bc68897564d142b097bcaace3453aee31be3a829bb36ab3896cd" [label=""];
  "sha256:6997eb6893ccc91af039f502032502f5af5b01f4aa85dce3428e82109c3d73d2" -> "sha256:8a941a675192bc68897564d142b097bcaace3453aee31be3a829bb36ab3896cd" [label=""];
  "sha256:8a941a675192bc68897564d142b097bcaace3453aee31be3a829bb36ab3896cd" -> "sha256:57f8a59c4c8fe9909b0757c38847faec77c14970de34e5069afa2b92898f37d9" [label=""];
  "sha256:6997eb6893ccc91af039f502032502f5af5b01f4aa85dce3428e82109c3d73d2" -> "sha256:57f8a59c4c8fe9909b0757c38847faec77c14970de34e5069afa2b92898f37d9" [label=""];
  "sha256:57f8a59c4c8fe9909b0757c38847faec77c14970de34e5069afa2b92898f37d9" -> "sha256:9cbb3a8d3b6b9ccc59ff74acb0a493d951abe548f829ada5e93f9e954dd2e943" [label=""];
  "sha256:9cbb3a8d3b6b9ccc59ff74acb0a493d951abe548f829ada5e93f9e954dd2e943" -> "sha256:4c5b4229b92dfa36ef40299f25b4e420f88578935f524195f648bf2f4ca84526" [label=""];
  "sha256:4c5b4229b92dfa36ef40299f25b4e420f88578935f524195f648bf2f4ca84526" -> "sha256:1d5a61be3af88c39c252b2d3139008add21cd6cfd56e2e8c0526091ea8ea746a" [label=""];
  "sha256:6997eb6893ccc91af039f502032502f5af5b01f4aa85dce3428e82109c3d73d2" -> "sha256:1d5a61be3af88c39c252b2d3139008add21cd6cfd56e2e8c0526091ea8ea746a" [label=""];
  "sha256:1d5a61be3af88c39c252b2d3139008add21cd6cfd56e2e8c0526091ea8ea746a" -> "sha256:dd944cd5795c842157899798f9411f0f050ed05c6508915d24d4576655bcdda3" [label=""];
  "sha256:dd944cd5795c842157899798f9411f0f050ed05c6508915d24d4576655bcdda3" -> "sha256:75523a5fb0dcc2c38192c988db793c95b55abbacc9ad99320eb962e5256b4c5a" [label=""];
}
