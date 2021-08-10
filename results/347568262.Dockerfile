[app/sources/347568262.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:94432dbd93fea7d4820490c83b9add731b41e03e9578d6c7e095f1863b69c7f5" [label="/bin/sh -c set -xe &&     apk add --no-cache         git         go         musl-dev &&     go get -u github.com/VKCOM/noverify &&     cd /root/go/src/github.com/VKCOM/noverify &&     go build &&     git clone https://github.com/JetBrains/phpstorm-stubs.git --depth 1 /usr/src/phpstorm-stubs" shape="box"];
  "sha256:68c1ef0435a391a0ca840a9ea9de4b519341f6346424df461ee047d4161acbcd" [label="docker-image://docker.io/library/php:7.3-fpm-alpine" shape="ellipse"];
  "sha256:4393d9afd0a965fb7f56a56bc5d0aa137f1299ae4bb5daf0925009c8e3b10bcc" [label="copy{src=/root/go/src/github.com/VKCOM/noverify/noverify, dest=/usr/local/bin/}" shape="note"];
  "sha256:47fb0427a12430c4dcd0241b0841587f89ac8995cbda7d49500f319d054ca305" [label="copy{src=/usr/src/phpstorm-stubs, dest=/usr/src/phpstorm-stubs}" shape="note"];
  "sha256:df05e40c3e77c27f5b720778cebcc345347ba5a29e32ac9d5326a5afe3f28d79" [label="/bin/sh -c set -xe;     apk add --no-cache         git         $PHPIZE_DEPS;     git clone https://github.com/nikic/php-ast.git;     cd php-ast;     phpize;     ./configure;     make install" shape="box"];
  "sha256:aa9b7febf1bd70f665388202642b943be7d7e4a6a076548c13257dc3bfc238a7" [label="copy{src=/var/www/html/php-ast/modules/ast.so, dest=/usr/local/lib/php/extensions/}" shape="note"];
  "sha256:48d786d7f8a2a1b0ef15cd4958c28fd32b783a1ef4d6cacd69882fe2947af15a" [label="docker-image://docker.io/library/composer:latest" shape="ellipse"];
  "sha256:43c55e954f233ef40a7f74de768e698e506c2225d2ee0420b03e57067e49ed0b" [label="/bin/sh -c set -xe;     mkdir -p /usr/local/src;     cd /usr/local/src;     composer init --no-interaction ;    composer require --optimize-autoloader         bamarni/composer-bin-plugin;     composer bin phpunit-guy require --optimize-autoloader         phploc/phploc         sebastian/phpcpd         sebastian/phpdcd;     composer bin phpmetrics require --optimize-autoloader         phpmetrics/phpmetrics;     composer bin phpstan require --optimize-autoloader         phpstan/phpstan         phpstan/phpstan-dibi         phpstan/phpstan-doctrine         phpstan/phpstan-phpunit         phpstan/phpstan-shim         phpstan/phpstan-strict-rules;     composer bin symfony-friendly require --optimize-autoloader         allocine/twigcs         friendsofphp/php-cs-fixer         heahdude/yaml-linter         pdepend/pdepend         phan/phan         phpmd/phpmd         sensiolabs/security-checker         squizlabs/php_codesniffer         wapmorgan/php-code-fixer" shape="box"];
  "sha256:c63fe5d3655ac06dd2fb2d1c99b02d76dc3cac788d60f8ddd760b4a1a9614e50" [label="copy{src=/usr/local/src, dest=/usr/local/src/}" shape="note"];
  "sha256:cd0f9794bf201a1b641a414556921f4b54cb0960b4f940c97a74bb64012bbe6d" [label="/bin/sh -c set -xe;     mv /usr/local/lib/php/extensions/*.so /usr/local/lib/php/extensions/no-debug-non-zts-*;     docker-php-ext-enable ast.so;     mkdir -p /path/to;     ln -s /usr/src/phpstorm-stubs /path/to/phpstorm-stubs;     apk add --no-cache         bash         graphviz         su-exec;     addgroup bar;     adduser -D -H -G bar foo" shape="box"];
  "sha256:5a8e31bbacacf98ae9ce1ddc760e21fba715a397b06aef79d6aa0e0022a31707" [label="mkdir{path=/project}" shape="note"];
  "sha256:518539fb264ef0f03c99e95e57639129dcb9c87abd0a66327b2f76ab92661e01" [label="local://context" shape="ellipse"];
  "sha256:6c78359d587c73e1fcf5ba16e5f39dc0341696586972eb639ff235919f377c0e" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:5bbbaaba0127f10f55e60626e97cbb00974243a93b16eac72841905765316c72" [label="sha256:5bbbaaba0127f10f55e60626e97cbb00974243a93b16eac72841905765316c72" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:94432dbd93fea7d4820490c83b9add731b41e03e9578d6c7e095f1863b69c7f5" [label=""];
  "sha256:68c1ef0435a391a0ca840a9ea9de4b519341f6346424df461ee047d4161acbcd" -> "sha256:4393d9afd0a965fb7f56a56bc5d0aa137f1299ae4bb5daf0925009c8e3b10bcc" [label=""];
  "sha256:94432dbd93fea7d4820490c83b9add731b41e03e9578d6c7e095f1863b69c7f5" -> "sha256:4393d9afd0a965fb7f56a56bc5d0aa137f1299ae4bb5daf0925009c8e3b10bcc" [label=""];
  "sha256:4393d9afd0a965fb7f56a56bc5d0aa137f1299ae4bb5daf0925009c8e3b10bcc" -> "sha256:47fb0427a12430c4dcd0241b0841587f89ac8995cbda7d49500f319d054ca305" [label=""];
  "sha256:94432dbd93fea7d4820490c83b9add731b41e03e9578d6c7e095f1863b69c7f5" -> "sha256:47fb0427a12430c4dcd0241b0841587f89ac8995cbda7d49500f319d054ca305" [label=""];
  "sha256:68c1ef0435a391a0ca840a9ea9de4b519341f6346424df461ee047d4161acbcd" -> "sha256:df05e40c3e77c27f5b720778cebcc345347ba5a29e32ac9d5326a5afe3f28d79" [label=""];
  "sha256:47fb0427a12430c4dcd0241b0841587f89ac8995cbda7d49500f319d054ca305" -> "sha256:aa9b7febf1bd70f665388202642b943be7d7e4a6a076548c13257dc3bfc238a7" [label=""];
  "sha256:df05e40c3e77c27f5b720778cebcc345347ba5a29e32ac9d5326a5afe3f28d79" -> "sha256:aa9b7febf1bd70f665388202642b943be7d7e4a6a076548c13257dc3bfc238a7" [label=""];
  "sha256:48d786d7f8a2a1b0ef15cd4958c28fd32b783a1ef4d6cacd69882fe2947af15a" -> "sha256:43c55e954f233ef40a7f74de768e698e506c2225d2ee0420b03e57067e49ed0b" [label=""];
  "sha256:aa9b7febf1bd70f665388202642b943be7d7e4a6a076548c13257dc3bfc238a7" -> "sha256:c63fe5d3655ac06dd2fb2d1c99b02d76dc3cac788d60f8ddd760b4a1a9614e50" [label=""];
  "sha256:43c55e954f233ef40a7f74de768e698e506c2225d2ee0420b03e57067e49ed0b" -> "sha256:c63fe5d3655ac06dd2fb2d1c99b02d76dc3cac788d60f8ddd760b4a1a9614e50" [label=""];
  "sha256:c63fe5d3655ac06dd2fb2d1c99b02d76dc3cac788d60f8ddd760b4a1a9614e50" -> "sha256:cd0f9794bf201a1b641a414556921f4b54cb0960b4f940c97a74bb64012bbe6d" [label=""];
  "sha256:cd0f9794bf201a1b641a414556921f4b54cb0960b4f940c97a74bb64012bbe6d" -> "sha256:5a8e31bbacacf98ae9ce1ddc760e21fba715a397b06aef79d6aa0e0022a31707" [label=""];
  "sha256:5a8e31bbacacf98ae9ce1ddc760e21fba715a397b06aef79d6aa0e0022a31707" -> "sha256:6c78359d587c73e1fcf5ba16e5f39dc0341696586972eb639ff235919f377c0e" [label=""];
  "sha256:518539fb264ef0f03c99e95e57639129dcb9c87abd0a66327b2f76ab92661e01" -> "sha256:6c78359d587c73e1fcf5ba16e5f39dc0341696586972eb639ff235919f377c0e" [label=""];
  "sha256:6c78359d587c73e1fcf5ba16e5f39dc0341696586972eb639ff235919f377c0e" -> "sha256:5bbbaaba0127f10f55e60626e97cbb00974243a93b16eac72841905765316c72" [label=""];
}

