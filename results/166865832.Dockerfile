[app/sources/166865832.Dockerfile]
digraph {
  "sha256:73f0e677bba18142322f08cc7bb58b8f7b5713e9f561550f0a0a0c54e0daf447" [label="docker-image://docker.io/library/php:7-alpine" shape="ellipse"];
  "sha256:f7a1cef40a49ac46c25ab5e490a63e91299e884c696e0946eb6914636fb920f8" [label="/bin/sh -c apk add --no-cache --virtual .phpize-deps $PHPIZE_DEPS linux-headers &&     pecl install swoole &&     docker-php-ext-enable swoole &&     apk del .phpize-deps" shape="box"];
  "sha256:b810e06e5946225bdb3693d05f02368677b767f0ad37b6545b2928d8afaebea2" [label="sha256:b810e06e5946225bdb3693d05f02368677b767f0ad37b6545b2928d8afaebea2" shape="plaintext"];
  "sha256:73f0e677bba18142322f08cc7bb58b8f7b5713e9f561550f0a0a0c54e0daf447" -> "sha256:f7a1cef40a49ac46c25ab5e490a63e91299e884c696e0946eb6914636fb920f8" [label=""];
  "sha256:f7a1cef40a49ac46c25ab5e490a63e91299e884c696e0946eb6914636fb920f8" -> "sha256:b810e06e5946225bdb3693d05f02368677b767f0ad37b6545b2928d8afaebea2" [label=""];
}

