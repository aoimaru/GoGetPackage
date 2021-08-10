[app/sources/129559077.Dockerfile]
digraph {
  "sha256:0728f8531b0721277aed2525f021cee42eab07b609130f7a236067d2b2648b5c" [label="docker-image://docker.io/library/php:latest" shape="ellipse"];
  "sha256:dbd0a5532f8f6ca6cdbfde3f939f0ed9fa8b72c3ab198628007942d5d8660139" [label="/bin/sh -c apt-get update && apt-get install -y     zlib1g-dev     git     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:441b54e2315774acd59f94da7c9d86ed9fd2d1cc049fcf4e09bd54fb9e6cb87c" [label="/bin/sh -c docker-php-ext-install zip" shape="box"];
  "sha256:60fb30d79ae68c7d9a4a361a277460f514b3a91a71e7d788aabebff591dcd4ec" [label="/bin/sh -c pecl install xdebug     && docker-php-ext-enable xdebug     && rm -rf /tmp/pear" shape="box"];
  "sha256:6401cd27da3db08775785ec92d05ff3fd62adc338b294eec735988ef05f43bad" [label="local://context" shape="ellipse"];
  "sha256:b76b520d47bad92fe95e0d6657299f0e3ed098348320aebea888796beb095c4d" [label="copy{src=/config/xdebug.ini, dest=/usr/local/etc/php/conf.d/xdebug.ini}" shape="note"];
  "sha256:a122e52f7981cd388ec874a661e852f66ad61db460be19c26d390aad4308c581" [label="copy{src=/config/php.ini, dest=/usr/local/etc/php/php.ini}" shape="note"];
  "sha256:60bcb42fc144429bc94b0cba93f477e3b94de15bf0b2e2c2f6d02eb778eebbe9" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --filename=composer --install-dir=/usr/local/bin" shape="box"];
  "sha256:11a48ad2bbc0cedcc382a0c86b7cd1068af8c894ac8b84a6461f671188d2d0c2" [label="/bin/sh -c chsh -s /bin/bash www-data" shape="box"];
  "sha256:9ac5408a5203c574d77b3f7bce7837841183352bc6b09fb97e8040627519d89f" [label="/bin/sh -c mkdir -p /tmp/ivory-google-map && chmod 777 /tmp/ivory-google-map" shape="box"];
  "sha256:f0f0b837e4aff6e0756b24b6542374b1744ec31b8c6a70261b4de554a91b60b7" [label="/bin/sh -c mkdir -p /var/www && chown www-data:www-data /var/www" shape="box"];
  "sha256:a0607e96961dcf3dd5430ff22433155a76685c06849f0ecf81787161cfc2883d" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:8e91d0a5d222ed22cd1a281f41d09dff99d1676ad713345ae28cc4c1189b755c" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin/entrypoint.sh}" shape="note"];
  "sha256:4665fcc7f53476e00f65fc84e6ae91b8fede99ea3f8fb87e3a69520e5adf1d25" [label="sha256:4665fcc7f53476e00f65fc84e6ae91b8fede99ea3f8fb87e3a69520e5adf1d25" shape="plaintext"];
  "sha256:0728f8531b0721277aed2525f021cee42eab07b609130f7a236067d2b2648b5c" -> "sha256:dbd0a5532f8f6ca6cdbfde3f939f0ed9fa8b72c3ab198628007942d5d8660139" [label=""];
  "sha256:dbd0a5532f8f6ca6cdbfde3f939f0ed9fa8b72c3ab198628007942d5d8660139" -> "sha256:441b54e2315774acd59f94da7c9d86ed9fd2d1cc049fcf4e09bd54fb9e6cb87c" [label=""];
  "sha256:441b54e2315774acd59f94da7c9d86ed9fd2d1cc049fcf4e09bd54fb9e6cb87c" -> "sha256:60fb30d79ae68c7d9a4a361a277460f514b3a91a71e7d788aabebff591dcd4ec" [label=""];
  "sha256:60fb30d79ae68c7d9a4a361a277460f514b3a91a71e7d788aabebff591dcd4ec" -> "sha256:b76b520d47bad92fe95e0d6657299f0e3ed098348320aebea888796beb095c4d" [label=""];
  "sha256:6401cd27da3db08775785ec92d05ff3fd62adc338b294eec735988ef05f43bad" -> "sha256:b76b520d47bad92fe95e0d6657299f0e3ed098348320aebea888796beb095c4d" [label=""];
  "sha256:b76b520d47bad92fe95e0d6657299f0e3ed098348320aebea888796beb095c4d" -> "sha256:a122e52f7981cd388ec874a661e852f66ad61db460be19c26d390aad4308c581" [label=""];
  "sha256:6401cd27da3db08775785ec92d05ff3fd62adc338b294eec735988ef05f43bad" -> "sha256:a122e52f7981cd388ec874a661e852f66ad61db460be19c26d390aad4308c581" [label=""];
  "sha256:a122e52f7981cd388ec874a661e852f66ad61db460be19c26d390aad4308c581" -> "sha256:60bcb42fc144429bc94b0cba93f477e3b94de15bf0b2e2c2f6d02eb778eebbe9" [label=""];
  "sha256:60bcb42fc144429bc94b0cba93f477e3b94de15bf0b2e2c2f6d02eb778eebbe9" -> "sha256:11a48ad2bbc0cedcc382a0c86b7cd1068af8c894ac8b84a6461f671188d2d0c2" [label=""];
  "sha256:11a48ad2bbc0cedcc382a0c86b7cd1068af8c894ac8b84a6461f671188d2d0c2" -> "sha256:9ac5408a5203c574d77b3f7bce7837841183352bc6b09fb97e8040627519d89f" [label=""];
  "sha256:9ac5408a5203c574d77b3f7bce7837841183352bc6b09fb97e8040627519d89f" -> "sha256:f0f0b837e4aff6e0756b24b6542374b1744ec31b8c6a70261b4de554a91b60b7" [label=""];
  "sha256:f0f0b837e4aff6e0756b24b6542374b1744ec31b8c6a70261b4de554a91b60b7" -> "sha256:a0607e96961dcf3dd5430ff22433155a76685c06849f0ecf81787161cfc2883d" [label=""];
  "sha256:a0607e96961dcf3dd5430ff22433155a76685c06849f0ecf81787161cfc2883d" -> "sha256:8e91d0a5d222ed22cd1a281f41d09dff99d1676ad713345ae28cc4c1189b755c" [label=""];
  "sha256:6401cd27da3db08775785ec92d05ff3fd62adc338b294eec735988ef05f43bad" -> "sha256:8e91d0a5d222ed22cd1a281f41d09dff99d1676ad713345ae28cc4c1189b755c" [label=""];
  "sha256:8e91d0a5d222ed22cd1a281f41d09dff99d1676ad713345ae28cc4c1189b755c" -> "sha256:4665fcc7f53476e00f65fc84e6ae91b8fede99ea3f8fb87e3a69520e5adf1d25" [label=""];
}

