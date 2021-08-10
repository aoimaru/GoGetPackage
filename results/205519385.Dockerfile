[app/sources/205519385.Dockerfile]
digraph {
  "sha256:64ed4d29adbd0acf474e48c7986358cb488ff76fa7abb283a7d133e76acb8291" [label="docker-image://docker.io/phalconphp/build:debian-stretch" shape="ellipse"];
  "sha256:a719293cd4b10b555784c8c4538189e2fef7bae547dce1128fe807aa610383ee" [label="/bin/sh -c apt-get clean -y     && wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg     && echo \"deb https://packages.sury.org/php/ $(lsb_release -sc) main\" > /etc/apt/sources.list.d/php.list     && /usr/local/bin/apt-upgrade     && /usr/local/bin/apt-install         php7.1-dev         php7.1-common         php7.1-cli     && apt-get autoremove -y     && apt-get autoclean -y     && apt-get clean -y     && rm -rf /tmp/* /var/tmp/*     && find /var/cache/apt/archives /var/lib/apt/lists -not -name lock -type f -delete     && find /var/cache -type f -delete     && find /var/log -type f | while read f; do echo -n '' > ${f}; done" shape="box"];
  "sha256:13fc6a53ce9fae2bf75ab927be8fc999b24f488b5097f26cb6437abac411b582" [label="sha256:13fc6a53ce9fae2bf75ab927be8fc999b24f488b5097f26cb6437abac411b582" shape="plaintext"];
  "sha256:64ed4d29adbd0acf474e48c7986358cb488ff76fa7abb283a7d133e76acb8291" -> "sha256:a719293cd4b10b555784c8c4538189e2fef7bae547dce1128fe807aa610383ee" [label=""];
  "sha256:a719293cd4b10b555784c8c4538189e2fef7bae547dce1128fe807aa610383ee" -> "sha256:13fc6a53ce9fae2bf75ab927be8fc999b24f488b5097f26cb6437abac411b582" [label=""];
}

