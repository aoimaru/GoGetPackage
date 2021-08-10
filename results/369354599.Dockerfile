[app/sources/369354599.Dockerfile]
digraph {
  "sha256:b323f4c7f46f6d12189d61b0b217494d8c15684627720d0a426ba84fffdcd5a6" [label="docker-image://docker.io/library/php:7.0" shape="ellipse"];
  "sha256:42bf945aaa2587b1bfcb63bd3c3771b065144595aec4b447b84932477c327596" [label="/bin/sh -c apt-get update &&     apt-get install -y mysql-client zlib1g-dev" shape="box"];
  "sha256:e6130b7939b8c256a9a2d7fd4c6c2087f7e003a81d2d2017324a8fec8a6d957d" [label="/bin/sh -c yes | pecl install xdebug-2.4.1" shape="box"];
  "sha256:c5b50911d550bd53753a0f4f1d218684bf7c171afc67dad5b4f09824ab1c72f3" [label="/bin/sh -c echo \"zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)\" > /usr/local/etc/php/conf.d/xdebug.ini" shape="box"];
  "sha256:74ca1e89cbdc618b50690a27b150549a515136a3066b013948671fb54a0f12d3" [label="/bin/sh -c echo \"xdebug.remote_enable=on\" >> /usr/local/etc/php/conf.d/xdebug.ini" shape="box"];
  "sha256:cfc9b95418d8f8038efa5e3499e473f3f1ad47a6f3432d98dce42baff357496e" [label="/bin/sh -c echo \"xdebug.remote_autostart=on\" >> /usr/local/etc/php/conf.d/xdebug.ini" shape="box"];
  "sha256:f9c245761e3578178ef419163790f9355413f168e8f51fd7757cd3fc013e65ae" [label="/bin/sh -c docker-php-ext-install pdo_mysql zip" shape="box"];
  "sha256:2f93d6ed0dacb05baf9ddeb47e03b230e3cb45293ff3be88590b1d19a5a7b498" [label="sha256:2f93d6ed0dacb05baf9ddeb47e03b230e3cb45293ff3be88590b1d19a5a7b498" shape="plaintext"];
  "sha256:b323f4c7f46f6d12189d61b0b217494d8c15684627720d0a426ba84fffdcd5a6" -> "sha256:42bf945aaa2587b1bfcb63bd3c3771b065144595aec4b447b84932477c327596" [label=""];
  "sha256:42bf945aaa2587b1bfcb63bd3c3771b065144595aec4b447b84932477c327596" -> "sha256:e6130b7939b8c256a9a2d7fd4c6c2087f7e003a81d2d2017324a8fec8a6d957d" [label=""];
  "sha256:e6130b7939b8c256a9a2d7fd4c6c2087f7e003a81d2d2017324a8fec8a6d957d" -> "sha256:c5b50911d550bd53753a0f4f1d218684bf7c171afc67dad5b4f09824ab1c72f3" [label=""];
  "sha256:c5b50911d550bd53753a0f4f1d218684bf7c171afc67dad5b4f09824ab1c72f3" -> "sha256:74ca1e89cbdc618b50690a27b150549a515136a3066b013948671fb54a0f12d3" [label=""];
  "sha256:74ca1e89cbdc618b50690a27b150549a515136a3066b013948671fb54a0f12d3" -> "sha256:cfc9b95418d8f8038efa5e3499e473f3f1ad47a6f3432d98dce42baff357496e" [label=""];
  "sha256:cfc9b95418d8f8038efa5e3499e473f3f1ad47a6f3432d98dce42baff357496e" -> "sha256:f9c245761e3578178ef419163790f9355413f168e8f51fd7757cd3fc013e65ae" [label=""];
  "sha256:f9c245761e3578178ef419163790f9355413f168e8f51fd7757cd3fc013e65ae" -> "sha256:2f93d6ed0dacb05baf9ddeb47e03b230e3cb45293ff3be88590b1d19a5a7b498" [label=""];
}

