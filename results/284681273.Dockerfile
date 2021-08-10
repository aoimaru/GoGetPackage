[app/sources/284681273.Dockerfile]
digraph {
  "sha256:fbc1865a0c8782a4e330e68c092b66a76ee392f59ac88917f14e9e8cdebf785d" [label="docker-image://docker.io/library/php:7.0-apache" shape="ellipse"];
  "sha256:5a445257b02123ce8890afd0a97ea9e4871b6e1b8aa1da8c202cfefc053d1479" [label="/bin/sh -c ln -s /etc/apache2/mods-available/headers.load   /etc/apache2/mods-enabled/headers.load" shape="box"];
  "sha256:f45978bf88bc2ec27df81a1354edb919725c4946c1a2b84eababcae14b4fc15a" [label="/bin/sh -c ln -s /etc/apache2/mods-available/rewrite.load   /etc/apache2/mods-enabled/rewrite.load" shape="box"];
  "sha256:c3a91bb610594e0105316777fcf5ca64123703b74d05777375df23e8825acc5b" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive   apt-get update && apt-get install -y --no-install-recommends     libpng-dev     libjpeg-dev     libmagickwand-dev     imagemagick   && pecl install     imagick   && docker-php-ext-enable     imagick   && docker-php-ext-configure     gd --with-jpeg-dir=/usr/include/   && docker-php-ext-install     gd   && apt-get autoremove -y     libpng-dev     libjpeg-dev     libmagickwand-dev   && apt-get clean   && rm -rf     /tmp/*     /usr/share/doc/*     /var/cache/*     /var/lib/apt/lists/*     /var/tmp/*" shape="box"];
  "sha256:052e5559866e9489ab094233d1b8ec14d27b47b00c5fb5876cd11bdd4ad1e8bb" [label="sha256:052e5559866e9489ab094233d1b8ec14d27b47b00c5fb5876cd11bdd4ad1e8bb" shape="plaintext"];
  "sha256:fbc1865a0c8782a4e330e68c092b66a76ee392f59ac88917f14e9e8cdebf785d" -> "sha256:5a445257b02123ce8890afd0a97ea9e4871b6e1b8aa1da8c202cfefc053d1479" [label=""];
  "sha256:5a445257b02123ce8890afd0a97ea9e4871b6e1b8aa1da8c202cfefc053d1479" -> "sha256:f45978bf88bc2ec27df81a1354edb919725c4946c1a2b84eababcae14b4fc15a" [label=""];
  "sha256:f45978bf88bc2ec27df81a1354edb919725c4946c1a2b84eababcae14b4fc15a" -> "sha256:c3a91bb610594e0105316777fcf5ca64123703b74d05777375df23e8825acc5b" [label=""];
  "sha256:c3a91bb610594e0105316777fcf5ca64123703b74d05777375df23e8825acc5b" -> "sha256:052e5559866e9489ab094233d1b8ec14d27b47b00c5fb5876cd11bdd4ad1e8bb" [label=""];
}

