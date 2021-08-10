[app/sources/471996354.Dockerfile]
digraph {
  "sha256:c0526abfa5f0c69e3df587a15c3dd061e5b333978aac0f597370fbf47123f085" [label="docker-image://docker.io/library/composer:1" shape="ellipse"];
  "sha256:3d373f38afeac78f8b2e5de4ab5be2d10b6ffbfec87bd093a2888ca67d2e71b4" [label="local://context" shape="ellipse"];
  "sha256:b7a2ee618eec8c55009419a48b07b12c3bcd5ce0b47d44ed375045592b03e5d0" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:a636cb2b879783316e3fba2ec13c765f80fbe8d3da152327280b9914c1ca17af" [label="/bin/sh -c cd /app && composer install" shape="box"];
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" [label="docker-image://docker.io/library/php:7.1-apache" shape="ellipse"];
  "sha256:201707ef15cc08f5a0d7cebaab91efc48e8b378a25dcf4fee5bb99546435d660" [label="copy{src=/app, dest=/var/www/html}" shape="note"];
  "sha256:96880aa074b8ca505d68cca60d703992c1928bd6f11274c99f3f8d22a11936c9" [label="/bin/sh -c usermod -u 1000 www-data;     a2enmod rewrite;     chown -R www-data:www-data /var/www/html" shape="box"];
  "sha256:2346c17e13f5619cbdb052159cf90dc4b89e4193a92aa92ed71e863c9a84aef4" [label="sha256:2346c17e13f5619cbdb052159cf90dc4b89e4193a92aa92ed71e863c9a84aef4" shape="plaintext"];
  "sha256:c0526abfa5f0c69e3df587a15c3dd061e5b333978aac0f597370fbf47123f085" -> "sha256:b7a2ee618eec8c55009419a48b07b12c3bcd5ce0b47d44ed375045592b03e5d0" [label=""];
  "sha256:3d373f38afeac78f8b2e5de4ab5be2d10b6ffbfec87bd093a2888ca67d2e71b4" -> "sha256:b7a2ee618eec8c55009419a48b07b12c3bcd5ce0b47d44ed375045592b03e5d0" [label=""];
  "sha256:b7a2ee618eec8c55009419a48b07b12c3bcd5ce0b47d44ed375045592b03e5d0" -> "sha256:a636cb2b879783316e3fba2ec13c765f80fbe8d3da152327280b9914c1ca17af" [label=""];
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" -> "sha256:201707ef15cc08f5a0d7cebaab91efc48e8b378a25dcf4fee5bb99546435d660" [label=""];
  "sha256:a636cb2b879783316e3fba2ec13c765f80fbe8d3da152327280b9914c1ca17af" -> "sha256:201707ef15cc08f5a0d7cebaab91efc48e8b378a25dcf4fee5bb99546435d660" [label=""];
  "sha256:201707ef15cc08f5a0d7cebaab91efc48e8b378a25dcf4fee5bb99546435d660" -> "sha256:96880aa074b8ca505d68cca60d703992c1928bd6f11274c99f3f8d22a11936c9" [label=""];
  "sha256:96880aa074b8ca505d68cca60d703992c1928bd6f11274c99f3f8d22a11936c9" -> "sha256:2346c17e13f5619cbdb052159cf90dc4b89e4193a92aa92ed71e863c9a84aef4" [label=""];
}

