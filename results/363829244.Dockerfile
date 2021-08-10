[app/sources/363829244.Dockerfile]
digraph {
  "sha256:e1a7d768b55e65c7e4caf391197f734c5b7292da4e6da318adc4e0aa25e8d998" [label="docker-image://docker.io/library/php:5.6" shape="ellipse"];
  "sha256:542c5e7e0fbc700b291bda82925c48c71c5a97e5ba195fc34262160de8845873" [label="/bin/sh -c apt-get update && apt-get install -y git zlib1g-dev libicu-dev g++" shape="box"];
  "sha256:b66370a8f3502f063a02cc4a425cac2a7e270c25b52b149ac089c1395b4c7822" [label="/bin/sh -c docker-php-ext-install intl" shape="box"];
  "sha256:adebf7023528420a8f433b3e832910dcdaee7533ee3872c4588d237cb67ea516" [label="/bin/sh -c docker-php-ext-install zip" shape="box"];
  "sha256:e08d890fb5de3530dccebf283f6e8717dd31df7bbabfd7963132311d4f01f8a2" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin/ --filename=composer" shape="box"];
  "sha256:9fdfed41ee41527bff0dbd182f8077fa1fed9fedb0f17450b2a2b6b5652242f3" [label="sha256:9fdfed41ee41527bff0dbd182f8077fa1fed9fedb0f17450b2a2b6b5652242f3" shape="plaintext"];
  "sha256:e1a7d768b55e65c7e4caf391197f734c5b7292da4e6da318adc4e0aa25e8d998" -> "sha256:542c5e7e0fbc700b291bda82925c48c71c5a97e5ba195fc34262160de8845873" [label=""];
  "sha256:542c5e7e0fbc700b291bda82925c48c71c5a97e5ba195fc34262160de8845873" -> "sha256:b66370a8f3502f063a02cc4a425cac2a7e270c25b52b149ac089c1395b4c7822" [label=""];
  "sha256:b66370a8f3502f063a02cc4a425cac2a7e270c25b52b149ac089c1395b4c7822" -> "sha256:adebf7023528420a8f433b3e832910dcdaee7533ee3872c4588d237cb67ea516" [label=""];
  "sha256:adebf7023528420a8f433b3e832910dcdaee7533ee3872c4588d237cb67ea516" -> "sha256:e08d890fb5de3530dccebf283f6e8717dd31df7bbabfd7963132311d4f01f8a2" [label=""];
  "sha256:e08d890fb5de3530dccebf283f6e8717dd31df7bbabfd7963132311d4f01f8a2" -> "sha256:9fdfed41ee41527bff0dbd182f8077fa1fed9fedb0f17450b2a2b6b5652242f3" [label=""];
}

