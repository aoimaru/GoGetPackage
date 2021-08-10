[app/sources/160118306.Dockerfile]
digraph {
  "sha256:b88f7a98e24596d773a766ced456b0c2158e762b041ce874152b897fe38cf585" [label="local://context" shape="ellipse"];
  "sha256:9a04bfdadd0930feb03a97c8e419e2675d6c3430375a2ea743c9c079ec1d0df4" [label="docker-image://docker.io/library/php:7.2-fpm" shape="ellipse"];
  "sha256:52cade6aada9060c2abfe6c20a2841d64805c48794ceb875853c26cbe4b0e2c4" [label="/bin/sh -c apt-get update && apt-get install -y         libfreetype6-dev         libjpeg62-turbo-dev         libicu-dev         wget         git             --no-install-recommends" shape="box"];
  "sha256:251193978d342e16edd2ac4f383348a40370f80452f9ef224e8ded0599fd1b76" [label="/bin/sh -c docker-php-ext-install zip intl mbstring pdo_mysql exif     && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/     && docker-php-ext-install gd" shape="box"];
  "sha256:8a43d0efc56b323d21436c9889169f3f2baf8f1777b8b524167e449b4f51503d" [label="/bin/sh -c pecl install -o -f xdebug     && rm -rf /tmp/pear" shape="box"];
  "sha256:c8e06f0a813c9ca35dcdbbc02e0147b2d8709af22808c0fad700e66a7ab5f057" [label="copy{src=/install-composer.sh, dest=/}" shape="note"];
  "sha256:b71f6bada01768f8a79a65c1040d744e893f71975e1f81fbc461b0ba381a56fd" [label="copy{src=/php.ini, dest=/usr/local/etc/php/}" shape="note"];
  "sha256:a169aaebb1ed51f5c96570412ea51402a5d004dec4d397cb7db1d1dd62de827e" [label="copy{src=/www.conf, dest=/usr/local/etc/php/}" shape="note"];
  "sha256:980b0a870108f19cc872e60e06c39fbcf4ebe219a8d59a6f86da917e936c6950" [label="/bin/sh -c apt-get purge -y g++     && apt-get autoremove -y     && rm -r /var/lib/apt/lists/*     && rm -rf /tmp/*     && sh /install-composer.sh     && rm /install-composer.sh" shape="box"];
  "sha256:59eae4367934153b6c2fef5bc895c77483dc11b7adeb52285e3260738c17487f" [label="/bin/sh -c usermod -u 1000 www-data" shape="box"];
  "sha256:19e5dff9cffef75d4d8e4b8be808f893a0102cb53521efcf4167c4ba505263fd" [label="mkdir{path=/app}" shape="note"];
  "sha256:bb8834c4ad9dff574a2c62f72a0011a16d85383a6f4f3883bbac86fa268a28f0" [label="sha256:bb8834c4ad9dff574a2c62f72a0011a16d85383a6f4f3883bbac86fa268a28f0" shape="plaintext"];
  "sha256:9a04bfdadd0930feb03a97c8e419e2675d6c3430375a2ea743c9c079ec1d0df4" -> "sha256:52cade6aada9060c2abfe6c20a2841d64805c48794ceb875853c26cbe4b0e2c4" [label=""];
  "sha256:52cade6aada9060c2abfe6c20a2841d64805c48794ceb875853c26cbe4b0e2c4" -> "sha256:251193978d342e16edd2ac4f383348a40370f80452f9ef224e8ded0599fd1b76" [label=""];
  "sha256:251193978d342e16edd2ac4f383348a40370f80452f9ef224e8ded0599fd1b76" -> "sha256:8a43d0efc56b323d21436c9889169f3f2baf8f1777b8b524167e449b4f51503d" [label=""];
  "sha256:8a43d0efc56b323d21436c9889169f3f2baf8f1777b8b524167e449b4f51503d" -> "sha256:c8e06f0a813c9ca35dcdbbc02e0147b2d8709af22808c0fad700e66a7ab5f057" [label=""];
  "sha256:b88f7a98e24596d773a766ced456b0c2158e762b041ce874152b897fe38cf585" -> "sha256:c8e06f0a813c9ca35dcdbbc02e0147b2d8709af22808c0fad700e66a7ab5f057" [label=""];
  "sha256:c8e06f0a813c9ca35dcdbbc02e0147b2d8709af22808c0fad700e66a7ab5f057" -> "sha256:b71f6bada01768f8a79a65c1040d744e893f71975e1f81fbc461b0ba381a56fd" [label=""];
  "sha256:b88f7a98e24596d773a766ced456b0c2158e762b041ce874152b897fe38cf585" -> "sha256:b71f6bada01768f8a79a65c1040d744e893f71975e1f81fbc461b0ba381a56fd" [label=""];
  "sha256:b71f6bada01768f8a79a65c1040d744e893f71975e1f81fbc461b0ba381a56fd" -> "sha256:a169aaebb1ed51f5c96570412ea51402a5d004dec4d397cb7db1d1dd62de827e" [label=""];
  "sha256:b88f7a98e24596d773a766ced456b0c2158e762b041ce874152b897fe38cf585" -> "sha256:a169aaebb1ed51f5c96570412ea51402a5d004dec4d397cb7db1d1dd62de827e" [label=""];
  "sha256:a169aaebb1ed51f5c96570412ea51402a5d004dec4d397cb7db1d1dd62de827e" -> "sha256:980b0a870108f19cc872e60e06c39fbcf4ebe219a8d59a6f86da917e936c6950" [label=""];
  "sha256:980b0a870108f19cc872e60e06c39fbcf4ebe219a8d59a6f86da917e936c6950" -> "sha256:59eae4367934153b6c2fef5bc895c77483dc11b7adeb52285e3260738c17487f" [label=""];
  "sha256:59eae4367934153b6c2fef5bc895c77483dc11b7adeb52285e3260738c17487f" -> "sha256:19e5dff9cffef75d4d8e4b8be808f893a0102cb53521efcf4167c4ba505263fd" [label=""];
  "sha256:19e5dff9cffef75d4d8e4b8be808f893a0102cb53521efcf4167c4ba505263fd" -> "sha256:bb8834c4ad9dff574a2c62f72a0011a16d85383a6f4f3883bbac86fa268a28f0" [label=""];
}

