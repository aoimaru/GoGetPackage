[app/sources/216031221.Dockerfile]
digraph {
  "sha256:def2dffe4ccb30e089bf3d1ba8c9f155b4484657831a1a77878b089db37baf1b" [label="docker-image://docker.io/library/debian:oldstable" shape="ellipse"];
  "sha256:a68c939aa0531561f288fba6e441ef3049e1de662a60756eccc4b8787b07ee72" [label="/bin/sh -c apt-get update && apt-get install -y php5-intl php5-gd git curl     php5-cli php5-curl php5-imagick php5-mcrypt php5-ldap php5-sqlite     make libmagickcore5-extra &&     apt-get autoremove -y && apt-get autoclean && apt-get clean &&     rm -rf /tmp/* /var/tmp/* /var/lib/apt/lists/*" shape="box"];
  "sha256:b066a2915e6f2b760e45252867c0b4eb817fb5188579a8e710a8a214fc5b5803" [label="/bin/sh -c php5enmod zip intl gd" shape="box"];
  "sha256:9342b90661a329ecd758954456cf4e2f077a42baff024792d72c041c87e84149" [label="/bin/sh -c curl -O -L https://phar.phpunit.de/phpunit-4.8.24.phar     && chmod +x phpunit-4.8.24.phar     && mv phpunit-4.8.24.phar /usr/local/bin/phpunit" shape="box"];
  "sha256:afd6ca07c8841c3143292c296ba38735b49a8c7df65e08c8e9489b97952e0425" [label="/bin/sh -c curl -O -L https://getcomposer.org/download/1.1.2/composer.phar     && chmod +x composer.phar     && mv composer.phar /usr/local/bin/composer" shape="box"];
  "sha256:65a8ba610f4b1049dd2a8d05302d6e447d7877bde757fe26cac9d98ff77d33a8" [label="local://context" shape="ellipse"];
  "sha256:1b25c8eb589740129a1cb747ce049e3dfc8c6b61d0e4d9ac9016b177df1dd23c" [label="copy{src=/nextcloud.ini, dest=/etc/php5/cli/conf.d/nextcloud.ini}" shape="note"];
  "sha256:8347e60b631c477772f73a8ab8f6512a135e45cd19314f58fe2b6862f9b7fd1c" [label="sha256:8347e60b631c477772f73a8ab8f6512a135e45cd19314f58fe2b6862f9b7fd1c" shape="plaintext"];
  "sha256:def2dffe4ccb30e089bf3d1ba8c9f155b4484657831a1a77878b089db37baf1b" -> "sha256:a68c939aa0531561f288fba6e441ef3049e1de662a60756eccc4b8787b07ee72" [label=""];
  "sha256:a68c939aa0531561f288fba6e441ef3049e1de662a60756eccc4b8787b07ee72" -> "sha256:b066a2915e6f2b760e45252867c0b4eb817fb5188579a8e710a8a214fc5b5803" [label=""];
  "sha256:b066a2915e6f2b760e45252867c0b4eb817fb5188579a8e710a8a214fc5b5803" -> "sha256:9342b90661a329ecd758954456cf4e2f077a42baff024792d72c041c87e84149" [label=""];
  "sha256:9342b90661a329ecd758954456cf4e2f077a42baff024792d72c041c87e84149" -> "sha256:afd6ca07c8841c3143292c296ba38735b49a8c7df65e08c8e9489b97952e0425" [label=""];
  "sha256:afd6ca07c8841c3143292c296ba38735b49a8c7df65e08c8e9489b97952e0425" -> "sha256:1b25c8eb589740129a1cb747ce049e3dfc8c6b61d0e4d9ac9016b177df1dd23c" [label=""];
  "sha256:65a8ba610f4b1049dd2a8d05302d6e447d7877bde757fe26cac9d98ff77d33a8" -> "sha256:1b25c8eb589740129a1cb747ce049e3dfc8c6b61d0e4d9ac9016b177df1dd23c" [label=""];
  "sha256:1b25c8eb589740129a1cb747ce049e3dfc8c6b61d0e4d9ac9016b177df1dd23c" -> "sha256:8347e60b631c477772f73a8ab8f6512a135e45cd19314f58fe2b6862f9b7fd1c" [label=""];
}

