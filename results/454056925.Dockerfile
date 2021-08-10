[app/sources/454056925.Dockerfile]
digraph {
  "sha256:af1965963f8132de9fb31caae0fc23afbc183dc9a8e71c1e1850e1ad0c1f22d6" [label="docker-image://docker.io/library/amazonlinux:2017.03.1.20170812" shape="ellipse"];
  "sha256:286412e9ffafe59aabac25011bbb73244bbd276787acf45871132a972051426b" [label="/bin/sh -c sed -i 's;^releasever.*;releasever=2017.03;;' /etc/yum.conf &&     yum clean all &&     yum install -y autoconf                 bison                 bzip2-devel                 gcc                 gcc-c++                 git                 gzip                 libcurl-devel                 libxml2-devel                 make                 openssl-devel                 tar                 unzip                 zip" shape="box"];
  "sha256:1a993bb12c375691c6d04a8c00793682199c002b66ba16e7965714c6b6fa7218" [label="/bin/sh -c curl -sL https://github.com/php/php-src/archive/php-${php_version}.tar.gz | tar -xvz &&     cd php-src-php-${php_version} &&     ./buildconf --force &&     ./configure --prefix=/opt/php-7-bin/ --with-openssl --with-curl --with-zlib --without-pear --enable-bcmath --with-bz2 --enable-mbstring --with-mysqli &&     make install &&     /opt/php-7-bin/bin/php -v &&     curl -sS https://getcomposer.org/installer | /opt/php-7-bin/bin/php -- --install-dir=/opt/php-7-bin/bin/ --filename=composer" shape="box"];
  "sha256:e9c95158dbac16c7b5c46664f35073d9ffdd913a6f58bc5e7fa36ad78923ea5c" [label="/bin/sh -c mkdir -p /lambda-php-runtime/bin &&     cp /opt/php-7-bin/bin/php /lambda-php-runtime/bin/php" shape="box"];
  "sha256:448244a613249ce2b62e81a7208eea355780ed4d1548820953a8ca75c290d558" [label="local://context" shape="ellipse"];
  "sha256:c722bfbcb17b52ca01ce4bb24a802781813a7a65f31fb3d5499f7957af5513d0" [label="copy{src=/runtime/bootstrap, dest=/lambda-php-runtime/}" shape="note"];
  "sha256:3db8662f3499f57ec0da07396d7dc0a163c3f51cc1086ed20a8406001f090d65" [label="/bin/sh -c mkdir /lambda-php-vendor &&     cd /lambda-php-vendor &&     /opt/php-7-bin/bin/php /opt/php-7-bin/bin/composer require guzzlehttp/guzzle" shape="box"];
  "sha256:4907150f7b6e040eb02c836d2e7f84e1441ba468813c5646cbd8edb954d7d59f" [label="docker-image://docker.io/lambci/lambda:provided" shape="ellipse"];
  "sha256:54c2f0939f770abede7663f251b35e24625fac7b5cd7a46a0b0ca0c71cffc693" [label="copy{src=/lambda-php-runtime, dest=/opt/}" shape="note"];
  "sha256:fdf5defe370cbaaf73c24c93bf3533d1a8c1c135e8b174843fe0870665a109ee" [label="copy{src=/lambda-php-vendor/vendor, dest=/opt/vendor}" shape="note"];
  "sha256:fc19f1372ec84e1985b3f0a2fe27a888367d2576e88ab6801f2d690dc041788c" [label="copy{src=/function/src, dest=/var/task/src/}" shape="note"];
  "sha256:f2da1df1c2df33d63d77840cf6df152fc64727cc138482c444713c2a9cb6d6a9" [label="sha256:f2da1df1c2df33d63d77840cf6df152fc64727cc138482c444713c2a9cb6d6a9" shape="plaintext"];
  "sha256:af1965963f8132de9fb31caae0fc23afbc183dc9a8e71c1e1850e1ad0c1f22d6" -> "sha256:286412e9ffafe59aabac25011bbb73244bbd276787acf45871132a972051426b" [label=""];
  "sha256:286412e9ffafe59aabac25011bbb73244bbd276787acf45871132a972051426b" -> "sha256:1a993bb12c375691c6d04a8c00793682199c002b66ba16e7965714c6b6fa7218" [label=""];
  "sha256:1a993bb12c375691c6d04a8c00793682199c002b66ba16e7965714c6b6fa7218" -> "sha256:e9c95158dbac16c7b5c46664f35073d9ffdd913a6f58bc5e7fa36ad78923ea5c" [label=""];
  "sha256:e9c95158dbac16c7b5c46664f35073d9ffdd913a6f58bc5e7fa36ad78923ea5c" -> "sha256:c722bfbcb17b52ca01ce4bb24a802781813a7a65f31fb3d5499f7957af5513d0" [label=""];
  "sha256:448244a613249ce2b62e81a7208eea355780ed4d1548820953a8ca75c290d558" -> "sha256:c722bfbcb17b52ca01ce4bb24a802781813a7a65f31fb3d5499f7957af5513d0" [label=""];
  "sha256:c722bfbcb17b52ca01ce4bb24a802781813a7a65f31fb3d5499f7957af5513d0" -> "sha256:3db8662f3499f57ec0da07396d7dc0a163c3f51cc1086ed20a8406001f090d65" [label=""];
  "sha256:4907150f7b6e040eb02c836d2e7f84e1441ba468813c5646cbd8edb954d7d59f" -> "sha256:54c2f0939f770abede7663f251b35e24625fac7b5cd7a46a0b0ca0c71cffc693" [label=""];
  "sha256:3db8662f3499f57ec0da07396d7dc0a163c3f51cc1086ed20a8406001f090d65" -> "sha256:54c2f0939f770abede7663f251b35e24625fac7b5cd7a46a0b0ca0c71cffc693" [label=""];
  "sha256:54c2f0939f770abede7663f251b35e24625fac7b5cd7a46a0b0ca0c71cffc693" -> "sha256:fdf5defe370cbaaf73c24c93bf3533d1a8c1c135e8b174843fe0870665a109ee" [label=""];
  "sha256:3db8662f3499f57ec0da07396d7dc0a163c3f51cc1086ed20a8406001f090d65" -> "sha256:fdf5defe370cbaaf73c24c93bf3533d1a8c1c135e8b174843fe0870665a109ee" [label=""];
  "sha256:fdf5defe370cbaaf73c24c93bf3533d1a8c1c135e8b174843fe0870665a109ee" -> "sha256:fc19f1372ec84e1985b3f0a2fe27a888367d2576e88ab6801f2d690dc041788c" [label=""];
  "sha256:448244a613249ce2b62e81a7208eea355780ed4d1548820953a8ca75c290d558" -> "sha256:fc19f1372ec84e1985b3f0a2fe27a888367d2576e88ab6801f2d690dc041788c" [label=""];
  "sha256:fc19f1372ec84e1985b3f0a2fe27a888367d2576e88ab6801f2d690dc041788c" -> "sha256:f2da1df1c2df33d63d77840cf6df152fc64727cc138482c444713c2a9cb6d6a9" [label=""];
}

