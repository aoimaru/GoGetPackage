[app/sources/198345618.Dockerfile]
digraph {
  "sha256:0541bc938846f2b69ae1cae42b5de43de55645a2405ced59c4710dd668f315ad" [label="docker-image://docker.io/library/php:cli" shape="ellipse"];
  "sha256:87b4a2424c582937e1f59f5ba8d790452de38a0bb7dcb92745f07a7c23ea1824" [label="local://context" shape="ellipse"];
  "sha256:25d9deb9c7b1ede7c005772bca45c1679ecbe629362415f93d0617ce7c71f4cc" [label="copy{src=/, dest=/var/www}" shape="note"];
  "sha256:bd0a784e4760ba10c138681ee775f1cf7b38e088a18021511b574663d4061f67" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:83ab2ea2466cccdf5558266699403a19c4ccf40299401c3b1ce9a4a5a0eb676e" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:53d05334ccd8ce97736c14f52109ec90729f6e74291f80bb33f494fe95765fb6" [label="/bin/sh -c apt-get install -y zip unzip zlib1g-dev" shape="box"];
  "sha256:d04bd5748977f3f6ae9ee7eef0d15bf6debad7134e089764611d153ccfdcfbba" [label="/bin/sh -c docker-php-ext-install zip" shape="box"];
  "sha256:99f2875bd2540b1f5b9de5e1e054cd4015fe8dcef91be97f4cd5608e76e8f57d" [label="/bin/sh -c docker-php-ext-install pcntl" shape="box"];
  "sha256:7f5273dbd52e929b09729c9dbc739aad48fb796291fe7d34abf508aed570138d" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php" shape="box"];
  "sha256:ee161719099d940a96341892dbf10cb43d03432430d147afc78f0c701441e6e5" [label="/bin/sh -c mv composer.phar /usr/local/bin/composer" shape="box"];
  "sha256:e3913a17ad5a3de134ef6049b48f77c168444663b0d4fea7e5fe8b621e4d6a01" [label="/bin/sh -c composer install" shape="box"];
  "sha256:577d3c7edffbb540f9f02952f0afbc28148dd5bbf49c337419b8384ab3776d78" [label="sha256:577d3c7edffbb540f9f02952f0afbc28148dd5bbf49c337419b8384ab3776d78" shape="plaintext"];
  "sha256:0541bc938846f2b69ae1cae42b5de43de55645a2405ced59c4710dd668f315ad" -> "sha256:25d9deb9c7b1ede7c005772bca45c1679ecbe629362415f93d0617ce7c71f4cc" [label=""];
  "sha256:87b4a2424c582937e1f59f5ba8d790452de38a0bb7dcb92745f07a7c23ea1824" -> "sha256:25d9deb9c7b1ede7c005772bca45c1679ecbe629362415f93d0617ce7c71f4cc" [label=""];
  "sha256:25d9deb9c7b1ede7c005772bca45c1679ecbe629362415f93d0617ce7c71f4cc" -> "sha256:bd0a784e4760ba10c138681ee775f1cf7b38e088a18021511b574663d4061f67" [label=""];
  "sha256:bd0a784e4760ba10c138681ee775f1cf7b38e088a18021511b574663d4061f67" -> "sha256:83ab2ea2466cccdf5558266699403a19c4ccf40299401c3b1ce9a4a5a0eb676e" [label=""];
  "sha256:83ab2ea2466cccdf5558266699403a19c4ccf40299401c3b1ce9a4a5a0eb676e" -> "sha256:53d05334ccd8ce97736c14f52109ec90729f6e74291f80bb33f494fe95765fb6" [label=""];
  "sha256:53d05334ccd8ce97736c14f52109ec90729f6e74291f80bb33f494fe95765fb6" -> "sha256:d04bd5748977f3f6ae9ee7eef0d15bf6debad7134e089764611d153ccfdcfbba" [label=""];
  "sha256:d04bd5748977f3f6ae9ee7eef0d15bf6debad7134e089764611d153ccfdcfbba" -> "sha256:99f2875bd2540b1f5b9de5e1e054cd4015fe8dcef91be97f4cd5608e76e8f57d" [label=""];
  "sha256:99f2875bd2540b1f5b9de5e1e054cd4015fe8dcef91be97f4cd5608e76e8f57d" -> "sha256:7f5273dbd52e929b09729c9dbc739aad48fb796291fe7d34abf508aed570138d" [label=""];
  "sha256:7f5273dbd52e929b09729c9dbc739aad48fb796291fe7d34abf508aed570138d" -> "sha256:ee161719099d940a96341892dbf10cb43d03432430d147afc78f0c701441e6e5" [label=""];
  "sha256:ee161719099d940a96341892dbf10cb43d03432430d147afc78f0c701441e6e5" -> "sha256:e3913a17ad5a3de134ef6049b48f77c168444663b0d4fea7e5fe8b621e4d6a01" [label=""];
  "sha256:e3913a17ad5a3de134ef6049b48f77c168444663b0d4fea7e5fe8b621e4d6a01" -> "sha256:577d3c7edffbb540f9f02952f0afbc28148dd5bbf49c337419b8384ab3776d78" [label=""];
}

