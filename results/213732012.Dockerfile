[app/sources/213732012.Dockerfile]
digraph {
  "sha256:8ade3d882fac620cf0b783234897a3e97115c5542cc9a7d39c70a53c7f7f3e7b" [label="local://context" shape="ellipse"];
  "sha256:c30647a036b4912a62e085241288011ca97c7a5378b6fc82ed459876e595bbd1" [label="docker-image://docker.io/library/php:7-apache" shape="ellipse"];
  "sha256:e577998122b9dd94aa80d65e929fe7a87bda5e203591ba353ca880b0aba0a581" [label="/bin/sh -c a2enmod rewrite &&     apt-get update &&     apt-get install -y --no-install-recommends git zip unzip libyaml-dev &&     curl --silent --show-error https://getcomposer.org/installer | php &&     mv composer.phar /usr/bin &&     pecl install yaml-2.0.4 &&     echo \"extension=yaml.so\" > /usr/local/etc/php/conf.d/ext-yaml.ini" shape="box"];
  "sha256:85d2d7a707841d5c779edd46338f64d9531efea0c2a356c65d65040b390290b2" [label="copy{src=/php.ini, dest=/usr/local/etc/php/}" shape="note"];
  "sha256:0496cbd596d4d47847a304c008149a071ef832415c9291786ab82b0300850fba" [label="copy{src=/composer.json, dest=/}" shape="note"];
  "sha256:d172b3e01d654d667525ee7033e422e74459f9d28a89895c82ee83d29d443b27" [label="/bin/sh -c composer.phar update --prefer-stable --no-dev" shape="box"];
  "sha256:18a56597cf130136190b69d881efd0e56de55fe963b5ad28121f6f76bb3f48d1" [label="/bin/sh -c cp vendor/undera/pwe/.htaccess ./" shape="box"];
  "sha256:0e3dcb402dfa646a323b6e3f0ab6c1b9b95d1a404a8db8154b67dd5ef223f779" [label="copy{src=/Taurus, dest=/Taurus}" shape="note"];
  "sha256:168f86e588e05a7d6d7092610793a47808ee198c1b8223d13071cbbea354dd18" [label="copy{src=/dat, dest=/dat}" shape="note"];
  "sha256:14d97d8b860bc1d4ee09203dddde7cd2745c22a3862361a449a1545e538ba4d7" [label="copy{src=/img, dest=/img}" shape="note"];
  "sha256:f2d16b9135917bb85b5c9ce4e667a13fb580839adc01b673ae08035d395cc473" [label="copy{src=/msi, dest=/msi}" shape="note"];
  "sha256:f0d0e37f421aec293928aa94a84803c950adf82a7decb299aa09b3dc6de10399" [label="copy{src=/learn, dest=/learn}" shape="note"];
  "sha256:7c0dffc2d468a98d157aa9be84c4f6e0397671fbf08b6cfc57ef2dbb020fe29d" [label="copy{src=/snapshots, dest=/snapshots}" shape="note"];
  "sha256:6bb8d0da217867fdf9757fc7e4740978f9920ecb028561f61d4d975772a126cd" [label="copy{src=/*.php, dest=/}" shape="note"];
  "sha256:c2c34f3b10130bede1513ece929dc7d1d33fc81414101f6d861c243a7e287dfd" [label="sha256:c2c34f3b10130bede1513ece929dc7d1d33fc81414101f6d861c243a7e287dfd" shape="plaintext"];
  "sha256:c30647a036b4912a62e085241288011ca97c7a5378b6fc82ed459876e595bbd1" -> "sha256:e577998122b9dd94aa80d65e929fe7a87bda5e203591ba353ca880b0aba0a581" [label=""];
  "sha256:e577998122b9dd94aa80d65e929fe7a87bda5e203591ba353ca880b0aba0a581" -> "sha256:85d2d7a707841d5c779edd46338f64d9531efea0c2a356c65d65040b390290b2" [label=""];
  "sha256:8ade3d882fac620cf0b783234897a3e97115c5542cc9a7d39c70a53c7f7f3e7b" -> "sha256:85d2d7a707841d5c779edd46338f64d9531efea0c2a356c65d65040b390290b2" [label=""];
  "sha256:85d2d7a707841d5c779edd46338f64d9531efea0c2a356c65d65040b390290b2" -> "sha256:0496cbd596d4d47847a304c008149a071ef832415c9291786ab82b0300850fba" [label=""];
  "sha256:8ade3d882fac620cf0b783234897a3e97115c5542cc9a7d39c70a53c7f7f3e7b" -> "sha256:0496cbd596d4d47847a304c008149a071ef832415c9291786ab82b0300850fba" [label=""];
  "sha256:0496cbd596d4d47847a304c008149a071ef832415c9291786ab82b0300850fba" -> "sha256:d172b3e01d654d667525ee7033e422e74459f9d28a89895c82ee83d29d443b27" [label=""];
  "sha256:d172b3e01d654d667525ee7033e422e74459f9d28a89895c82ee83d29d443b27" -> "sha256:18a56597cf130136190b69d881efd0e56de55fe963b5ad28121f6f76bb3f48d1" [label=""];
  "sha256:18a56597cf130136190b69d881efd0e56de55fe963b5ad28121f6f76bb3f48d1" -> "sha256:0e3dcb402dfa646a323b6e3f0ab6c1b9b95d1a404a8db8154b67dd5ef223f779" [label=""];
  "sha256:8ade3d882fac620cf0b783234897a3e97115c5542cc9a7d39c70a53c7f7f3e7b" -> "sha256:0e3dcb402dfa646a323b6e3f0ab6c1b9b95d1a404a8db8154b67dd5ef223f779" [label=""];
  "sha256:0e3dcb402dfa646a323b6e3f0ab6c1b9b95d1a404a8db8154b67dd5ef223f779" -> "sha256:168f86e588e05a7d6d7092610793a47808ee198c1b8223d13071cbbea354dd18" [label=""];
  "sha256:8ade3d882fac620cf0b783234897a3e97115c5542cc9a7d39c70a53c7f7f3e7b" -> "sha256:168f86e588e05a7d6d7092610793a47808ee198c1b8223d13071cbbea354dd18" [label=""];
  "sha256:168f86e588e05a7d6d7092610793a47808ee198c1b8223d13071cbbea354dd18" -> "sha256:14d97d8b860bc1d4ee09203dddde7cd2745c22a3862361a449a1545e538ba4d7" [label=""];
  "sha256:8ade3d882fac620cf0b783234897a3e97115c5542cc9a7d39c70a53c7f7f3e7b" -> "sha256:14d97d8b860bc1d4ee09203dddde7cd2745c22a3862361a449a1545e538ba4d7" [label=""];
  "sha256:14d97d8b860bc1d4ee09203dddde7cd2745c22a3862361a449a1545e538ba4d7" -> "sha256:f2d16b9135917bb85b5c9ce4e667a13fb580839adc01b673ae08035d395cc473" [label=""];
  "sha256:8ade3d882fac620cf0b783234897a3e97115c5542cc9a7d39c70a53c7f7f3e7b" -> "sha256:f2d16b9135917bb85b5c9ce4e667a13fb580839adc01b673ae08035d395cc473" [label=""];
  "sha256:f2d16b9135917bb85b5c9ce4e667a13fb580839adc01b673ae08035d395cc473" -> "sha256:f0d0e37f421aec293928aa94a84803c950adf82a7decb299aa09b3dc6de10399" [label=""];
  "sha256:8ade3d882fac620cf0b783234897a3e97115c5542cc9a7d39c70a53c7f7f3e7b" -> "sha256:f0d0e37f421aec293928aa94a84803c950adf82a7decb299aa09b3dc6de10399" [label=""];
  "sha256:f0d0e37f421aec293928aa94a84803c950adf82a7decb299aa09b3dc6de10399" -> "sha256:7c0dffc2d468a98d157aa9be84c4f6e0397671fbf08b6cfc57ef2dbb020fe29d" [label=""];
  "sha256:8ade3d882fac620cf0b783234897a3e97115c5542cc9a7d39c70a53c7f7f3e7b" -> "sha256:7c0dffc2d468a98d157aa9be84c4f6e0397671fbf08b6cfc57ef2dbb020fe29d" [label=""];
  "sha256:7c0dffc2d468a98d157aa9be84c4f6e0397671fbf08b6cfc57ef2dbb020fe29d" -> "sha256:6bb8d0da217867fdf9757fc7e4740978f9920ecb028561f61d4d975772a126cd" [label=""];
  "sha256:8ade3d882fac620cf0b783234897a3e97115c5542cc9a7d39c70a53c7f7f3e7b" -> "sha256:6bb8d0da217867fdf9757fc7e4740978f9920ecb028561f61d4d975772a126cd" [label=""];
  "sha256:6bb8d0da217867fdf9757fc7e4740978f9920ecb028561f61d4d975772a126cd" -> "sha256:c2c34f3b10130bede1513ece929dc7d1d33fc81414101f6d861c243a7e287dfd" [label=""];
}

