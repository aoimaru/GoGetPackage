[app/sources/194717683.Dockerfile]
digraph {
  "sha256:f264569e91886f67066b141e45ddec93d8452f5d11d6c1230cb8aae9540a67ad" [label="docker-image://docker.io/composer/composer:latest" shape="ellipse"];
  "sha256:8212cd7c64e95feeb0cbf262e4df2d382d172af3ce9ea27d6b278d606a53dad7" [label="/bin/sh -c apt-get update &&     apt-get install -yq --no-install-recommends $PACKAGES &&     apt-get clean &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6468ac9f6d1c0079772296df49499a8ed7bdd4a4245fbc8c0af0a48a6cb2eb82" [label="/bin/sh -c curl -L http://pecl.php.net/get/xdebug-2.5.0.tgz >> /usr/src/php/ext/xdebug.tgz &&     tar -xf /usr/src/php/ext/xdebug.tgz -C /usr/src/php/ext/ &&     rm /usr/src/php/ext/xdebug.tgz &&     docker-php-ext-install xdebug-2.5.0 &&     docker-php-ext-install pcntl &&     docker-php-ext-install exif &&     php -m" shape="box"];
  "sha256:8fec51ab28c019078c35ed88046e192596f17de074577bf6cfd97ebcf4cf1218" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:697b5f71f60764eb9214306556fee8beb56c38607900815a4fe93fe42a5f4f11" [label="/bin/sh -c composer selfupdate &&     composer require \"phpunit/phpunit:~5.0.7\" --prefer-source --no-interaction &&     ln -s /tmp/vendor/bin/phpunit /usr/local/bin/phpunit" shape="box"];
  "sha256:d81ee5eaf70d9bc103e82e1a2a78149bfac7c4e943e924efe7d89df43a5e54d4" [label="mkdir{path=/app}" shape="note"];
  "sha256:4511391891f2ced28f90ce4e32d8895c7ffb50bb5bd3d52c29a625da2a21ce8e" [label="sha256:4511391891f2ced28f90ce4e32d8895c7ffb50bb5bd3d52c29a625da2a21ce8e" shape="plaintext"];
  "sha256:f264569e91886f67066b141e45ddec93d8452f5d11d6c1230cb8aae9540a67ad" -> "sha256:8212cd7c64e95feeb0cbf262e4df2d382d172af3ce9ea27d6b278d606a53dad7" [label=""];
  "sha256:8212cd7c64e95feeb0cbf262e4df2d382d172af3ce9ea27d6b278d606a53dad7" -> "sha256:6468ac9f6d1c0079772296df49499a8ed7bdd4a4245fbc8c0af0a48a6cb2eb82" [label=""];
  "sha256:6468ac9f6d1c0079772296df49499a8ed7bdd4a4245fbc8c0af0a48a6cb2eb82" -> "sha256:8fec51ab28c019078c35ed88046e192596f17de074577bf6cfd97ebcf4cf1218" [label=""];
  "sha256:8fec51ab28c019078c35ed88046e192596f17de074577bf6cfd97ebcf4cf1218" -> "sha256:697b5f71f60764eb9214306556fee8beb56c38607900815a4fe93fe42a5f4f11" [label=""];
  "sha256:697b5f71f60764eb9214306556fee8beb56c38607900815a4fe93fe42a5f4f11" -> "sha256:d81ee5eaf70d9bc103e82e1a2a78149bfac7c4e943e924efe7d89df43a5e54d4" [label=""];
  "sha256:d81ee5eaf70d9bc103e82e1a2a78149bfac7c4e943e924efe7d89df43a5e54d4" -> "sha256:4511391891f2ced28f90ce4e32d8895c7ffb50bb5bd3d52c29a625da2a21ce8e" [label=""];
}

