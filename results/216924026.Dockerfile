[app/sources/216924026.Dockerfile]
digraph {
  "sha256:b211d051e13bfd62f8cbb692193c537c547651f064231c7b6faddf3a74b4990f" [label="local://context" shape="ellipse"];
  "sha256:56dbfc7ecef8b6bbe4bc3cd95b405269ecce3ffa67f4a1f5976ff56e11f0c647" [label="docker-image://docker.io/library/php:7.2-apache" shape="ellipse"];
  "sha256:89a95585143bd67f08a4daccc033a077623507edf2f6ced1dfb8847e6ceb7a6d" [label="copy{src=/docker/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:9fb8bd082b72b740012c8ae8373a5ff1275d76834b68725f2736e277ba22461e" [label="/bin/sh -c set -ex; \t\tsavedAptMark=\"$(apt-mark showmanual)\"; \t\tapt-get update; \tapt-get install -y --no-install-recommends \t\tlibjpeg-dev \t\tlibpng-dev \t; \t\tdocker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr; \tdocker-php-ext-install gd mysqli opcache zip; \t\tapt-mark auto '.*' > /dev/null; \tapt-mark manual $savedAptMark; \tapt-get install -y \t\tmariadb-client     ; \tldd \"$(php -r 'echo ini_get(\"extension_dir\");')\"/*.so \t\t| awk '/=>/ { print $3 }' \t\t| sort -u \t\t| xargs -r dpkg-query -S \t\t| cut -d: -f1 \t\t| sort -u \t\t| xargs -rt apt-mark manual; \t\tapt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; \trm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:4a3baf656009667848e9dbf8ccf96798d14f1b5b863a5386fd29983baf4d23b7" [label="/bin/sh -c { \t\techo 'opcache.memory_consumption=128'; \t\techo 'opcache.interned_strings_buffer=8'; \t\techo 'opcache.max_accelerated_files=4000'; \t\techo 'opcache.revalidate_freq=2'; \t\techo 'opcache.fast_shutdown=1'; \t\techo 'opcache.enable_cli=1'; \t} > /usr/local/etc/php/conf.d/opcache-recommended.ini" shape="box"];
  "sha256:dcdccfa8f60425b130e4a30175cb95c00a7b7014bcf39b9b9afc30cfd000a978" [label="/bin/sh -c set -ex; rm -fr /vaw/www/html" shape="box"];
  "sha256:33c7f331518ddcf1fad55a1056b2b817d4d953797d761d4154073a96fcf7d822" [label="/bin/sh -c a2enmod rewrite expires" shape="box"];
  "sha256:b96e3dec3d949a9232f594b669d5b0d99199ef1fa9d4304c13a0982c2fc4dc57" [label="copy{src=/, dest=/var/www/html}" shape="note"];
  "sha256:d878bd83572b0033cddb282112a2eaf6f4364b12d8271fdc3d358309d3a00951" [label="sha256:d878bd83572b0033cddb282112a2eaf6f4364b12d8271fdc3d358309d3a00951" shape="plaintext"];
  "sha256:56dbfc7ecef8b6bbe4bc3cd95b405269ecce3ffa67f4a1f5976ff56e11f0c647" -> "sha256:89a95585143bd67f08a4daccc033a077623507edf2f6ced1dfb8847e6ceb7a6d" [label=""];
  "sha256:b211d051e13bfd62f8cbb692193c537c547651f064231c7b6faddf3a74b4990f" -> "sha256:89a95585143bd67f08a4daccc033a077623507edf2f6ced1dfb8847e6ceb7a6d" [label=""];
  "sha256:89a95585143bd67f08a4daccc033a077623507edf2f6ced1dfb8847e6ceb7a6d" -> "sha256:9fb8bd082b72b740012c8ae8373a5ff1275d76834b68725f2736e277ba22461e" [label=""];
  "sha256:9fb8bd082b72b740012c8ae8373a5ff1275d76834b68725f2736e277ba22461e" -> "sha256:4a3baf656009667848e9dbf8ccf96798d14f1b5b863a5386fd29983baf4d23b7" [label=""];
  "sha256:4a3baf656009667848e9dbf8ccf96798d14f1b5b863a5386fd29983baf4d23b7" -> "sha256:dcdccfa8f60425b130e4a30175cb95c00a7b7014bcf39b9b9afc30cfd000a978" [label=""];
  "sha256:dcdccfa8f60425b130e4a30175cb95c00a7b7014bcf39b9b9afc30cfd000a978" -> "sha256:33c7f331518ddcf1fad55a1056b2b817d4d953797d761d4154073a96fcf7d822" [label=""];
  "sha256:33c7f331518ddcf1fad55a1056b2b817d4d953797d761d4154073a96fcf7d822" -> "sha256:b96e3dec3d949a9232f594b669d5b0d99199ef1fa9d4304c13a0982c2fc4dc57" [label=""];
  "sha256:b211d051e13bfd62f8cbb692193c537c547651f064231c7b6faddf3a74b4990f" -> "sha256:b96e3dec3d949a9232f594b669d5b0d99199ef1fa9d4304c13a0982c2fc4dc57" [label=""];
  "sha256:b96e3dec3d949a9232f594b669d5b0d99199ef1fa9d4304c13a0982c2fc4dc57" -> "sha256:d878bd83572b0033cddb282112a2eaf6f4364b12d8271fdc3d358309d3a00951" [label=""];
}

