[app/sources/479909641.Dockerfile]
digraph {
  "sha256:32c13510f8c289522d342918aff9635ac084428654ecb18142d16c3af8afaabc" [label="docker-image://docker.io/library/python:2" shape="ellipse"];
  "sha256:0037e58b84c1b9cc7f181a39ff6ff87d38a18948fc4625a1659f99a97963f437" [label="/bin/sh -c apt-get update && \tapt-get -y install cron rsyslog git --no-install-recommends && \trm -rf /var/lib/apt/lists/* && \tsed -i 's/session    required     pam_loginuid.so/#session    required     pam_loginuid.so/' /etc/pam.d/cron" shape="box"];
  "sha256:644ce993c70d86afaa495a9e78b7dcc7d9e8e0f1036c41def7178a4ac1ed27fe" [label="/bin/sh -c git clone --depth 1 https://github.com/lukas2511/dehydrated.git /srv/dehydrated && \tpip install requests[security] dns-lexicon" shape="box"];
  "sha256:e6ab39de222860925377ae0b724f3b27eee9ee7a817747a8d01b8178c7c2d170" [label="local://context" shape="ellipse"];
  "sha256:28a2b3c73ca418238253af4799affe9ea7d16c1f34cc7541cc89c52d73fb54c0" [label="copy{src=/examples/dehydrated.default.sh, dest=/srv/dehydrated/dehydrated.default.sh}" shape="note"];
  "sha256:0878073c95fa3159d64a7d883036bc9b5ad1c2ec32838efe89003de98ec2d488" [label="copy{src=/examples/crontab, dest=/etc/crontab}" shape="note"];
  "sha256:c13e3bfad3b372f08adea9e681430f4c9ac67c044d1f8cf186f2513c820b203d" [label="copy{src=/examples/cron.sh, dest=/srv/dehydrated/cron.sh}" shape="note"];
  "sha256:3653a0a303f1f7a1ce58fb366df49f5bf1423be3b2bfaf302756f91b3842aadf" [label="/bin/sh -c echo \"test.intranet.example.com\" > /srv/dehydrated/domains.txt && \tchmod +x /srv/dehydrated/cron.sh && \tcrontab /etc/crontab && \ttouch /var/log/cron" shape="box"];
  "sha256:be7c44dbf43b472bac2dc00ff732f75f0faca1cf1553395d57f448c674df18de" [label="sha256:be7c44dbf43b472bac2dc00ff732f75f0faca1cf1553395d57f448c674df18de" shape="plaintext"];
  "sha256:32c13510f8c289522d342918aff9635ac084428654ecb18142d16c3af8afaabc" -> "sha256:0037e58b84c1b9cc7f181a39ff6ff87d38a18948fc4625a1659f99a97963f437" [label=""];
  "sha256:0037e58b84c1b9cc7f181a39ff6ff87d38a18948fc4625a1659f99a97963f437" -> "sha256:644ce993c70d86afaa495a9e78b7dcc7d9e8e0f1036c41def7178a4ac1ed27fe" [label=""];
  "sha256:644ce993c70d86afaa495a9e78b7dcc7d9e8e0f1036c41def7178a4ac1ed27fe" -> "sha256:28a2b3c73ca418238253af4799affe9ea7d16c1f34cc7541cc89c52d73fb54c0" [label=""];
  "sha256:e6ab39de222860925377ae0b724f3b27eee9ee7a817747a8d01b8178c7c2d170" -> "sha256:28a2b3c73ca418238253af4799affe9ea7d16c1f34cc7541cc89c52d73fb54c0" [label=""];
  "sha256:28a2b3c73ca418238253af4799affe9ea7d16c1f34cc7541cc89c52d73fb54c0" -> "sha256:0878073c95fa3159d64a7d883036bc9b5ad1c2ec32838efe89003de98ec2d488" [label=""];
  "sha256:e6ab39de222860925377ae0b724f3b27eee9ee7a817747a8d01b8178c7c2d170" -> "sha256:0878073c95fa3159d64a7d883036bc9b5ad1c2ec32838efe89003de98ec2d488" [label=""];
  "sha256:0878073c95fa3159d64a7d883036bc9b5ad1c2ec32838efe89003de98ec2d488" -> "sha256:c13e3bfad3b372f08adea9e681430f4c9ac67c044d1f8cf186f2513c820b203d" [label=""];
  "sha256:e6ab39de222860925377ae0b724f3b27eee9ee7a817747a8d01b8178c7c2d170" -> "sha256:c13e3bfad3b372f08adea9e681430f4c9ac67c044d1f8cf186f2513c820b203d" [label=""];
  "sha256:c13e3bfad3b372f08adea9e681430f4c9ac67c044d1f8cf186f2513c820b203d" -> "sha256:3653a0a303f1f7a1ce58fb366df49f5bf1423be3b2bfaf302756f91b3842aadf" [label=""];
  "sha256:3653a0a303f1f7a1ce58fb366df49f5bf1423be3b2bfaf302756f91b3842aadf" -> "sha256:be7c44dbf43b472bac2dc00ff732f75f0faca1cf1553395d57f448c674df18de" [label=""];
}

