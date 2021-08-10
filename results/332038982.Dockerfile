[app/sources/332038982.Dockerfile]
digraph {
  "sha256:c0526abfa5f0c69e3df587a15c3dd061e5b333978aac0f597370fbf47123f085" [label="docker-image://docker.io/library/composer:1" shape="ellipse"];
  "sha256:a43d6f58fee2bebb831d2aaade7e64caf0795e3c5456012b8aeffc6eabed946a" [label="local://context" shape="ellipse"];
  "sha256:407113aade2615faaceac592dd8219a3ab2feccc052fac33266b72e8adc04575" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:bbac8aeb9a724dbb5f934b1ac1287856fb7375456bdc65bca14d16e8a2888512" [label="/bin/sh -c cd /app && composer install" shape="box"];
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" [label="docker-image://docker.io/library/php:7.1-apache" shape="ellipse"];
  "sha256:16eeb55db02b34ed7f054e794bfda7a11e0e51ca87f59ce6607b8f8b6523cb37" [label="copy{src=/app, dest=/var/www/html}" shape="note"];
  "sha256:abcae1596267bbf64d1fa44361164d590b44b9b6ac58fd87976a91f36f4811f4" [label="/bin/sh -c usermod -u 1000 www-data;     a2enmod rewrite;     chown -R www-data:www-data /var/www/html" shape="box"];
  "sha256:bd8d3a2ccaebd646d12513d89690823d4d267ef7ca38c7e653d86b42cdf0365a" [label="sha256:bd8d3a2ccaebd646d12513d89690823d4d267ef7ca38c7e653d86b42cdf0365a" shape="plaintext"];
  "sha256:c0526abfa5f0c69e3df587a15c3dd061e5b333978aac0f597370fbf47123f085" -> "sha256:407113aade2615faaceac592dd8219a3ab2feccc052fac33266b72e8adc04575" [label=""];
  "sha256:a43d6f58fee2bebb831d2aaade7e64caf0795e3c5456012b8aeffc6eabed946a" -> "sha256:407113aade2615faaceac592dd8219a3ab2feccc052fac33266b72e8adc04575" [label=""];
  "sha256:407113aade2615faaceac592dd8219a3ab2feccc052fac33266b72e8adc04575" -> "sha256:bbac8aeb9a724dbb5f934b1ac1287856fb7375456bdc65bca14d16e8a2888512" [label=""];
  "sha256:32712d4f4311e44dcb92c07790d732cac3e536c80153ba09e344f90e847a8f15" -> "sha256:16eeb55db02b34ed7f054e794bfda7a11e0e51ca87f59ce6607b8f8b6523cb37" [label=""];
  "sha256:bbac8aeb9a724dbb5f934b1ac1287856fb7375456bdc65bca14d16e8a2888512" -> "sha256:16eeb55db02b34ed7f054e794bfda7a11e0e51ca87f59ce6607b8f8b6523cb37" [label=""];
  "sha256:16eeb55db02b34ed7f054e794bfda7a11e0e51ca87f59ce6607b8f8b6523cb37" -> "sha256:abcae1596267bbf64d1fa44361164d590b44b9b6ac58fd87976a91f36f4811f4" [label=""];
  "sha256:abcae1596267bbf64d1fa44361164d590b44b9b6ac58fd87976a91f36f4811f4" -> "sha256:bd8d3a2ccaebd646d12513d89690823d4d267ef7ca38c7e653d86b42cdf0365a" [label=""];
}

