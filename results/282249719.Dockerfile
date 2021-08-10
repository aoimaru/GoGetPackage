[app/sources/282249719.Dockerfile]
digraph {
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" [label="docker-image://docker.io/library/php:7.1-apache" shape="ellipse"];
  "sha256:030cc991401774ab4409a01c866bc343bfeb37d6510f0d8102724644c59b7382" [label="local://context" shape="ellipse"];
  "sha256:c0526abfa5f0c69e3df587a15c3dd061e5b333978aac0f597370fbf47123f085" [label="docker-image://docker.io/library/composer:1" shape="ellipse"];
  "sha256:94944b81d5980508ce451446fc49e44221ef855c2e4f5972dd63039592f340d1" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:45f0175c9d31004696afb188e66f5cf8e354608a1c0f3c173da95c8b149f70c9" [label="/bin/sh -c cd /app && composer install" shape="box"];
  "sha256:4463beebc527871ace6f71347ae44c2bd62578bc1bf5ea6190fe1719b8035b68" [label="copy{src=/app, dest=/var/www/html}" shape="note"];
  "sha256:2a8619576602d412b5a2b96ae173cd6d7748b66af66836518a3eb65ae691d7c4" [label="/bin/sh -c usermod -u 1000 www-data;     a2enmod rewrite;     chown -R www-data:www-data /var/www/html" shape="box"];
  "sha256:d5efe6dcd5068d93e03f7c40157431ce43a34bac90530ee0dc46ca1cb8a6fdc6" [label="sha256:d5efe6dcd5068d93e03f7c40157431ce43a34bac90530ee0dc46ca1cb8a6fdc6" shape="plaintext"];
  "sha256:c0526abfa5f0c69e3df587a15c3dd061e5b333978aac0f597370fbf47123f085" -> "sha256:94944b81d5980508ce451446fc49e44221ef855c2e4f5972dd63039592f340d1" [label=""];
  "sha256:030cc991401774ab4409a01c866bc343bfeb37d6510f0d8102724644c59b7382" -> "sha256:94944b81d5980508ce451446fc49e44221ef855c2e4f5972dd63039592f340d1" [label=""];
  "sha256:94944b81d5980508ce451446fc49e44221ef855c2e4f5972dd63039592f340d1" -> "sha256:45f0175c9d31004696afb188e66f5cf8e354608a1c0f3c173da95c8b149f70c9" [label=""];
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" -> "sha256:4463beebc527871ace6f71347ae44c2bd62578bc1bf5ea6190fe1719b8035b68" [label=""];
  "sha256:45f0175c9d31004696afb188e66f5cf8e354608a1c0f3c173da95c8b149f70c9" -> "sha256:4463beebc527871ace6f71347ae44c2bd62578bc1bf5ea6190fe1719b8035b68" [label=""];
  "sha256:4463beebc527871ace6f71347ae44c2bd62578bc1bf5ea6190fe1719b8035b68" -> "sha256:2a8619576602d412b5a2b96ae173cd6d7748b66af66836518a3eb65ae691d7c4" [label=""];
  "sha256:2a8619576602d412b5a2b96ae173cd6d7748b66af66836518a3eb65ae691d7c4" -> "sha256:d5efe6dcd5068d93e03f7c40157431ce43a34bac90530ee0dc46ca1cb8a6fdc6" [label=""];
}

