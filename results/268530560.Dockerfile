[app/sources/268530560.Dockerfile]
digraph {
  "sha256:1561aa420866965e065632eb5f159099f3c4f7720697e1ce75fc652e5bf08e5c" [label="docker-image://docker.io/library/php:7.1-cli" shape="ellipse"];
  "sha256:48073c8388ae82d9d442a117393802a1812e77b43a875ed58d590c8b677e51de" [label="docker-image://docker.io/library/composer:1.8" shape="ellipse"];
  "sha256:addeaef5e8b34a9a055b96179d6c3dcc376c3e6ca652e639c0c80cc6eef4ff25" [label="copy{src=/usr/bin/composer, dest=/usr/bin/composer}" shape="note"];
  "sha256:b668c73f54cc00b38f1146f62115815172a59426193ccc454b9d930e30b8e67a" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends $TOOL_DEPS $BUILD_DEPS $LIB_DEPS && rm -rf /var/lib/apt/lists/*  && git clone https://github.com/nikic/php-ast.git && cd php-ast && phpize && ./configure && make && make install && cd .. && rm -rf php-ast && docker-php-ext-enable ast  && docker-php-ext-install zip pcntl  && echo \"date.timezone=Europe/London\" >> $PHP_INI_DIR/php.ini  && echo \"memory_limit=-1\" >> $PHP_INI_DIR/php.ini  && echo \"phar.readonly=0\" >> $PHP_INI_DIR/php.ini  && mkdir -p $TOOLBOX_TARGET_DIR && curl -Ls https://github.com/jakzal/toolbox/releases/download/v$TOOLBOX_VERSION/toolbox.phar -o $TOOLBOX_TARGET_DIR/toolbox && chmod +x $TOOLBOX_TARGET_DIR/toolbox  && php $TOOLBOX_TARGET_DIR/toolbox install  && rm -rf $COMPOSER_HOME/cache  && apt-get purge -y --auto-remove $BUILD_DEPS" shape="box"];
  "sha256:41fdf71eb44a2be10c7927f2571b65e44e954f1879ac9a8d196ff9dfd9406807" [label="sha256:41fdf71eb44a2be10c7927f2571b65e44e954f1879ac9a8d196ff9dfd9406807" shape="plaintext"];
  "sha256:1561aa420866965e065632eb5f159099f3c4f7720697e1ce75fc652e5bf08e5c" -> "sha256:addeaef5e8b34a9a055b96179d6c3dcc376c3e6ca652e639c0c80cc6eef4ff25" [label=""];
  "sha256:48073c8388ae82d9d442a117393802a1812e77b43a875ed58d590c8b677e51de" -> "sha256:addeaef5e8b34a9a055b96179d6c3dcc376c3e6ca652e639c0c80cc6eef4ff25" [label=""];
  "sha256:addeaef5e8b34a9a055b96179d6c3dcc376c3e6ca652e639c0c80cc6eef4ff25" -> "sha256:b668c73f54cc00b38f1146f62115815172a59426193ccc454b9d930e30b8e67a" [label=""];
  "sha256:b668c73f54cc00b38f1146f62115815172a59426193ccc454b9d930e30b8e67a" -> "sha256:41fdf71eb44a2be10c7927f2571b65e44e954f1879ac9a8d196ff9dfd9406807" [label=""];
}

