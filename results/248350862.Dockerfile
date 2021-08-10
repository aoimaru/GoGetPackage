[app/sources/248350862.Dockerfile]
digraph {
  "sha256:b43e36e6a916eb9d373796ec11ceb0f0dd077d0cee6ede9546910f1e95c18914" [label="docker-image://docker.io/library/php:7.1-cli-stretch" shape="ellipse"];
  "sha256:dc84acfd1fa174f7a6c8aac8276a2127a2b7c8ca889ab8f4a75b80b5509b641b" [label="/bin/sh -c apt-get update     && apt install -y      curl      git      zip      unzip      openssl      libzip-dev     && docker-php-ext-install zip     && rm -r /var/lib/apt/lists/*" shape="box"];
  "sha256:a7e6c3a5a5f26b284546dcc9ee0858109d80e68603abc8278862da33f117462c" [label="/bin/sh -c pecl install xdebug-2.6.0     \t&& docker-php-ext-enable xdebug     \t&& echo \"error_reporting = E_ALL\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini     \t&& echo \"display_startup_errors = On\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini     \t&& echo \"display_errors = On\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini     \t&& echo \"xdebug.remote_enable=1\" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini;" shape="box"];
  "sha256:48d786d7f8a2a1b0ef15cd4958c28fd32b783a1ef4d6cacd69882fe2947af15a" [label="docker-image://docker.io/library/composer:latest" shape="ellipse"];
  "sha256:acc788c20ac30f6a3babbc1600667d005587009495ec67317d94a131d38608d4" [label="copy{src=/usr/bin/composer, dest=/usr/bin/composer}" shape="note"];
  "sha256:454a475f747805e55083b7ddc4825c25d0fbb01bad2579e3877c32ad7c4eabf1" [label="mkdir{path=/docker}" shape="note"];
  "sha256:baaed93a4794835fc084a99a4347b942a22ac01ff9bc9bdb4b765e31ba4f33fe" [label="sha256:baaed93a4794835fc084a99a4347b942a22ac01ff9bc9bdb4b765e31ba4f33fe" shape="plaintext"];
  "sha256:b43e36e6a916eb9d373796ec11ceb0f0dd077d0cee6ede9546910f1e95c18914" -> "sha256:dc84acfd1fa174f7a6c8aac8276a2127a2b7c8ca889ab8f4a75b80b5509b641b" [label=""];
  "sha256:dc84acfd1fa174f7a6c8aac8276a2127a2b7c8ca889ab8f4a75b80b5509b641b" -> "sha256:a7e6c3a5a5f26b284546dcc9ee0858109d80e68603abc8278862da33f117462c" [label=""];
  "sha256:a7e6c3a5a5f26b284546dcc9ee0858109d80e68603abc8278862da33f117462c" -> "sha256:acc788c20ac30f6a3babbc1600667d005587009495ec67317d94a131d38608d4" [label=""];
  "sha256:48d786d7f8a2a1b0ef15cd4958c28fd32b783a1ef4d6cacd69882fe2947af15a" -> "sha256:acc788c20ac30f6a3babbc1600667d005587009495ec67317d94a131d38608d4" [label=""];
  "sha256:acc788c20ac30f6a3babbc1600667d005587009495ec67317d94a131d38608d4" -> "sha256:454a475f747805e55083b7ddc4825c25d0fbb01bad2579e3877c32ad7c4eabf1" [label=""];
  "sha256:454a475f747805e55083b7ddc4825c25d0fbb01bad2579e3877c32ad7c4eabf1" -> "sha256:baaed93a4794835fc084a99a4347b942a22ac01ff9bc9bdb4b765e31ba4f33fe" [label=""];
}

