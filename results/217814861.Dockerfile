[app/sources/217814861.Dockerfile]
digraph {
  "sha256:6aff48ddc4e2e809eb605a422c68f78843ea9f316eedcde2dac9f586638f9881" [label="docker-image://docker.io/library/php:7.0-fpm" shape="ellipse"];
  "sha256:6d2ce23ca5230c9724642517f2ffbd951511ce252a2fbf8d037d0799206fcdf0" [label="local://context" shape="ellipse"];
  "sha256:02e5a05bb4437ee7f14a5321474fee87f8d25388f46fcd510751c389f9945bca" [label="copy{src=/laravel.ini, dest=/usr/local/etc/php/conf.d}" shape="note"];
  "sha256:9dca5a7eea497ef604b2193f42d2d40e45905494f1c9ed0b2594daec4690a428" [label="/bin/sh -c apt-get update && apt-get install -y     software-properties-common" shape="box"];
  "sha256:7d5e3101bbb8beb5afee1f8d0867b8d97bb555108d2db18c148b0a2d89aa4e0c" [label="/bin/sh -c apt-get install -y --force-yes     git     libicu52     libicu-dev     libmcrypt-dev     mcrypt     zlib1g     zlib1g-dev" shape="box"];
  "sha256:fc7fe0282e681f5e32582b4ab6c4aa298b14c0038c5fb25057f13ac334ed6e36" [label="/bin/sh -c docker-php-ext-install     intl     mcrypt     pdo_mysql     zip" shape="box"];
  "sha256:4c379c8c5850198aebb0f4a5ddc0397fededa8dbba9e36f4cb0baee2977893a7" [label="/bin/sh -c curl -s http://getcomposer.org/installer | php     && mv composer.phar /usr/local/bin/     && echo \"alias composer='/usr/local/bin/composer.phar'\" >> ~/.bashrc" shape="box"];
  "sha256:a4922fbe6596379d8302390f03f76ed6b0a4b56eea3316f146d8cb73092b65af" [label="/bin/sh -c usermod -u 1000 www-data" shape="box"];
  "sha256:2d101caf89fe7d1f84c06ae8aa411e7cd296636c36dad0e474e2b1cd2885307c" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:e3f093edb939451984900c0dde2d01d122974014a4a0b65613633f5f2101d5c9" [label="mkdir{path=/var/www/mpt}" shape="note"];
  "sha256:c1605d275a65104b27a29fff9dde8fdf906bc7307a169a4595e7f91d2be3735f" [label="sha256:c1605d275a65104b27a29fff9dde8fdf906bc7307a169a4595e7f91d2be3735f" shape="plaintext"];
  "sha256:6aff48ddc4e2e809eb605a422c68f78843ea9f316eedcde2dac9f586638f9881" -> "sha256:02e5a05bb4437ee7f14a5321474fee87f8d25388f46fcd510751c389f9945bca" [label=""];
  "sha256:6d2ce23ca5230c9724642517f2ffbd951511ce252a2fbf8d037d0799206fcdf0" -> "sha256:02e5a05bb4437ee7f14a5321474fee87f8d25388f46fcd510751c389f9945bca" [label=""];
  "sha256:02e5a05bb4437ee7f14a5321474fee87f8d25388f46fcd510751c389f9945bca" -> "sha256:9dca5a7eea497ef604b2193f42d2d40e45905494f1c9ed0b2594daec4690a428" [label=""];
  "sha256:9dca5a7eea497ef604b2193f42d2d40e45905494f1c9ed0b2594daec4690a428" -> "sha256:7d5e3101bbb8beb5afee1f8d0867b8d97bb555108d2db18c148b0a2d89aa4e0c" [label=""];
  "sha256:7d5e3101bbb8beb5afee1f8d0867b8d97bb555108d2db18c148b0a2d89aa4e0c" -> "sha256:fc7fe0282e681f5e32582b4ab6c4aa298b14c0038c5fb25057f13ac334ed6e36" [label=""];
  "sha256:fc7fe0282e681f5e32582b4ab6c4aa298b14c0038c5fb25057f13ac334ed6e36" -> "sha256:4c379c8c5850198aebb0f4a5ddc0397fededa8dbba9e36f4cb0baee2977893a7" [label=""];
  "sha256:4c379c8c5850198aebb0f4a5ddc0397fededa8dbba9e36f4cb0baee2977893a7" -> "sha256:a4922fbe6596379d8302390f03f76ed6b0a4b56eea3316f146d8cb73092b65af" [label=""];
  "sha256:a4922fbe6596379d8302390f03f76ed6b0a4b56eea3316f146d8cb73092b65af" -> "sha256:2d101caf89fe7d1f84c06ae8aa411e7cd296636c36dad0e474e2b1cd2885307c" [label=""];
  "sha256:2d101caf89fe7d1f84c06ae8aa411e7cd296636c36dad0e474e2b1cd2885307c" -> "sha256:e3f093edb939451984900c0dde2d01d122974014a4a0b65613633f5f2101d5c9" [label=""];
  "sha256:e3f093edb939451984900c0dde2d01d122974014a4a0b65613633f5f2101d5c9" -> "sha256:c1605d275a65104b27a29fff9dde8fdf906bc7307a169a4595e7f91d2be3735f" [label=""];
}

