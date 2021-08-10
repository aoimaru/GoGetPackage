[app/sources/252794428.Dockerfile]
digraph {
  "sha256:805a0279dbe91836f95e62eb30aaf7ea3512ac820d3fa0512e3dbefdead69f05" [label="local://context" shape="ellipse"];
  "sha256:fde7c15f03880348efa62d7f0246151893f9364a37ee5330181b2919e79e5e33" [label="docker-image://docker.io/phusion/passenger-full:0.9.19" shape="ellipse"];
  "sha256:72ab9166e3ba420cbbce1fb09bdf2897f22b9abdd609d8338c21f501428b1173" [label="/bin/sh -c usermod -a -G docker_env app" shape="box"];
  "sha256:a4ec792334cef580b2988d7363185f4cb3ca480668e5240a3aa7ff75ffb75e14" [label="/bin/sh -c apt-get update && apt-get upgrade -y -o Dpkg::Options::=\"--force-confold\" && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:fdca9b1a56e33dcbfdd322efc42cda8a86c357548473a6c93d2d2e2f9c14935e" [label="/bin/sh -c gem install bundler" shape="box"];
  "sha256:470a3ffd2cd06cba3aa9d253c36b9b06f14b4690b9e961322323b0463fa32454" [label="copy{src=/, dest=/home/app/webapp}" shape="note"];
  "sha256:1da7e9141fe4af1ecb143076ab8976694b650c0ee55afc16abe1701f2f8b8f70" [label="mkdir{path=/home/app/webapp}" shape="note"];
  "sha256:caa5abde66e2b50965b32dc0b986d9c3c063584d6c81682535c2dbf2816ad77f" [label="/bin/sh -c mkdir -p /home/app/webapp/vendor/bundle && chown -R app:app /home/app/webapp && chmod -R 755 /home/app/webapp && /sbin/setuser app bundle install --path vendor/bundle" shape="box"];
  "sha256:efecce77d9e6fe8c31bb09f8c049fb5cf9a8d8a31dd74cd49c258a5310fd5e30" [label="/bin/sh -c mkdir /etc/service/lita" shape="box"];
  "sha256:57d3e5476077cc769f661e3895d8f6935315b02a50547a079046d6ee9e60ed50" [label="copy{src=/vendor/docker/lita.sh, dest=/etc/service/lita/run}" shape="note"];
  "sha256:0242f3bee399a2dded6b59a7636b425a2981f71dd8638e9a2dbee90611f09e16" [label="sha256:0242f3bee399a2dded6b59a7636b425a2981f71dd8638e9a2dbee90611f09e16" shape="plaintext"];
  "sha256:fde7c15f03880348efa62d7f0246151893f9364a37ee5330181b2919e79e5e33" -> "sha256:72ab9166e3ba420cbbce1fb09bdf2897f22b9abdd609d8338c21f501428b1173" [label=""];
  "sha256:72ab9166e3ba420cbbce1fb09bdf2897f22b9abdd609d8338c21f501428b1173" -> "sha256:a4ec792334cef580b2988d7363185f4cb3ca480668e5240a3aa7ff75ffb75e14" [label=""];
  "sha256:a4ec792334cef580b2988d7363185f4cb3ca480668e5240a3aa7ff75ffb75e14" -> "sha256:fdca9b1a56e33dcbfdd322efc42cda8a86c357548473a6c93d2d2e2f9c14935e" [label=""];
  "sha256:fdca9b1a56e33dcbfdd322efc42cda8a86c357548473a6c93d2d2e2f9c14935e" -> "sha256:470a3ffd2cd06cba3aa9d253c36b9b06f14b4690b9e961322323b0463fa32454" [label=""];
  "sha256:805a0279dbe91836f95e62eb30aaf7ea3512ac820d3fa0512e3dbefdead69f05" -> "sha256:470a3ffd2cd06cba3aa9d253c36b9b06f14b4690b9e961322323b0463fa32454" [label=""];
  "sha256:470a3ffd2cd06cba3aa9d253c36b9b06f14b4690b9e961322323b0463fa32454" -> "sha256:1da7e9141fe4af1ecb143076ab8976694b650c0ee55afc16abe1701f2f8b8f70" [label=""];
  "sha256:1da7e9141fe4af1ecb143076ab8976694b650c0ee55afc16abe1701f2f8b8f70" -> "sha256:caa5abde66e2b50965b32dc0b986d9c3c063584d6c81682535c2dbf2816ad77f" [label=""];
  "sha256:caa5abde66e2b50965b32dc0b986d9c3c063584d6c81682535c2dbf2816ad77f" -> "sha256:efecce77d9e6fe8c31bb09f8c049fb5cf9a8d8a31dd74cd49c258a5310fd5e30" [label=""];
  "sha256:efecce77d9e6fe8c31bb09f8c049fb5cf9a8d8a31dd74cd49c258a5310fd5e30" -> "sha256:57d3e5476077cc769f661e3895d8f6935315b02a50547a079046d6ee9e60ed50" [label=""];
  "sha256:805a0279dbe91836f95e62eb30aaf7ea3512ac820d3fa0512e3dbefdead69f05" -> "sha256:57d3e5476077cc769f661e3895d8f6935315b02a50547a079046d6ee9e60ed50" [label=""];
  "sha256:57d3e5476077cc769f661e3895d8f6935315b02a50547a079046d6ee9e60ed50" -> "sha256:0242f3bee399a2dded6b59a7636b425a2981f71dd8638e9a2dbee90611f09e16" [label=""];
}

