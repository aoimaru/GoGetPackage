[app/sources/290277118.Dockerfile]
digraph {
  "sha256:8126f1fc10ebaf28179c9daf5dc637dcbe8db932d72f286fd53c6fff567c21af" [label="docker-image://docker.io/library/php:7.2-fpm-alpine" shape="ellipse"];
  "sha256:b0ab5c0b0020bb28f6bd6aeebf87f4cfd9b23be1b4ce8c35891d52d6ef5b18f0" [label="/bin/sh -c apk add --no-cache         freetype-dev libpng-dev libjpeg-turbo-dev gettext-dev         freetype libpng libjpeg-turbo gettext &&     docker-php-ext-configure gd         --with-freetype-dir=/usr/include/         --with-png-dir=/usr/include/         --with-jpeg-dir=/usr/include/ &&     docker-php-ext-install gd mysqli pdo_mysql gettext &&     apk del --no-cache         freetype-dev libpng-dev libjpeg-turbo-dev gettext-dev" shape="box"];
  "sha256:aa12a5af2e284c8a8cc3de94b0dae41acaea6129a19ce707305fbb9e6477e016" [label="sha256:aa12a5af2e284c8a8cc3de94b0dae41acaea6129a19ce707305fbb9e6477e016" shape="plaintext"];
  "sha256:8126f1fc10ebaf28179c9daf5dc637dcbe8db932d72f286fd53c6fff567c21af" -> "sha256:b0ab5c0b0020bb28f6bd6aeebf87f4cfd9b23be1b4ce8c35891d52d6ef5b18f0" [label=""];
  "sha256:b0ab5c0b0020bb28f6bd6aeebf87f4cfd9b23be1b4ce8c35891d52d6ef5b18f0" -> "sha256:aa12a5af2e284c8a8cc3de94b0dae41acaea6129a19ce707305fbb9e6477e016" [label=""];
}

