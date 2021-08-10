[app/sources/248836314.Dockerfile]
digraph {
  "sha256:b0250a58ad3a825413d2ef1ac54f7e1d6269c941a38004c9d3a8249719b46b17" [label="docker-image://docker.io/jorge07/alpine-php:5.6" shape="ellipse"];
  "sha256:811d9ef4cf03b79884c1471f005495ce2245721755d22bae579e30a1455e32a0" [label="/bin/sh -c apk add -U --no-cache         openssh         supervisor         git         zip         wget         curl         php5-xdebug     && sed -i s/#PermitRootLogin.*/PermitRootLogin\\ yes/ /etc/ssh/sshd_config     && echo \"${USER}:${PASSWORD}\" | chpasswd     && ssh-keygen -A     && rm -rf /var/cache/apk/*     && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=${COMPOSER_VERSION}     && composer global require \"hirak/prestissimo:0.3.7\"" shape="box"];
  "sha256:b8c88569b14ff7d42e0dc9e456eb347759f8ef4e49a3fbc2fbacb2f377d62589" [label="local://context" shape="ellipse"];
  "sha256:ff1aa67280e38c7b54ea0e4f3d9a9a0fcee2d8ce7bc9ebbbf159dc8822da689b" [label="copy{src=/devfs, dest=/}" shape="note"];
  "sha256:759d99ef541de208067377e9c83ea920bb28e5b2e04aefacbf960b8b0fcfccdf" [label="sha256:759d99ef541de208067377e9c83ea920bb28e5b2e04aefacbf960b8b0fcfccdf" shape="plaintext"];
  "sha256:b0250a58ad3a825413d2ef1ac54f7e1d6269c941a38004c9d3a8249719b46b17" -> "sha256:811d9ef4cf03b79884c1471f005495ce2245721755d22bae579e30a1455e32a0" [label=""];
  "sha256:811d9ef4cf03b79884c1471f005495ce2245721755d22bae579e30a1455e32a0" -> "sha256:ff1aa67280e38c7b54ea0e4f3d9a9a0fcee2d8ce7bc9ebbbf159dc8822da689b" [label=""];
  "sha256:b8c88569b14ff7d42e0dc9e456eb347759f8ef4e49a3fbc2fbacb2f377d62589" -> "sha256:ff1aa67280e38c7b54ea0e4f3d9a9a0fcee2d8ce7bc9ebbbf159dc8822da689b" [label=""];
  "sha256:ff1aa67280e38c7b54ea0e4f3d9a9a0fcee2d8ce7bc9ebbbf159dc8822da689b" -> "sha256:759d99ef541de208067377e9c83ea920bb28e5b2e04aefacbf960b8b0fcfccdf" [label=""];
}

