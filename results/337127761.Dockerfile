[app/sources/337127761.Dockerfile]
digraph {
  "sha256:d7a0fbe0554bc6ef19eb11e6c5b444355e826b930f099996152b751958035b0d" [label="local://context" shape="ellipse"];
  "sha256:d7600537f603dea2251208fff2d5e833f29c7851362691b0bcb6a213395d9a2a" [label="docker-image://docker.io/openrasp/php5.4:latest" shape="ellipse"];
  "sha256:b0a3219476c0d81422f28f6de32dbd47f654c0189060c121f97fda38e6dccd46" [label="https://packages.baidu.com/app/openrasp/rasp-php-linux.tar.bz2" shape="ellipse"];
  "sha256:b06b568f20204b18d07233bdd9e4e5a6ca6a651e8addf284c5380f12fd210a4f" [label="copy{src=/rasp-php-linux.tar.bz2, dest=/tmp}" shape="note"];
  "sha256:1eb4ed48d15b1a640bdaa12fa7f6a22eb931e70db8cd32b02234a40efd897a71" [label="https://packages.baidu.com/app/bWAPP_latest.zip" shape="ellipse"];
  "sha256:f898462b9ff2c8f0e5f211d5ee86f729b9a4bce373925c61c6d68802ed61699d" [label="copy{src=/bWAPP_latest.zip, dest=/tmp/package.zip}" shape="note"];
  "sha256:de2f39e1c32331a13bc2ca393fadc9aea23263f0ae39952eeed64285f0e30141" [label="/bin/sh -c cd /var/www/html \t&& unzip -q /tmp/package.zip \t&& rm -rf /tmp/package.zip" shape="box"];
  "sha256:77a121298a1593e938a2560a61041b40d60f7ae29b550583c8389606f70afa95" [label="/bin/sh -c cd /tmp \t&& tar -xf rasp-php-linux.tar.bz2 \t&& php rasp-php-*/install.php -d /opt/rasp/ \t&& rm -rf rasp-php*" shape="box"];
  "sha256:4aa896a5b3b6ca06b4d5f93fccff49596113dfb435e2e4a00da3d47b7260c604" [label="copy{src=/index.php, dest=/var/www/html}" shape="note"];
  "sha256:2a4a1bbb3e33f1d120fb15c20adcad3c571f65ba571b66edb2ea583b80b3ba20" [label="copy{src=/settings.php, dest=/var/www/html/bWAPP/admin}" shape="note"];
  "sha256:7652605dc5c59013607a2ff7572653805d50a31114426a5bdcaf68c7963dbc80" [label="copy{src=/start.sh, dest=/root/}" shape="note"];
  "sha256:04f7d2dce15fa936206113fe83ce0f131b9e311d01b19ca8eb2ae88177c78182" [label="sha256:04f7d2dce15fa936206113fe83ce0f131b9e311d01b19ca8eb2ae88177c78182" shape="plaintext"];
  "sha256:d7600537f603dea2251208fff2d5e833f29c7851362691b0bcb6a213395d9a2a" -> "sha256:b06b568f20204b18d07233bdd9e4e5a6ca6a651e8addf284c5380f12fd210a4f" [label=""];
  "sha256:b0a3219476c0d81422f28f6de32dbd47f654c0189060c121f97fda38e6dccd46" -> "sha256:b06b568f20204b18d07233bdd9e4e5a6ca6a651e8addf284c5380f12fd210a4f" [label=""];
  "sha256:b06b568f20204b18d07233bdd9e4e5a6ca6a651e8addf284c5380f12fd210a4f" -> "sha256:f898462b9ff2c8f0e5f211d5ee86f729b9a4bce373925c61c6d68802ed61699d" [label=""];
  "sha256:1eb4ed48d15b1a640bdaa12fa7f6a22eb931e70db8cd32b02234a40efd897a71" -> "sha256:f898462b9ff2c8f0e5f211d5ee86f729b9a4bce373925c61c6d68802ed61699d" [label=""];
  "sha256:f898462b9ff2c8f0e5f211d5ee86f729b9a4bce373925c61c6d68802ed61699d" -> "sha256:de2f39e1c32331a13bc2ca393fadc9aea23263f0ae39952eeed64285f0e30141" [label=""];
  "sha256:de2f39e1c32331a13bc2ca393fadc9aea23263f0ae39952eeed64285f0e30141" -> "sha256:77a121298a1593e938a2560a61041b40d60f7ae29b550583c8389606f70afa95" [label=""];
  "sha256:77a121298a1593e938a2560a61041b40d60f7ae29b550583c8389606f70afa95" -> "sha256:4aa896a5b3b6ca06b4d5f93fccff49596113dfb435e2e4a00da3d47b7260c604" [label=""];
  "sha256:d7a0fbe0554bc6ef19eb11e6c5b444355e826b930f099996152b751958035b0d" -> "sha256:4aa896a5b3b6ca06b4d5f93fccff49596113dfb435e2e4a00da3d47b7260c604" [label=""];
  "sha256:4aa896a5b3b6ca06b4d5f93fccff49596113dfb435e2e4a00da3d47b7260c604" -> "sha256:2a4a1bbb3e33f1d120fb15c20adcad3c571f65ba571b66edb2ea583b80b3ba20" [label=""];
  "sha256:d7a0fbe0554bc6ef19eb11e6c5b444355e826b930f099996152b751958035b0d" -> "sha256:2a4a1bbb3e33f1d120fb15c20adcad3c571f65ba571b66edb2ea583b80b3ba20" [label=""];
  "sha256:2a4a1bbb3e33f1d120fb15c20adcad3c571f65ba571b66edb2ea583b80b3ba20" -> "sha256:7652605dc5c59013607a2ff7572653805d50a31114426a5bdcaf68c7963dbc80" [label=""];
  "sha256:d7a0fbe0554bc6ef19eb11e6c5b444355e826b930f099996152b751958035b0d" -> "sha256:7652605dc5c59013607a2ff7572653805d50a31114426a5bdcaf68c7963dbc80" [label=""];
  "sha256:7652605dc5c59013607a2ff7572653805d50a31114426a5bdcaf68c7963dbc80" -> "sha256:04f7d2dce15fa936206113fe83ce0f131b9e311d01b19ca8eb2ae88177c78182" [label=""];
}

