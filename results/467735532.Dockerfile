[app/sources/467735532.Dockerfile]
digraph {
  "sha256:36f6553ef1f24fc6362debb128d6bd8eaea6ae832b2d94f9113bb0cfd879320e" [label="docker-image://docker.io/library/php:7.3-cli-alpine3.8" shape="ellipse"];
  "sha256:eb271ddf1db5f15ce13ee66cf3383d2a948ad2d6b1dbf02785ce87852dbc25e1" [label="/bin/sh -c mkdir -p /app/bin" shape="box"];
  "sha256:ff003793bd7a4aad52bfc5dc18a55c366990564c9109659b8d09bd0c82c7d6f9" [label="/bin/sh -c apk add --update --no-cache --virtual .build-deps         ${PHPIZE_DEPS}         libxml2-dev         libzip-dev         zlib-dev     && docker-php-ext-install -j $(getconf _NPROCESSORS_ONLN)         xml         zip     && pecl install         xdebug-2.7.0RC1         timecop-beta     && docker-php-ext-enable         xdebug         timecop     && apk del --purge .build-deps" shape="box"];
  "sha256:fc4e93c01de595f141cdee021b184364f999fd3760c77535f48b01d71cb9bcf3" [label="/bin/sh -c apk add --update --no-cache         git         libzip         unzip         su-exec         shadow" shape="box"];
  "sha256:90902124e06a27538671ca5032dc10a5d61a97f79003c704d26d4a605df2b4e4" [label="/bin/sh -c curl --show-error https://getcomposer.org/installer | php --         --install-dir=/app/bin         --filename=composer         --version=1.8.3" shape="box"];
  "sha256:5e07247ac59e7d122bea49fff3dd19b2bb355b896efb7344e62b56bba8800b84" [label="/bin/sh -c useradd -ms /bin/sh app" shape="box"];
  "sha256:c3846a741ab8484bb17ff8db3be309873f6886a87c089a75401ebfad7aa79b4f" [label="/bin/sh -c su-exec app composer global require hirak/prestissimo" shape="box"];
  "sha256:e7e396ec3de0161549f84faf817363e46e0145efb3c10fb8c6833f8f119dfa55" [label="local://context" shape="ellipse"];
  "sha256:4ae0840275b68a8890d97be1541f2c1ed7cdc98fd7cf6ade0b5a6fe3389fad81" [label="copy{src=/entrypoint.sh, dest=/usr/local/bin/docker-entrypoint}" shape="note"];
  "sha256:8af2663ce9eb930423ea085dce018d70624f3201769b1b220bcceafa5258d3a2" [label="mkdir{path=/app/src}" shape="note"];
  "sha256:a24c069bc07f0758380b98a96fd52a4420be34bbb17f355d7ad7b1fd72f1e24f" [label="sha256:a24c069bc07f0758380b98a96fd52a4420be34bbb17f355d7ad7b1fd72f1e24f" shape="plaintext"];
  "sha256:36f6553ef1f24fc6362debb128d6bd8eaea6ae832b2d94f9113bb0cfd879320e" -> "sha256:eb271ddf1db5f15ce13ee66cf3383d2a948ad2d6b1dbf02785ce87852dbc25e1" [label=""];
  "sha256:eb271ddf1db5f15ce13ee66cf3383d2a948ad2d6b1dbf02785ce87852dbc25e1" -> "sha256:ff003793bd7a4aad52bfc5dc18a55c366990564c9109659b8d09bd0c82c7d6f9" [label=""];
  "sha256:ff003793bd7a4aad52bfc5dc18a55c366990564c9109659b8d09bd0c82c7d6f9" -> "sha256:fc4e93c01de595f141cdee021b184364f999fd3760c77535f48b01d71cb9bcf3" [label=""];
  "sha256:fc4e93c01de595f141cdee021b184364f999fd3760c77535f48b01d71cb9bcf3" -> "sha256:90902124e06a27538671ca5032dc10a5d61a97f79003c704d26d4a605df2b4e4" [label=""];
  "sha256:90902124e06a27538671ca5032dc10a5d61a97f79003c704d26d4a605df2b4e4" -> "sha256:5e07247ac59e7d122bea49fff3dd19b2bb355b896efb7344e62b56bba8800b84" [label=""];
  "sha256:5e07247ac59e7d122bea49fff3dd19b2bb355b896efb7344e62b56bba8800b84" -> "sha256:c3846a741ab8484bb17ff8db3be309873f6886a87c089a75401ebfad7aa79b4f" [label=""];
  "sha256:c3846a741ab8484bb17ff8db3be309873f6886a87c089a75401ebfad7aa79b4f" -> "sha256:4ae0840275b68a8890d97be1541f2c1ed7cdc98fd7cf6ade0b5a6fe3389fad81" [label=""];
  "sha256:e7e396ec3de0161549f84faf817363e46e0145efb3c10fb8c6833f8f119dfa55" -> "sha256:4ae0840275b68a8890d97be1541f2c1ed7cdc98fd7cf6ade0b5a6fe3389fad81" [label=""];
  "sha256:4ae0840275b68a8890d97be1541f2c1ed7cdc98fd7cf6ade0b5a6fe3389fad81" -> "sha256:8af2663ce9eb930423ea085dce018d70624f3201769b1b220bcceafa5258d3a2" [label=""];
  "sha256:8af2663ce9eb930423ea085dce018d70624f3201769b1b220bcceafa5258d3a2" -> "sha256:a24c069bc07f0758380b98a96fd52a4420be34bbb17f355d7ad7b1fd72f1e24f" [label=""];
}

