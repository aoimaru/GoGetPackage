[app/sources/280283998.Dockerfile]
digraph {
  "sha256:9a04bfdadd0930feb03a97c8e419e2675d6c3430375a2ea743c9c079ec1d0df4" [label="docker-image://docker.io/library/php:7.2-fpm" shape="ellipse"];
  "sha256:dda800a6572ecd7d4b09662504de0699f4551ec55d27692afb985df329bce40d" [label="/bin/sh -c echo \"deb http://ftp.de.debian.org/debian stretch main \" >> /etc/apt/sources.list && apt-get update -y" shape="box"];
  "sha256:599cd6e3a98e445f3ba1e7e59dea7d15e9d21901a40b307080630d81b884ea62" [label="/bin/sh -c apt-get install -y openssl zip unzip git gcc make automake         libfreetype6-dev         libjpeg62-turbo-dev         libmcrypt-dev         libpng-dev         libmagickwand-dev vim --no-install-recommends" shape="box"];
  "sha256:f7f8edaf92c8bee9bae32bd65c737e67d12d46c7a950b632680070ded967bcde" [label="/bin/sh -c apt-get purge --auto-remove -y g++ && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8cae88134d37c7039b1edd346c57e022877180a492a7b89bbd6af5b3964c7d69" [label="/bin/sh -c docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ && docker-php-ext-install pdo pdo_mysql mbstring zip -j$(nproc) iconv  -j$(nproc) gd" shape="box"];
  "sha256:00849abadb413776e67f638c831f0251e1eb0d6f2502217cb682c5583f9032cb" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:e381ae7e13e7235a498ac72ba150eeeff2d0526d657168586eddf7e951ac2ad1" [label="local://context" shape="ellipse"];
  "sha256:20b213cd41b1ea406ab92801668ba6a2c329723b099ef1b605a85dc037e37407" [label="copy{src=/, dest=/var/www}" shape="note"];
  "sha256:25c912f8907809d95a8ff3159e90641e6a5fbbbcaf77a1c1c45d08bd9917c57a" [label="/bin/sh -c mkdir -p $APP_DIR/resources/assets/less/_main_full && touch $APP_DIR/resources/assets/less/_main_full/main.less && touch $APP_DIR/database/sqlite.db && mv $DOCKER_FOLDER/.env.local .env && chown -R www-data:www-data $APP_DIR" shape="box"];
  "sha256:23d57d3547940204ac68b386e17322eae12d1785e6033c449489f1f83a574ecc" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer" shape="box"];
  "sha256:64985636784a9895560a40765c89ed05b7340311464ca49b1a78608bb3eba812" [label="/bin/sh -c composer install --no-interaction" shape="box"];
  "sha256:f4fc9ee898d91459dd9ac6ab8b01edbe48b5977b05c4fc3b4289b545fe51e970" [label="/bin/sh -c mkdir -p $NVM_DIR && chown -R www-data:www-data $NVM_DIR" shape="box"];
  "sha256:006498929e4bbb742c744082a76d2a6445994eefb0d57fb1fa536964ac7fa1c3" [label="/bin/sh -c curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash && [ -s \"$NVM_DIR/nvm.sh\" ] && . \"$NVM_DIR/nvm.sh\" && nvm install ${node_version}" shape="box"];
  "sha256:3b7279404b1722c139d27f6623dd5b1fa23cf078c17deebe3a7e05d090ea2a5e" [label="/bin/sh -c npm install --save-exact imagemin-pngquant@5.0.*" shape="box"];
  "sha256:ababf7a3424ac04b958a0e1f45e16044663ad36a58d7a2cf9cc567a5097a91b1" [label="/bin/sh -c npm install" shape="box"];
  "sha256:5d35931773ebb33c39dd7e7c33f18441965f4df6508eb90b9e769212b9053d7b" [label="/bin/sh -c npm run production" shape="box"];
  "sha256:a6b1b7c1e3aaf8c1e1a446ed4d2078bbd33d61cbadd3adaf496d3f0542bee3ef" [label="/bin/sh -c php artisan key:generate" shape="box"];
  "sha256:934bc63ea5e73fb8f771c066bc43ae6aa61ab216fc211210020d0604ee8834e5" [label="/bin/sh -c php artisan migrate --seed" shape="box"];
  "sha256:c8a60db2c2b5cd2001fde32c44208c2f7c20d9298d1bfe64032c2dafd35f639e" [label="sha256:c8a60db2c2b5cd2001fde32c44208c2f7c20d9298d1bfe64032c2dafd35f639e" shape="plaintext"];
  "sha256:9a04bfdadd0930feb03a97c8e419e2675d6c3430375a2ea743c9c079ec1d0df4" -> "sha256:dda800a6572ecd7d4b09662504de0699f4551ec55d27692afb985df329bce40d" [label=""];
  "sha256:dda800a6572ecd7d4b09662504de0699f4551ec55d27692afb985df329bce40d" -> "sha256:599cd6e3a98e445f3ba1e7e59dea7d15e9d21901a40b307080630d81b884ea62" [label=""];
  "sha256:599cd6e3a98e445f3ba1e7e59dea7d15e9d21901a40b307080630d81b884ea62" -> "sha256:f7f8edaf92c8bee9bae32bd65c737e67d12d46c7a950b632680070ded967bcde" [label=""];
  "sha256:f7f8edaf92c8bee9bae32bd65c737e67d12d46c7a950b632680070ded967bcde" -> "sha256:8cae88134d37c7039b1edd346c57e022877180a492a7b89bbd6af5b3964c7d69" [label=""];
  "sha256:8cae88134d37c7039b1edd346c57e022877180a492a7b89bbd6af5b3964c7d69" -> "sha256:00849abadb413776e67f638c831f0251e1eb0d6f2502217cb682c5583f9032cb" [label=""];
  "sha256:00849abadb413776e67f638c831f0251e1eb0d6f2502217cb682c5583f9032cb" -> "sha256:20b213cd41b1ea406ab92801668ba6a2c329723b099ef1b605a85dc037e37407" [label=""];
  "sha256:e381ae7e13e7235a498ac72ba150eeeff2d0526d657168586eddf7e951ac2ad1" -> "sha256:20b213cd41b1ea406ab92801668ba6a2c329723b099ef1b605a85dc037e37407" [label=""];
  "sha256:20b213cd41b1ea406ab92801668ba6a2c329723b099ef1b605a85dc037e37407" -> "sha256:25c912f8907809d95a8ff3159e90641e6a5fbbbcaf77a1c1c45d08bd9917c57a" [label=""];
  "sha256:25c912f8907809d95a8ff3159e90641e6a5fbbbcaf77a1c1c45d08bd9917c57a" -> "sha256:23d57d3547940204ac68b386e17322eae12d1785e6033c449489f1f83a574ecc" [label=""];
  "sha256:23d57d3547940204ac68b386e17322eae12d1785e6033c449489f1f83a574ecc" -> "sha256:64985636784a9895560a40765c89ed05b7340311464ca49b1a78608bb3eba812" [label=""];
  "sha256:64985636784a9895560a40765c89ed05b7340311464ca49b1a78608bb3eba812" -> "sha256:f4fc9ee898d91459dd9ac6ab8b01edbe48b5977b05c4fc3b4289b545fe51e970" [label=""];
  "sha256:f4fc9ee898d91459dd9ac6ab8b01edbe48b5977b05c4fc3b4289b545fe51e970" -> "sha256:006498929e4bbb742c744082a76d2a6445994eefb0d57fb1fa536964ac7fa1c3" [label=""];
  "sha256:006498929e4bbb742c744082a76d2a6445994eefb0d57fb1fa536964ac7fa1c3" -> "sha256:3b7279404b1722c139d27f6623dd5b1fa23cf078c17deebe3a7e05d090ea2a5e" [label=""];
  "sha256:3b7279404b1722c139d27f6623dd5b1fa23cf078c17deebe3a7e05d090ea2a5e" -> "sha256:ababf7a3424ac04b958a0e1f45e16044663ad36a58d7a2cf9cc567a5097a91b1" [label=""];
  "sha256:ababf7a3424ac04b958a0e1f45e16044663ad36a58d7a2cf9cc567a5097a91b1" -> "sha256:5d35931773ebb33c39dd7e7c33f18441965f4df6508eb90b9e769212b9053d7b" [label=""];
  "sha256:5d35931773ebb33c39dd7e7c33f18441965f4df6508eb90b9e769212b9053d7b" -> "sha256:a6b1b7c1e3aaf8c1e1a446ed4d2078bbd33d61cbadd3adaf496d3f0542bee3ef" [label=""];
  "sha256:a6b1b7c1e3aaf8c1e1a446ed4d2078bbd33d61cbadd3adaf496d3f0542bee3ef" -> "sha256:934bc63ea5e73fb8f771c066bc43ae6aa61ab216fc211210020d0604ee8834e5" [label=""];
  "sha256:934bc63ea5e73fb8f771c066bc43ae6aa61ab216fc211210020d0604ee8834e5" -> "sha256:c8a60db2c2b5cd2001fde32c44208c2f7c20d9298d1bfe64032c2dafd35f639e" [label=""];
}

