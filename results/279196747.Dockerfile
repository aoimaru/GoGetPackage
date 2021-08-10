[app/sources/279196747.Dockerfile]
digraph {
  "sha256:bd804863f4a90e4508ca4e17115354c434f3f33fef00abcdf21d6b2bc5813fe0" [label="docker-image://docker.io/library/php:7.1.1-fpm" shape="ellipse"];
  "sha256:2e975b24e31f47a56646d1ab73e512bc9aa218ae8bc31ec4c1faae5e0219f2d3" [label="/bin/sh -c apt-get update && apt-get install -y libmcrypt-dev curl nano" shape="box"];
  "sha256:343818a5b632a2954d689b02001c4921045dd589b038a7a4616cf116f482bf08" [label="/bin/sh -c docker-php-ext-install mcrypt pdo_mysql" shape="box"];
  "sha256:03724cbeb8a0146708bdac951778f56fa750fbb4c7d1db90c296099d2824d41c" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer" shape="box"];
  "sha256:2cb4879ea15f50e64a4e2850b90750599c17a9bcf3492ff28bcb8c70eff834cd" [label="sha256:2cb4879ea15f50e64a4e2850b90750599c17a9bcf3492ff28bcb8c70eff834cd" shape="plaintext"];
  "sha256:bd804863f4a90e4508ca4e17115354c434f3f33fef00abcdf21d6b2bc5813fe0" -> "sha256:2e975b24e31f47a56646d1ab73e512bc9aa218ae8bc31ec4c1faae5e0219f2d3" [label=""];
  "sha256:2e975b24e31f47a56646d1ab73e512bc9aa218ae8bc31ec4c1faae5e0219f2d3" -> "sha256:343818a5b632a2954d689b02001c4921045dd589b038a7a4616cf116f482bf08" [label=""];
  "sha256:343818a5b632a2954d689b02001c4921045dd589b038a7a4616cf116f482bf08" -> "sha256:03724cbeb8a0146708bdac951778f56fa750fbb4c7d1db90c296099d2824d41c" [label=""];
  "sha256:03724cbeb8a0146708bdac951778f56fa750fbb4c7d1db90c296099d2824d41c" -> "sha256:2cb4879ea15f50e64a4e2850b90750599c17a9bcf3492ff28bcb8c70eff834cd" [label=""];
}

