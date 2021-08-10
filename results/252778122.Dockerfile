[app/sources/252778122.Dockerfile]
digraph {
  "sha256:fff1ffc5487243e42350d09345683fceeb8f56b519cc31fdce6ed44f29481425" [label="local://context" shape="ellipse"];
  "sha256:5019399616561ceaeac5479dcebcc6aa13926f7b0cd0c36a7cea395e727f7d39" [label="docker-image://docker.io/library/alpine:3.1" shape="ellipse"];
  "sha256:cf56469246e40d36b837ecf8a570dd40118e5767aa5c1d7534d5e208a0b7036f" [label="/bin/sh -c apk --update add git openssl-dev pcre-dev zlib-dev wget perl perl-dev imagemagick imagemagick-dev build-base" shape="box"];
  "sha256:df63f8c33d45e83eaf9b6f6b4448742e5c5e12938bc9313cfa4db217bc7f463e" [label="copy{src=/build.sh, dest=/tmp/build.sh}" shape="note"];
  "sha256:bc6b1e9ce1b3909ae320e9ba5c32731a047882c31aa98298ff1cbac74666053f" [label="/bin/sh -c sh /tmp/build.sh rm /tmp/build.sh" shape="box"];
  "sha256:797e5af750070817bac0a00706e8953ed63af15d220fe7ae949e3ae4170eafd2" [label="/bin/sh -c mkdir -p /var/nginx/cache" shape="box"];
  "sha256:f6f02513108941f384e8b811aa91ea42dd15be20ef5d68b347bd62a491df9c75" [label="copy{src=/files/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:1b6642a080477bb40947a6b76fe68d04e621ad1c53b9476c56ef94a6bb464498" [label="mkdir{path=/etc/nginx}" shape="note"];
  "sha256:3d7048ebf692f55036b8cbc0bf9be328343653ef295c70c1b57c5e1f8dddedbf" [label="sha256:3d7048ebf692f55036b8cbc0bf9be328343653ef295c70c1b57c5e1f8dddedbf" shape="plaintext"];
  "sha256:5019399616561ceaeac5479dcebcc6aa13926f7b0cd0c36a7cea395e727f7d39" -> "sha256:cf56469246e40d36b837ecf8a570dd40118e5767aa5c1d7534d5e208a0b7036f" [label=""];
  "sha256:cf56469246e40d36b837ecf8a570dd40118e5767aa5c1d7534d5e208a0b7036f" -> "sha256:df63f8c33d45e83eaf9b6f6b4448742e5c5e12938bc9313cfa4db217bc7f463e" [label=""];
  "sha256:fff1ffc5487243e42350d09345683fceeb8f56b519cc31fdce6ed44f29481425" -> "sha256:df63f8c33d45e83eaf9b6f6b4448742e5c5e12938bc9313cfa4db217bc7f463e" [label=""];
  "sha256:df63f8c33d45e83eaf9b6f6b4448742e5c5e12938bc9313cfa4db217bc7f463e" -> "sha256:bc6b1e9ce1b3909ae320e9ba5c32731a047882c31aa98298ff1cbac74666053f" [label=""];
  "sha256:bc6b1e9ce1b3909ae320e9ba5c32731a047882c31aa98298ff1cbac74666053f" -> "sha256:797e5af750070817bac0a00706e8953ed63af15d220fe7ae949e3ae4170eafd2" [label=""];
  "sha256:797e5af750070817bac0a00706e8953ed63af15d220fe7ae949e3ae4170eafd2" -> "sha256:f6f02513108941f384e8b811aa91ea42dd15be20ef5d68b347bd62a491df9c75" [label=""];
  "sha256:fff1ffc5487243e42350d09345683fceeb8f56b519cc31fdce6ed44f29481425" -> "sha256:f6f02513108941f384e8b811aa91ea42dd15be20ef5d68b347bd62a491df9c75" [label=""];
  "sha256:f6f02513108941f384e8b811aa91ea42dd15be20ef5d68b347bd62a491df9c75" -> "sha256:1b6642a080477bb40947a6b76fe68d04e621ad1c53b9476c56ef94a6bb464498" [label=""];
  "sha256:1b6642a080477bb40947a6b76fe68d04e621ad1c53b9476c56ef94a6bb464498" -> "sha256:3d7048ebf692f55036b8cbc0bf9be328343653ef295c70c1b57c5e1f8dddedbf" [label=""];
}

