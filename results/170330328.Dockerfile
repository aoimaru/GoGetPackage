[app/sources/170330328.Dockerfile]
digraph {
  "sha256:98cbd8ddbbd0cf64406602e6ceadf067f4c0da41d6a7e36529b074dd85e37201" [label="docker-image://docker.io/composer/composer:base" shape="ellipse"];
  "sha256:a3c135b0c0b92b405028d94f57845b85b1a60ccfa89b5b02b9e44926f6c8a565" [label="/bin/sh -c php /tmp/composer-setup.php --no-ansi --install-dir=/usr/local/bin --filename=composer --version=${COMPOSER_VERSION} && rm -rf /tmp/composer-setup.php" shape="box"];
  "sha256:583a35670b01e80364487f2f36f30ca96be1ff1cb39965d585a96e705e33dc5e" [label="/bin/sh -c composer --version" shape="box"];
  "sha256:537d6a58a520abae64fa0242008e8c40923ca1bb5c70dbf045e240f4f2530dfb" [label="sha256:537d6a58a520abae64fa0242008e8c40923ca1bb5c70dbf045e240f4f2530dfb" shape="plaintext"];
  "sha256:98cbd8ddbbd0cf64406602e6ceadf067f4c0da41d6a7e36529b074dd85e37201" -> "sha256:a3c135b0c0b92b405028d94f57845b85b1a60ccfa89b5b02b9e44926f6c8a565" [label=""];
  "sha256:a3c135b0c0b92b405028d94f57845b85b1a60ccfa89b5b02b9e44926f6c8a565" -> "sha256:583a35670b01e80364487f2f36f30ca96be1ff1cb39965d585a96e705e33dc5e" [label=""];
  "sha256:583a35670b01e80364487f2f36f30ca96be1ff1cb39965d585a96e705e33dc5e" -> "sha256:537d6a58a520abae64fa0242008e8c40923ca1bb5c70dbf045e240f4f2530dfb" [label=""];
}

