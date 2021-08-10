[app/sources/459094427.Dockerfile]
digraph {
  "sha256:07f1ebe4e9ff199bf1e5c7113508b7f4d413dade6ad3e6a0b84f1e318019724a" [label="docker-image://docker.io/heroku/cedar:14" shape="ellipse"];
  "sha256:952583e81951e9cd80ef51ed38d2c0b67b99ae96fe55e684101af9a443038a4b" [label="/bin/sh -c useradd -d /app -m app" shape="box"];
  "sha256:a5a5af7977bdbd580471029d1c0b2bd6bba1f7d90eed47efd152c6e59e031e59" [label="/bin/sh -c mkdir /app/build" shape="box"];
  "sha256:1ddb2aca8ac7a2e3bc156f6984b818e724b6c6bb4f0af437bb05fe2b4a0f18fe" [label="/bin/sh -c mkdir /app/src" shape="box"];
  "sha256:d6654e92f3c7ec734ba4d686f6732e1d5fdf0fb49f49165af4e9c139e761a3a3" [label="mkdir{path=/app/src}" shape="note"];
  "sha256:0afaf8052aab6a71ced0553de55eb69d675ef340d082fa65c3ba8f509e742361" [label="/bin/sh -c cd $BUILD_HOME &&     curl $CURL_FLAGS \"$APACHE_URL\" | tar zx &&     curl $CURL_FLAGS \"$APR_URL\" | tar zx &&     curl $CURL_FLAGS \"$APR_UTIL_URL\" | tar zx &&     curl $CURL_FLAGS \"$PCRE_URL\" | tar zx &&     curl $CURL_FLAGS \"$PHP_URL\" | tar zx &&     curl $CURL_FLAGS \"$MCRYPT_URL\" | tar zx &&     git clone -q --depth=1 $PHALCON_REPO &&     cd $PCRE_DIR &&     ./configure --prefix=$PCRE_ROOT &&     make && make install &&     cd $BUILD_HOME &&     mv $APR_DIR $APACHE_DIR/srclib/apr &&     mv $APR_UTIL_DIR $APACHE_DIR/srclib/apr-util &&     cd $APACHE_DIR &&     ./configure --prefix=$APACHE_ROOT --with-pcre=$PCRE_ROOT --enable-rewrite &&     make && make install &&     cd $BUILD_HOME &&     cd $MCRYPT_DIR &&     ./configure --prefix=$MCRYPT_ROOT &&     make && make install &&     cd $BUILD_HOME &&     cd $PHP_DIR &&     ./configure     --prefix=$PHP_ROOT     --with-config-file-path=$PHP_ROOT     --with-apxs2=$APACHE_ROOT/bin/apxs     --enable-opcache     --with-mysql     --with-pdo-mysql     --with-pgsql     --with-pdo-pgsql     --with-iconv     --with-gd     --with-curl     --enable-soap=shared     --with-openssl     --enable-mbstring     --with-curl     --with-mcrypt=$MCRYPT_ROOT     --with-jpeg-dir=/usr &&     make && make install &&     cp php.ini-production $PHP_ROOT/php.ini &&     cd $BUILD_HOME &&     $PHP_ROOT/bin/pecl channel-update pecl.php.net &&     printf \"\\n\" | pecl install mongo &&     printf \"\\n\" | pecl install redis &&     cd $PHALCON_DIR/build &&     ./install &&     rm -rf $BUILD_HOME" shape="box"];
  "sha256:b25609f5e6dc3ee5bfb56ec60ba84ebf1e583ef16086d9f52277289f360b23ca" [label="/bin/sh -c sed -ire 's/^Listen.*$/Listen \\${PORT}/g' $APACHE_ROOT/conf/httpd.conf &&     sed -ire 's/^DocumentRoot.*$/DocumentRoot\\ \"\\/app\\/src\"/g' $APACHE_ROOT/conf/httpd.conf &&     sed -ire 's/<Directory \"\\/app\\/apache\\/htdocs\">/<Directory \"\\/app\\/src\">/g' $APACHE_ROOT/conf/httpd.conf &&     sed -ire 's/AllowOverride\\ None/AllowOverride\\ All/g' $APACHE_ROOT/conf/httpd.conf" shape="box"];
  "sha256:068cd035bd5991718a7f4db4e4028bb2f5856607b135fa86f955c26270ae78ed" [label="/bin/sh -c echo \"<IfModule dir_module>\\nDirectoryIndex index.html index.php\\n</IfModule>\" >> $APACHE_ROOT/conf/httpd.conf &&     echo \"<FilesMatch \\.php$>\\nSetHandler application/x-httpd-php\\n</FilesMatch>\" >> $APACHE_ROOT/conf/httpd.conf" shape="box"];
  "sha256:f3628d84368c46fb9d098031227a1885f8631bafe7e1b9e405707e832c9799ee" [label="/bin/sh -c echo \"zend_extension=opcache.so\" >> $PHP_ROOT/php.ini &&     echo \"extension=phalcon.so\" >> $PHP_ROOT/php.ini &&     echo \"extension=mongo.so\" >> $PHP_ROOT/php.ini &&     echo \"extension=redis.so\" >> $PHP_ROOT/php.ini" shape="box"];
  "sha256:17c258bfb1fe75b652ad8f0910d13ce1cc0a1b66e1bf4b9f192c7bf45003d379" [label="local://context" shape="ellipse"];
  "sha256:3d1b8db4e83f8af67d4e3be719d2faeee651454dca0765adce9f763392e3ad9d" [label="copy{src=/ext/package.sh, dest=/app/package.sh}" shape="note"];
  "sha256:4a6e8698b7046d0bcb8144111814d3496e01ac50ed8425031e32431386db3780" [label="/bin/sh -c chmod +x /app/package.sh" shape="box"];
  "sha256:6f00009b27b1135bf48e5b5f3383aa985a49ecbaae0bd8f947a3c41d8283e99a" [label="sha256:6f00009b27b1135bf48e5b5f3383aa985a49ecbaae0bd8f947a3c41d8283e99a" shape="plaintext"];
  "sha256:07f1ebe4e9ff199bf1e5c7113508b7f4d413dade6ad3e6a0b84f1e318019724a" -> "sha256:952583e81951e9cd80ef51ed38d2c0b67b99ae96fe55e684101af9a443038a4b" [label=""];
  "sha256:952583e81951e9cd80ef51ed38d2c0b67b99ae96fe55e684101af9a443038a4b" -> "sha256:a5a5af7977bdbd580471029d1c0b2bd6bba1f7d90eed47efd152c6e59e031e59" [label=""];
  "sha256:a5a5af7977bdbd580471029d1c0b2bd6bba1f7d90eed47efd152c6e59e031e59" -> "sha256:1ddb2aca8ac7a2e3bc156f6984b818e724b6c6bb4f0af437bb05fe2b4a0f18fe" [label=""];
  "sha256:1ddb2aca8ac7a2e3bc156f6984b818e724b6c6bb4f0af437bb05fe2b4a0f18fe" -> "sha256:d6654e92f3c7ec734ba4d686f6732e1d5fdf0fb49f49165af4e9c139e761a3a3" [label=""];
  "sha256:d6654e92f3c7ec734ba4d686f6732e1d5fdf0fb49f49165af4e9c139e761a3a3" -> "sha256:0afaf8052aab6a71ced0553de55eb69d675ef340d082fa65c3ba8f509e742361" [label=""];
  "sha256:0afaf8052aab6a71ced0553de55eb69d675ef340d082fa65c3ba8f509e742361" -> "sha256:b25609f5e6dc3ee5bfb56ec60ba84ebf1e583ef16086d9f52277289f360b23ca" [label=""];
  "sha256:b25609f5e6dc3ee5bfb56ec60ba84ebf1e583ef16086d9f52277289f360b23ca" -> "sha256:068cd035bd5991718a7f4db4e4028bb2f5856607b135fa86f955c26270ae78ed" [label=""];
  "sha256:068cd035bd5991718a7f4db4e4028bb2f5856607b135fa86f955c26270ae78ed" -> "sha256:f3628d84368c46fb9d098031227a1885f8631bafe7e1b9e405707e832c9799ee" [label=""];
  "sha256:f3628d84368c46fb9d098031227a1885f8631bafe7e1b9e405707e832c9799ee" -> "sha256:3d1b8db4e83f8af67d4e3be719d2faeee651454dca0765adce9f763392e3ad9d" [label=""];
  "sha256:17c258bfb1fe75b652ad8f0910d13ce1cc0a1b66e1bf4b9f192c7bf45003d379" -> "sha256:3d1b8db4e83f8af67d4e3be719d2faeee651454dca0765adce9f763392e3ad9d" [label=""];
  "sha256:3d1b8db4e83f8af67d4e3be719d2faeee651454dca0765adce9f763392e3ad9d" -> "sha256:4a6e8698b7046d0bcb8144111814d3496e01ac50ed8425031e32431386db3780" [label=""];
  "sha256:4a6e8698b7046d0bcb8144111814d3496e01ac50ed8425031e32431386db3780" -> "sha256:6f00009b27b1135bf48e5b5f3383aa985a49ecbaae0bd8f947a3c41d8283e99a" [label=""];
}

