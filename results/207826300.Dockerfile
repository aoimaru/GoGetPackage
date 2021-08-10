[app/sources/207826300.Dockerfile]
digraph {
  "sha256:be4b8eddb62600d152de60101b7de674cc2c29b370263eb0b3f0dd5065d3d343" [label="docker-image://docker.io/minds/php:latest" shape="ellipse"];
  "sha256:b1a6021cdf60724cc9d5f259d10644009ae093c7fb4eb08ef681277dd5a64340" [label="/bin/sh -c mkdir --parents --mode=0777 /tmp/minds-cache/     && mkdir --parents --mode=0777 /data/" shape="box"];
  "sha256:70fa1580163a532ecb4754c352ba9d43e916854e6438d049e026b41d64bb1ed9" [label="local://context" shape="ellipse"];
  "sha256:ecda8d585525b4f005f5db0ce22d32b2013e9feede2d86a63800124fcb0489b1" [label="copy{src=/, dest=/var/www/Minds/engine}" shape="note"];
  "sha256:0b9ff4bec7a2d2f09c4c33a6e6ab1829bcde1c67e3b27fbcbf9c7a0508c25957" [label="/bin/sh -c apk update && pecl install xdebug && docker-php-ext-enable xdebug && apk add --no-cache py-pip && pip install --upgrade pip && pip install awscli" shape="box"];
  "sha256:e93c9dd5178119a7336f49d8eb772e4764c4d13118d7c269d8884cca92e2a638" [label="copy{src=/containers/php-coverage/php.ini, dest=/usr/local/etc/php/}" shape="note"];
  "sha256:8349d143bdaa7a43b467d6d51e2bbf997f8a1d173509051e11e8b6901aea6c85" [label="copy{src=/containers/php-coverage/opcache.ini, dest=/usr/local/etc/php/conf.d/opcache-recommended.ini}" shape="note"];
  "sha256:ecd8dd76dea562f0df69fc7884e4dff875c5aca30d59cac085ba65fc0cd84f5e" [label="copy{src=/containers/php-coverage/apcu.ini, dest=/usr/local/etc/php/conf.d/docker-php-ext-apcu.ini}" shape="note"];
  "sha256:22cb0929b7f173ad4a590314c696342c0dfa52b6ee3ff0afe37fe041180e8c12" [label="copy{src=/containers/php-coverage/php-fpm.conf, dest=/usr/local/etc/php-fpm.d/www.conf}" shape="note"];
  "sha256:be52d78ae9da88f61557609aa1f09553faa6bbf69801677aac3041c7b11faf79" [label="sha256:be52d78ae9da88f61557609aa1f09553faa6bbf69801677aac3041c7b11faf79" shape="plaintext"];
  "sha256:be4b8eddb62600d152de60101b7de674cc2c29b370263eb0b3f0dd5065d3d343" -> "sha256:b1a6021cdf60724cc9d5f259d10644009ae093c7fb4eb08ef681277dd5a64340" [label=""];
  "sha256:b1a6021cdf60724cc9d5f259d10644009ae093c7fb4eb08ef681277dd5a64340" -> "sha256:ecda8d585525b4f005f5db0ce22d32b2013e9feede2d86a63800124fcb0489b1" [label=""];
  "sha256:70fa1580163a532ecb4754c352ba9d43e916854e6438d049e026b41d64bb1ed9" -> "sha256:ecda8d585525b4f005f5db0ce22d32b2013e9feede2d86a63800124fcb0489b1" [label=""];
  "sha256:ecda8d585525b4f005f5db0ce22d32b2013e9feede2d86a63800124fcb0489b1" -> "sha256:0b9ff4bec7a2d2f09c4c33a6e6ab1829bcde1c67e3b27fbcbf9c7a0508c25957" [label=""];
  "sha256:0b9ff4bec7a2d2f09c4c33a6e6ab1829bcde1c67e3b27fbcbf9c7a0508c25957" -> "sha256:e93c9dd5178119a7336f49d8eb772e4764c4d13118d7c269d8884cca92e2a638" [label=""];
  "sha256:70fa1580163a532ecb4754c352ba9d43e916854e6438d049e026b41d64bb1ed9" -> "sha256:e93c9dd5178119a7336f49d8eb772e4764c4d13118d7c269d8884cca92e2a638" [label=""];
  "sha256:e93c9dd5178119a7336f49d8eb772e4764c4d13118d7c269d8884cca92e2a638" -> "sha256:8349d143bdaa7a43b467d6d51e2bbf997f8a1d173509051e11e8b6901aea6c85" [label=""];
  "sha256:70fa1580163a532ecb4754c352ba9d43e916854e6438d049e026b41d64bb1ed9" -> "sha256:8349d143bdaa7a43b467d6d51e2bbf997f8a1d173509051e11e8b6901aea6c85" [label=""];
  "sha256:8349d143bdaa7a43b467d6d51e2bbf997f8a1d173509051e11e8b6901aea6c85" -> "sha256:ecd8dd76dea562f0df69fc7884e4dff875c5aca30d59cac085ba65fc0cd84f5e" [label=""];
  "sha256:70fa1580163a532ecb4754c352ba9d43e916854e6438d049e026b41d64bb1ed9" -> "sha256:ecd8dd76dea562f0df69fc7884e4dff875c5aca30d59cac085ba65fc0cd84f5e" [label=""];
  "sha256:ecd8dd76dea562f0df69fc7884e4dff875c5aca30d59cac085ba65fc0cd84f5e" -> "sha256:22cb0929b7f173ad4a590314c696342c0dfa52b6ee3ff0afe37fe041180e8c12" [label=""];
  "sha256:70fa1580163a532ecb4754c352ba9d43e916854e6438d049e026b41d64bb1ed9" -> "sha256:22cb0929b7f173ad4a590314c696342c0dfa52b6ee3ff0afe37fe041180e8c12" [label=""];
  "sha256:22cb0929b7f173ad4a590314c696342c0dfa52b6ee3ff0afe37fe041180e8c12" -> "sha256:be52d78ae9da88f61557609aa1f09553faa6bbf69801677aac3041c7b11faf79" [label=""];
}

