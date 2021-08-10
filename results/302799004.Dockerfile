[app/sources/302799004.Dockerfile]
digraph {
  "sha256:8d02a33214dbe0e8c091a9e54ed4392ae07dfe428dab024c9cf0be49e4cfcef8" [label="docker-image://docker.io/library/nginx:1.15.0" shape="ellipse"];
  "sha256:b238da1ad9acbd9c53cf18801b0931d50d90e6edd62076b8d2007a083255be5c" [label="docker-image://docker.io/khs1994/php:7.3.6-fpm-alpine" shape="ellipse"];
  "sha256:2339e6428cca0609efcaf83d6f5c738e74c149aa09e3d007acba1200bbe1a2ae" [label="local://context" shape="ellipse"];
  "sha256:986d17e6fa81aafa2fc5b73e38bc5affdc1c3eac6b375aaba2b12b0bc9757810" [label="copy{src=/, dest=/app/EXAMPLE}" shape="note"];
  "sha256:79dc32df905837d7d9ffb70d3a208f316af19635027b415f6985bb1ffa8ffe78" [label="docker-image://docker.io/khs1994/php:7.3.6-composer-alpine" shape="ellipse"];
  "sha256:5eef98745a38618497565f57c94f38c5355ea27b3e0b9ccb609935634a1c68cf" [label="copy{src=/composer.json, dest=/app}" shape="note"];
  "sha256:e74929b325cab541d528a7bc2cc0b0097bcc980ba3726c77d084d39b0d4834a1" [label="/bin/sh -c cd /app       && composer install --no-dev            --ignore-platform-reqs            --prefer-dist            --no-interaction            --no-scripts            --no-plugins" shape="box"];
  "sha256:74b60de78a64e675b7a068eaafcb11e2fd67c410525f80b30b9b7eb3e484e1f4" [label="copy{src=/app/vendor, dest=/app/EXAMPLE/vendor/}" shape="note"];
  "sha256:6c1ff9125beda0587a2379d2f9dd6eb1856bedd70fae0e4367cdf02ea5025ef9" [label="copy{src=/app, dest=/app}" shape="note"];
  "sha256:8072a9f4666890dfc5150012508deea2f3a7cd5991c02ebc55b59651aa74b130" [label="https://raw.githubusercontent.com/khs1994-docker/lnmp-nginx-conf-demo/master/wait-for-php.sh" shape="ellipse"];
  "sha256:001979db31f52e18fbee30c8c5e190c267c1d536324af91199109cd0acf406ea" [label="copy{src=/wait-for-php.sh, dest=/wait-for-php.sh}" shape="note"];
  "sha256:10dc097e64a1ac2bf1f24a58605dd20856f16c3e6b1decd2e65394a5a387308d" [label="/bin/sh -c rm -rf /etc/nginx/conf.d     && chmod +x /wait-for-php.sh" shape="box"];
  "sha256:8b27583e97fdb49c0d322217e4a31dcc19c2bdba770f54737a58ec1a10544542" [label="sha256:8b27583e97fdb49c0d322217e4a31dcc19c2bdba770f54737a58ec1a10544542" shape="plaintext"];
  "sha256:b238da1ad9acbd9c53cf18801b0931d50d90e6edd62076b8d2007a083255be5c" -> "sha256:986d17e6fa81aafa2fc5b73e38bc5affdc1c3eac6b375aaba2b12b0bc9757810" [label=""];
  "sha256:2339e6428cca0609efcaf83d6f5c738e74c149aa09e3d007acba1200bbe1a2ae" -> "sha256:986d17e6fa81aafa2fc5b73e38bc5affdc1c3eac6b375aaba2b12b0bc9757810" [label=""];
  "sha256:79dc32df905837d7d9ffb70d3a208f316af19635027b415f6985bb1ffa8ffe78" -> "sha256:5eef98745a38618497565f57c94f38c5355ea27b3e0b9ccb609935634a1c68cf" [label=""];
  "sha256:2339e6428cca0609efcaf83d6f5c738e74c149aa09e3d007acba1200bbe1a2ae" -> "sha256:5eef98745a38618497565f57c94f38c5355ea27b3e0b9ccb609935634a1c68cf" [label=""];
  "sha256:5eef98745a38618497565f57c94f38c5355ea27b3e0b9ccb609935634a1c68cf" -> "sha256:e74929b325cab541d528a7bc2cc0b0097bcc980ba3726c77d084d39b0d4834a1" [label=""];
  "sha256:986d17e6fa81aafa2fc5b73e38bc5affdc1c3eac6b375aaba2b12b0bc9757810" -> "sha256:74b60de78a64e675b7a068eaafcb11e2fd67c410525f80b30b9b7eb3e484e1f4" [label=""];
  "sha256:e74929b325cab541d528a7bc2cc0b0097bcc980ba3726c77d084d39b0d4834a1" -> "sha256:74b60de78a64e675b7a068eaafcb11e2fd67c410525f80b30b9b7eb3e484e1f4" [label=""];
  "sha256:8d02a33214dbe0e8c091a9e54ed4392ae07dfe428dab024c9cf0be49e4cfcef8" -> "sha256:6c1ff9125beda0587a2379d2f9dd6eb1856bedd70fae0e4367cdf02ea5025ef9" [label=""];
  "sha256:74b60de78a64e675b7a068eaafcb11e2fd67c410525f80b30b9b7eb3e484e1f4" -> "sha256:6c1ff9125beda0587a2379d2f9dd6eb1856bedd70fae0e4367cdf02ea5025ef9" [label=""];
  "sha256:6c1ff9125beda0587a2379d2f9dd6eb1856bedd70fae0e4367cdf02ea5025ef9" -> "sha256:001979db31f52e18fbee30c8c5e190c267c1d536324af91199109cd0acf406ea" [label=""];
  "sha256:8072a9f4666890dfc5150012508deea2f3a7cd5991c02ebc55b59651aa74b130" -> "sha256:001979db31f52e18fbee30c8c5e190c267c1d536324af91199109cd0acf406ea" [label=""];
  "sha256:001979db31f52e18fbee30c8c5e190c267c1d536324af91199109cd0acf406ea" -> "sha256:10dc097e64a1ac2bf1f24a58605dd20856f16c3e6b1decd2e65394a5a387308d" [label=""];
  "sha256:10dc097e64a1ac2bf1f24a58605dd20856f16c3e6b1decd2e65394a5a387308d" -> "sha256:8b27583e97fdb49c0d322217e4a31dcc19c2bdba770f54737a58ec1a10544542" [label=""];
}

