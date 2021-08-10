[app/sources/460395490.Dockerfile]
digraph {
  "sha256:4bf229322b947d5d0863261d76231bd90752d4c586d0590da457278647c78fc6" [label="docker-image://docker.io/library/php:7.0-cli" shape="ellipse"];
  "sha256:d27e3b3bf28a9687ace9f1d413121e33a251a29fc5baa37c47bbc37996722a61" [label="/bin/sh -c apt-get update &&     apt-get -y install             git             zlib1g-dev             libssl-dev         --no-install-recommends &&         apt-get clean &&         rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:21f0aa55f6fbc4f409104e6bee66d471e258002f76dbe014197c90bbfbf1d546" [label="/bin/sh -c docker-php-ext-install     bcmath     zip" shape="box"];
  "sha256:99f518c1972063cc276f69273f8817ea1f659e0aadce271da8644d5f8c05a8f5" [label="/bin/sh -c pecl install mongodb xdebug &&     docker-php-ext-enable mongodb &&     docker-php-ext-enable xdebug" shape="box"];
  "sha256:064d8f9b4d685935570e4bf6c0eabd31add5c9e26da8bf4a22ab27e25f564414" [label="/bin/sh -c echo \"date.timezone = UTC\" >> /usr/local/etc/php/php.ini" shape="box"];
  "sha256:727edeae3f1be765705d6e7fe12cc905cd71955a7d5ebc8265df4a558cb90f6a" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php --         --filename=composer         --install-dir=/usr/local/bin" shape="box"];
  "sha256:ba229f385fd1dcb315bcb15aac2e673fd07231994a82fedd75b0ffc406487750" [label="/bin/sh -c composer global require --optimize-autoloader         \"hirak/prestissimo\"" shape="box"];
  "sha256:ee922d746e8f3be8d3075dcea491b9b30b9472ac26a98ae9f58df9a7e35224e5" [label="mkdir{path=/repo}" shape="note"];
  "sha256:bf258c4cd8023e630535949aa46b6a662e9dec2fd2195111bcd1923c217567bf" [label="local://context" shape="ellipse"];
  "sha256:f8be3553172241ddf1fbe5fe8291667c9d97d205fb137059d9c3704577309a27" [label="copy{src=/composer.json, dest=/repo/composer.json}" shape="note"];
  "sha256:b8e751fede53645364464aa8462b484acfc54a56b07570233138786fbacee9b5" [label="/bin/sh -c composer install --prefer-dist --optimize-autoloader" shape="box"];
  "sha256:5914a272a6c34a31539f9694e8d11144327b334afb570552d6d235ca2dd4386f" [label="copy{src=/, dest=/repo}" shape="note"];
  "sha256:f52a4e86f80745ab1b36e1591729b1008d8c5d95ae7b68842fe1a566b0387b72" [label="/bin/sh -c mkdir /project" shape="box"];
  "sha256:aaa4398f3aebfab9159167650a2be8d64f425b490c6dfddb32bd26c5959529e4" [label="mkdir{path=/project}" shape="note"];
  "sha256:743b19b544f18bc05021c319e18eabb57e54ea0837aa85e1b5e887b5f13c6ccf" [label="sha256:743b19b544f18bc05021c319e18eabb57e54ea0837aa85e1b5e887b5f13c6ccf" shape="plaintext"];
  "sha256:4bf229322b947d5d0863261d76231bd90752d4c586d0590da457278647c78fc6" -> "sha256:d27e3b3bf28a9687ace9f1d413121e33a251a29fc5baa37c47bbc37996722a61" [label=""];
  "sha256:d27e3b3bf28a9687ace9f1d413121e33a251a29fc5baa37c47bbc37996722a61" -> "sha256:21f0aa55f6fbc4f409104e6bee66d471e258002f76dbe014197c90bbfbf1d546" [label=""];
  "sha256:21f0aa55f6fbc4f409104e6bee66d471e258002f76dbe014197c90bbfbf1d546" -> "sha256:99f518c1972063cc276f69273f8817ea1f659e0aadce271da8644d5f8c05a8f5" [label=""];
  "sha256:99f518c1972063cc276f69273f8817ea1f659e0aadce271da8644d5f8c05a8f5" -> "sha256:064d8f9b4d685935570e4bf6c0eabd31add5c9e26da8bf4a22ab27e25f564414" [label=""];
  "sha256:064d8f9b4d685935570e4bf6c0eabd31add5c9e26da8bf4a22ab27e25f564414" -> "sha256:727edeae3f1be765705d6e7fe12cc905cd71955a7d5ebc8265df4a558cb90f6a" [label=""];
  "sha256:727edeae3f1be765705d6e7fe12cc905cd71955a7d5ebc8265df4a558cb90f6a" -> "sha256:ba229f385fd1dcb315bcb15aac2e673fd07231994a82fedd75b0ffc406487750" [label=""];
  "sha256:ba229f385fd1dcb315bcb15aac2e673fd07231994a82fedd75b0ffc406487750" -> "sha256:ee922d746e8f3be8d3075dcea491b9b30b9472ac26a98ae9f58df9a7e35224e5" [label=""];
  "sha256:ee922d746e8f3be8d3075dcea491b9b30b9472ac26a98ae9f58df9a7e35224e5" -> "sha256:f8be3553172241ddf1fbe5fe8291667c9d97d205fb137059d9c3704577309a27" [label=""];
  "sha256:bf258c4cd8023e630535949aa46b6a662e9dec2fd2195111bcd1923c217567bf" -> "sha256:f8be3553172241ddf1fbe5fe8291667c9d97d205fb137059d9c3704577309a27" [label=""];
  "sha256:f8be3553172241ddf1fbe5fe8291667c9d97d205fb137059d9c3704577309a27" -> "sha256:b8e751fede53645364464aa8462b484acfc54a56b07570233138786fbacee9b5" [label=""];
  "sha256:b8e751fede53645364464aa8462b484acfc54a56b07570233138786fbacee9b5" -> "sha256:5914a272a6c34a31539f9694e8d11144327b334afb570552d6d235ca2dd4386f" [label=""];
  "sha256:bf258c4cd8023e630535949aa46b6a662e9dec2fd2195111bcd1923c217567bf" -> "sha256:5914a272a6c34a31539f9694e8d11144327b334afb570552d6d235ca2dd4386f" [label=""];
  "sha256:5914a272a6c34a31539f9694e8d11144327b334afb570552d6d235ca2dd4386f" -> "sha256:f52a4e86f80745ab1b36e1591729b1008d8c5d95ae7b68842fe1a566b0387b72" [label=""];
  "sha256:f52a4e86f80745ab1b36e1591729b1008d8c5d95ae7b68842fe1a566b0387b72" -> "sha256:aaa4398f3aebfab9159167650a2be8d64f425b490c6dfddb32bd26c5959529e4" [label=""];
  "sha256:aaa4398f3aebfab9159167650a2be8d64f425b490c6dfddb32bd26c5959529e4" -> "sha256:743b19b544f18bc05021c319e18eabb57e54ea0837aa85e1b5e887b5f13c6ccf" [label=""];
}

