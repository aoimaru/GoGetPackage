[app/sources/209010936.Dockerfile]
digraph {
  "sha256:94bdeec8fb9127631f74af40fa67f68b77c381746978e5ed2d85a33506f8808a" [label="docker-image://docker.io/library/php:7.0.6-fpm-alpine" shape="ellipse"];
  "sha256:59493cf54c7e367e7a901c4f79ea7a4f1c0faf8f6d01997cf1c89721accb895a" [label="/bin/sh -c apk add --no-cache nginx mysql-client supervisor curl     bash redis imagemagick-dev" shape="box"];
  "sha256:9fb00fe523dd028168b9880b581bb49783fbc2ab252ebda9839a05a61d8e27e1" [label="/bin/sh -c docker-php-ext-install -j$(grep -c ^processor /proc/cpuinfo 2>/dev/null || 1)     iconv gd mbstring fileinfo curl xmlreader xmlwriter spl ftp mysqli opcache" shape="box"];
  "sha256:3216202667ee2872fc91c6ddd0bfbdf4a88bb452d29656eb79f3e529622818b8" [label="/bin/sh -c apk add --no-cache libtool build-base autoconf     && pecl install imagick     && docker-php-ext-enable imagick     && apk del libtool build-base autoconf" shape="box"];
  "sha256:e0991c1afc187bb28cbbfb4038d113a4af47948261afc281ba497b8f495e57c6" [label="/bin/sh -c adduser -D deployer -s /bin/bash -G www-data" shape="box"];
  "sha256:6bbb5774ccbaab590ae7974479823912f4b9ead128400fdd0b02721317078ff4" [label="mkdir{path=/var/www/content}" shape="note"];
  "sha256:b75625df8f21fa44f2f679922188467b61da5da7ed018ed0cf1f654b222f75a7" [label="/bin/sh -c curl -o wordpress.tar.gz -SL $WP_DOWNLOAD_URL \t&& echo \"$WP_SHA1 *wordpress.tar.gz\" | sha1sum -c - \t&& tar -xzf wordpress.tar.gz -C /usr/src/ \t&& rm wordpress.tar.gz" shape="box"];
  "sha256:b1d35090e234dcb0a95fe07f54f01faf2239d88a9e1f16744ca25f11a75d119c" [label="local://context" shape="ellipse"];
  "sha256:19ade57e06f7ee45f8c23454c06e9706a835270eaf4f9a63ba29d5f519259c4e" [label="copy{src=/cron.conf, dest=/etc/crontabs/deployer}" shape="note"];
  "sha256:1e2b5f802a9fdcc42740013101a57b50bdf5f09c384f102db85ea2d6bd03e081" [label="/bin/sh -c chmod 600 /etc/crontabs/deployer" shape="box"];
  "sha256:8881724056b772cde4dc0db69f0bbb4c908683189d0db47175a117168f8999fc" [label="/bin/sh -c curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar     && chmod +x wp-cli.phar     && mv wp-cli.phar /usr/local/bin/wp" shape="box"];
  "sha256:c319dd23f7a30c62a3d4e401e462ea83092f7422f76be5dfbeae87b2f24959e5" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:0182a3ad25582ac7a002f7bc6d8f4443910ff6158878f294769af8c1fa3ea1b7" [label="copy{src=/virtual-host.conf, dest=/etc/nginx/conf.d/}" shape="note"];
  "sha256:6b454afb64cf324e477175e5d453100437279c44b87a468b6a90c6afcdf8929b" [label="/bin/sh -c ln -sf /dev/stdout /var/log/nginx/access.log     && ln -sf /dev/stderr /var/log/nginx/error.log     && chown -R www-data:www-data /var/lib/nginx" shape="box"];
  "sha256:45475c1c2ee0a5b1881f55ea6baad894e72584a2395266fb0ff547c5709e54a1" [label="copy{src=/wp-config.php, dest=/usr/src/wordpress}" shape="note"];
  "sha256:fcd31203f2802861b6600ef09ea6093da463cfd3e9740adcb2da8b435daf90c6" [label="/bin/sh -c chown -R deployer:www-data $WP_ROOT     && chmod 640 $WP_ROOT/wp-config.php" shape="box"];
  "sha256:5c6f4bab1796734d8746e2699f35b859fcb38cff145166b219039d0549715510" [label="/bin/sh -c mkdir -p /var/www/content/uploads     && chown -R www-data:www-data /var/www/content/uploads" shape="box"];
  "sha256:d1e5154fed487b28f3e31a7f9002e4bc1ff21d5ae2791ceb68b7f01719cff602" [label="/bin/sh -c mkdir -p /var/log/supervisor" shape="box"];
  "sha256:c220fddcf259067ed9a82a4dbeae3ed78e23c49017c9c5feee19cddb5a7a7c5d" [label="copy{src=/supervisord.conf, dest=/etc/supervisord.conf}" shape="note"];
  "sha256:375327b9be9e7c096a6be7b4b184bde49106536758381bed72a966662939e92a" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:0dacd6dd661d7aba320a1f0e41e31af94c57b5d18ca613b7cca454ef81e035c6" [label="/bin/sh -c chmod +x /docker-entrypoint.sh" shape="box"];
  "sha256:f79a759461fbb2bd604ede009244a33b61623e962a08990a0f7b9752afdb9f2c" [label="sha256:f79a759461fbb2bd604ede009244a33b61623e962a08990a0f7b9752afdb9f2c" shape="plaintext"];
  "sha256:94bdeec8fb9127631f74af40fa67f68b77c381746978e5ed2d85a33506f8808a" -> "sha256:59493cf54c7e367e7a901c4f79ea7a4f1c0faf8f6d01997cf1c89721accb895a" [label=""];
  "sha256:59493cf54c7e367e7a901c4f79ea7a4f1c0faf8f6d01997cf1c89721accb895a" -> "sha256:9fb00fe523dd028168b9880b581bb49783fbc2ab252ebda9839a05a61d8e27e1" [label=""];
  "sha256:9fb00fe523dd028168b9880b581bb49783fbc2ab252ebda9839a05a61d8e27e1" -> "sha256:3216202667ee2872fc91c6ddd0bfbdf4a88bb452d29656eb79f3e529622818b8" [label=""];
  "sha256:3216202667ee2872fc91c6ddd0bfbdf4a88bb452d29656eb79f3e529622818b8" -> "sha256:e0991c1afc187bb28cbbfb4038d113a4af47948261afc281ba497b8f495e57c6" [label=""];
  "sha256:e0991c1afc187bb28cbbfb4038d113a4af47948261afc281ba497b8f495e57c6" -> "sha256:6bbb5774ccbaab590ae7974479823912f4b9ead128400fdd0b02721317078ff4" [label=""];
  "sha256:6bbb5774ccbaab590ae7974479823912f4b9ead128400fdd0b02721317078ff4" -> "sha256:b75625df8f21fa44f2f679922188467b61da5da7ed018ed0cf1f654b222f75a7" [label=""];
  "sha256:b75625df8f21fa44f2f679922188467b61da5da7ed018ed0cf1f654b222f75a7" -> "sha256:19ade57e06f7ee45f8c23454c06e9706a835270eaf4f9a63ba29d5f519259c4e" [label=""];
  "sha256:b1d35090e234dcb0a95fe07f54f01faf2239d88a9e1f16744ca25f11a75d119c" -> "sha256:19ade57e06f7ee45f8c23454c06e9706a835270eaf4f9a63ba29d5f519259c4e" [label=""];
  "sha256:19ade57e06f7ee45f8c23454c06e9706a835270eaf4f9a63ba29d5f519259c4e" -> "sha256:1e2b5f802a9fdcc42740013101a57b50bdf5f09c384f102db85ea2d6bd03e081" [label=""];
  "sha256:1e2b5f802a9fdcc42740013101a57b50bdf5f09c384f102db85ea2d6bd03e081" -> "sha256:8881724056b772cde4dc0db69f0bbb4c908683189d0db47175a117168f8999fc" [label=""];
  "sha256:8881724056b772cde4dc0db69f0bbb4c908683189d0db47175a117168f8999fc" -> "sha256:c319dd23f7a30c62a3d4e401e462ea83092f7422f76be5dfbeae87b2f24959e5" [label=""];
  "sha256:b1d35090e234dcb0a95fe07f54f01faf2239d88a9e1f16744ca25f11a75d119c" -> "sha256:c319dd23f7a30c62a3d4e401e462ea83092f7422f76be5dfbeae87b2f24959e5" [label=""];
  "sha256:c319dd23f7a30c62a3d4e401e462ea83092f7422f76be5dfbeae87b2f24959e5" -> "sha256:0182a3ad25582ac7a002f7bc6d8f4443910ff6158878f294769af8c1fa3ea1b7" [label=""];
  "sha256:b1d35090e234dcb0a95fe07f54f01faf2239d88a9e1f16744ca25f11a75d119c" -> "sha256:0182a3ad25582ac7a002f7bc6d8f4443910ff6158878f294769af8c1fa3ea1b7" [label=""];
  "sha256:0182a3ad25582ac7a002f7bc6d8f4443910ff6158878f294769af8c1fa3ea1b7" -> "sha256:6b454afb64cf324e477175e5d453100437279c44b87a468b6a90c6afcdf8929b" [label=""];
  "sha256:6b454afb64cf324e477175e5d453100437279c44b87a468b6a90c6afcdf8929b" -> "sha256:45475c1c2ee0a5b1881f55ea6baad894e72584a2395266fb0ff547c5709e54a1" [label=""];
  "sha256:b1d35090e234dcb0a95fe07f54f01faf2239d88a9e1f16744ca25f11a75d119c" -> "sha256:45475c1c2ee0a5b1881f55ea6baad894e72584a2395266fb0ff547c5709e54a1" [label=""];
  "sha256:45475c1c2ee0a5b1881f55ea6baad894e72584a2395266fb0ff547c5709e54a1" -> "sha256:fcd31203f2802861b6600ef09ea6093da463cfd3e9740adcb2da8b435daf90c6" [label=""];
  "sha256:fcd31203f2802861b6600ef09ea6093da463cfd3e9740adcb2da8b435daf90c6" -> "sha256:5c6f4bab1796734d8746e2699f35b859fcb38cff145166b219039d0549715510" [label=""];
  "sha256:5c6f4bab1796734d8746e2699f35b859fcb38cff145166b219039d0549715510" -> "sha256:d1e5154fed487b28f3e31a7f9002e4bc1ff21d5ae2791ceb68b7f01719cff602" [label=""];
  "sha256:d1e5154fed487b28f3e31a7f9002e4bc1ff21d5ae2791ceb68b7f01719cff602" -> "sha256:c220fddcf259067ed9a82a4dbeae3ed78e23c49017c9c5feee19cddb5a7a7c5d" [label=""];
  "sha256:b1d35090e234dcb0a95fe07f54f01faf2239d88a9e1f16744ca25f11a75d119c" -> "sha256:c220fddcf259067ed9a82a4dbeae3ed78e23c49017c9c5feee19cddb5a7a7c5d" [label=""];
  "sha256:c220fddcf259067ed9a82a4dbeae3ed78e23c49017c9c5feee19cddb5a7a7c5d" -> "sha256:375327b9be9e7c096a6be7b4b184bde49106536758381bed72a966662939e92a" [label=""];
  "sha256:b1d35090e234dcb0a95fe07f54f01faf2239d88a9e1f16744ca25f11a75d119c" -> "sha256:375327b9be9e7c096a6be7b4b184bde49106536758381bed72a966662939e92a" [label=""];
  "sha256:375327b9be9e7c096a6be7b4b184bde49106536758381bed72a966662939e92a" -> "sha256:0dacd6dd661d7aba320a1f0e41e31af94c57b5d18ca613b7cca454ef81e035c6" [label=""];
  "sha256:0dacd6dd661d7aba320a1f0e41e31af94c57b5d18ca613b7cca454ef81e035c6" -> "sha256:f79a759461fbb2bd604ede009244a33b61623e962a08990a0f7b9752afdb9f2c" [label=""];
}

