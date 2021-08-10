[app/sources/458044291.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:e541b06ce26dff9d3506243f795a60bdf0ba83776317f20a75a8aa5491627fc3" [label="/bin/sh -c apt-get update &&     apt-get install -y software-properties-common &&     apt-add-repository ppa:brightbox/ruby-ng &&     apt-get update &&     apt-get install -y ruby2.5 ruby2.5-dev ruby-switch     zlib1g-dev liblzma-dev libxml2-dev libpq-dev git locales     libxslt-dev supervisor build-essential nodejs supervisor &&     apt-get -y install graphicsmagick poppler-utils poppler-data     ghostscript tesseract-ocr pdftk libreoffice libmagic-dev &&     add-apt-repository -y ppa:nginx/stable &&     apt-get update &&     apt-get install -qq -y nginx &&     echo \"\\ndaemon off;\" >> /etc/nginx/nginx.conf &&     chown -R www-data:www-data /var/lib/nginx &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:b48d26c15928be383b9a0fbcdc17b845218cbc08b7072ee275ca4552e3e78593" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:e23788bba04a41f7e5573efce50a7ea44f109a78e62b2584d09fc4058e2ec07e" [label="/bin/sh -c ruby-switch --set ruby2.5" shape="box"];
  "sha256:8510e1cfc3e62bb427525cc45b97c66852961bdb61c8379529e6b32d47112a1c" [label="/bin/sh -c echo 'gem: --no-rdoc --no-ri >> \"$HOME/.gemrc\"'" shape="box"];
  "sha256:1ef950788979682d78316b2b0cc9c4510c65e39057f99a67709388ca5cd0b337" [label="/bin/sh -c gem install bundler &&     mkdir /app" shape="box"];
  "sha256:8361e0f0fce3233909afb0ff45809ed5fea1f5fba5807bf0b0a6ad7a49d1c5bf" [label="mkdir{path=/app}" shape="note"];
  "sha256:9b60de8383da9641034183f82fbcf0f6e635fb8f36ff312b55c3c8161bb9d73e" [label="local://context" shape="ellipse"];
  "sha256:2c4b945178e1140fa0bdf05e02ac4e43dad6a6d001ed69959ebf49739c28c622" [label="copy{src=/config/docker/nginx-sites.conf, dest=/etc/nginx/sites-enabled/default}" shape="note"];
  "sha256:45aa703f534bc1faf99cf65283fdab482073f815753082a6aedc270f6e9f2e8f" [label="copy{src=/Gemfile, dest=/app}" shape="note"];
  "sha256:22fa6262bffc070dca6560f100b0467b02c158b0c5eca16f4a0a177160830af6" [label="copy{src=/Gemfile.lock, dest=/app}" shape="note"];
  "sha256:97b7f0e1886218c9ea5651397770f077247979de1a8cf002b5fdb79139d7fdc1" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:1bfa509e0eb21abf5a415ec0619d58f6b971e5da6eaf905b4336b61b91d3fbed" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:e015fc1cf706e01be308c547cedc7fe0212a3d5aa45010eb99a8293e4f115e7a" [label="sha256:e015fc1cf706e01be308c547cedc7fe0212a3d5aa45010eb99a8293e4f115e7a" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:e541b06ce26dff9d3506243f795a60bdf0ba83776317f20a75a8aa5491627fc3" [label=""];
  "sha256:e541b06ce26dff9d3506243f795a60bdf0ba83776317f20a75a8aa5491627fc3" -> "sha256:b48d26c15928be383b9a0fbcdc17b845218cbc08b7072ee275ca4552e3e78593" [label=""];
  "sha256:b48d26c15928be383b9a0fbcdc17b845218cbc08b7072ee275ca4552e3e78593" -> "sha256:e23788bba04a41f7e5573efce50a7ea44f109a78e62b2584d09fc4058e2ec07e" [label=""];
  "sha256:e23788bba04a41f7e5573efce50a7ea44f109a78e62b2584d09fc4058e2ec07e" -> "sha256:8510e1cfc3e62bb427525cc45b97c66852961bdb61c8379529e6b32d47112a1c" [label=""];
  "sha256:8510e1cfc3e62bb427525cc45b97c66852961bdb61c8379529e6b32d47112a1c" -> "sha256:1ef950788979682d78316b2b0cc9c4510c65e39057f99a67709388ca5cd0b337" [label=""];
  "sha256:1ef950788979682d78316b2b0cc9c4510c65e39057f99a67709388ca5cd0b337" -> "sha256:8361e0f0fce3233909afb0ff45809ed5fea1f5fba5807bf0b0a6ad7a49d1c5bf" [label=""];
  "sha256:8361e0f0fce3233909afb0ff45809ed5fea1f5fba5807bf0b0a6ad7a49d1c5bf" -> "sha256:2c4b945178e1140fa0bdf05e02ac4e43dad6a6d001ed69959ebf49739c28c622" [label=""];
  "sha256:9b60de8383da9641034183f82fbcf0f6e635fb8f36ff312b55c3c8161bb9d73e" -> "sha256:2c4b945178e1140fa0bdf05e02ac4e43dad6a6d001ed69959ebf49739c28c622" [label=""];
  "sha256:2c4b945178e1140fa0bdf05e02ac4e43dad6a6d001ed69959ebf49739c28c622" -> "sha256:45aa703f534bc1faf99cf65283fdab482073f815753082a6aedc270f6e9f2e8f" [label=""];
  "sha256:9b60de8383da9641034183f82fbcf0f6e635fb8f36ff312b55c3c8161bb9d73e" -> "sha256:45aa703f534bc1faf99cf65283fdab482073f815753082a6aedc270f6e9f2e8f" [label=""];
  "sha256:45aa703f534bc1faf99cf65283fdab482073f815753082a6aedc270f6e9f2e8f" -> "sha256:22fa6262bffc070dca6560f100b0467b02c158b0c5eca16f4a0a177160830af6" [label=""];
  "sha256:9b60de8383da9641034183f82fbcf0f6e635fb8f36ff312b55c3c8161bb9d73e" -> "sha256:22fa6262bffc070dca6560f100b0467b02c158b0c5eca16f4a0a177160830af6" [label=""];
  "sha256:22fa6262bffc070dca6560f100b0467b02c158b0c5eca16f4a0a177160830af6" -> "sha256:97b7f0e1886218c9ea5651397770f077247979de1a8cf002b5fdb79139d7fdc1" [label=""];
  "sha256:97b7f0e1886218c9ea5651397770f077247979de1a8cf002b5fdb79139d7fdc1" -> "sha256:1bfa509e0eb21abf5a415ec0619d58f6b971e5da6eaf905b4336b61b91d3fbed" [label=""];
  "sha256:9b60de8383da9641034183f82fbcf0f6e635fb8f36ff312b55c3c8161bb9d73e" -> "sha256:1bfa509e0eb21abf5a415ec0619d58f6b971e5da6eaf905b4336b61b91d3fbed" [label=""];
  "sha256:1bfa509e0eb21abf5a415ec0619d58f6b971e5da6eaf905b4336b61b91d3fbed" -> "sha256:e015fc1cf706e01be308c547cedc7fe0212a3d5aa45010eb99a8293e4f115e7a" [label=""];
}

