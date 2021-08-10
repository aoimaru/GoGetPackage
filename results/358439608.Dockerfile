[app/sources/358439608.Dockerfile]
digraph {
  "sha256:51ef2da6d1bbaebf11d238ffc40060a85cb8cee678afc8a34d1a059a01fdbc2d" [label="docker-image://docker.io/library/haproxy:1.8.14-alpine" shape="ellipse"];
  "sha256:f4ab759ca821abe62331ead261498ac6376968f0c79d38f320c3914df3d9a8be" [label="/bin/sh -c apk update && apk --update add bash tzdata ruby ruby-irb ruby-bigdecimal      ruby-io-console ruby-json ruby-rake ca-certificates libssl1.0 openssl libstdc++     ruby-webrick ruby-etc" shape="box"];
  "sha256:44ea9c27c58a392c50704a2b0692d50bae8de249c7f3e9bea8358326393d914a" [label="local://context" shape="ellipse"];
  "sha256:0156e34aee7d5b5eb75a19a26e7ad36c233dc19cfdf002e0e2b426811de119fd" [label="copy{src=/Gemfile, dest=/app/},copy{src=/Gemfile.lock, dest=/app/}" shape="note"];
  "sha256:112515048007dce75bc4e588a95a11c98eefd0a5058ca221cdbdc7ba3d19074b" [label="/bin/sh -c apk --update add --virtual build-dependencies ruby-dev build-base openssl-dev &&     gem install bundler --no-ri --no-rdoc &&     cd /app ; bundle install --without development test &&     apk del build-dependencies" shape="box"];
  "sha256:eb5d31289eda9f082e605b76dc7b47d1e5b9b6267f68a9d304352c5a3a1be340" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:eb026551c3a2d782e4a5d29679484806c710dd633ffb5dc4df381914559c63a2" [label="copy{src=/errors/*, dest=/etc/haproxy/errors/}" shape="note"];
  "sha256:3dcb3731928ed97f66dd987eae68317ce3e62f07ad4bea1ddc6a8a9e44274779" [label="mkdir{path=/app}" shape="note"];
  "sha256:920cefddd3b7a64f2229112c2c4d20da8932425903b656deed75d8a88a47bfcf" [label="sha256:920cefddd3b7a64f2229112c2c4d20da8932425903b656deed75d8a88a47bfcf" shape="plaintext"];
  "sha256:51ef2da6d1bbaebf11d238ffc40060a85cb8cee678afc8a34d1a059a01fdbc2d" -> "sha256:f4ab759ca821abe62331ead261498ac6376968f0c79d38f320c3914df3d9a8be" [label=""];
  "sha256:f4ab759ca821abe62331ead261498ac6376968f0c79d38f320c3914df3d9a8be" -> "sha256:0156e34aee7d5b5eb75a19a26e7ad36c233dc19cfdf002e0e2b426811de119fd" [label=""];
  "sha256:44ea9c27c58a392c50704a2b0692d50bae8de249c7f3e9bea8358326393d914a" -> "sha256:0156e34aee7d5b5eb75a19a26e7ad36c233dc19cfdf002e0e2b426811de119fd" [label=""];
  "sha256:0156e34aee7d5b5eb75a19a26e7ad36c233dc19cfdf002e0e2b426811de119fd" -> "sha256:112515048007dce75bc4e588a95a11c98eefd0a5058ca221cdbdc7ba3d19074b" [label=""];
  "sha256:112515048007dce75bc4e588a95a11c98eefd0a5058ca221cdbdc7ba3d19074b" -> "sha256:eb5d31289eda9f082e605b76dc7b47d1e5b9b6267f68a9d304352c5a3a1be340" [label=""];
  "sha256:44ea9c27c58a392c50704a2b0692d50bae8de249c7f3e9bea8358326393d914a" -> "sha256:eb5d31289eda9f082e605b76dc7b47d1e5b9b6267f68a9d304352c5a3a1be340" [label=""];
  "sha256:eb5d31289eda9f082e605b76dc7b47d1e5b9b6267f68a9d304352c5a3a1be340" -> "sha256:eb026551c3a2d782e4a5d29679484806c710dd633ffb5dc4df381914559c63a2" [label=""];
  "sha256:44ea9c27c58a392c50704a2b0692d50bae8de249c7f3e9bea8358326393d914a" -> "sha256:eb026551c3a2d782e4a5d29679484806c710dd633ffb5dc4df381914559c63a2" [label=""];
  "sha256:eb026551c3a2d782e4a5d29679484806c710dd633ffb5dc4df381914559c63a2" -> "sha256:3dcb3731928ed97f66dd987eae68317ce3e62f07ad4bea1ddc6a8a9e44274779" [label=""];
  "sha256:3dcb3731928ed97f66dd987eae68317ce3e62f07ad4bea1ddc6a8a9e44274779" -> "sha256:920cefddd3b7a64f2229112c2c4d20da8932425903b656deed75d8a88a47bfcf" [label=""];
}

