[app/sources/216685627.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:78c4b476058f1c2faf00395ad85d0bd88ddd44292fc430500431ca3f703c34b2" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:da09cc4f79920fa660ff0b6353e4467f995c8ec0b4712411e779e116cd258c7c" [label="/bin/sh -c apk add --no-cache \tgcc \tg++ \tmake \tgit \tcvs \tzlib-dev \t&& cvs -d :pserver:cvs@cvs.fefe.de:/cvs -z9 co libowfat \t&& cd libowfat \t&& make \t&& cd ../ \t&& git clone git://erdgeist.org/opentracker \t\t&& cd opentracker \t\t&& make \t&& mv /tmp/opentracker/opentracker /bin/ \t&& apk del gcc g++ make git cvs zlib-dev \t&& rm -rf /var/cache/apk/* /tmp/*" shape="box"];
  "sha256:934a989d01d9cb020f3b623cb89f78ba31a2cde4576104baa4c0297764e5663c" [label="local://context" shape="ellipse"];
  "sha256:472b26ad2e48096f724d37de20cc24a65f0c2e675f41f11fce4dd1dd3b3c130a" [label="copy{src=/opentracker.conf, dest=/etc/opentracker/opentracker.conf}" shape="note"];
  "sha256:f681dd5e08e40dcd53a61e92f1aecfa6e4d5f29dc680496a39178ddd28d28eba" [label="copy{src=/whitelist.txt, dest=/etc/opentracker/whitelist.txt}" shape="note"];
  "sha256:4ccfc0e56f4162bb6c7784f5df9c9cf12e3fd1fad20651d18bf6202b5a146712" [label="copy{src=/blacklist.txt, dest=/etc/opentracker/blacklist.conf}" shape="note"];
  "sha256:85b165cf13f4b570ccde9dccd314ed2d8ac58f0e0b0dc1c0564ba8414a8033bc" [label="sha256:85b165cf13f4b570ccde9dccd314ed2d8ac58f0e0b0dc1c0564ba8414a8033bc" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:78c4b476058f1c2faf00395ad85d0bd88ddd44292fc430500431ca3f703c34b2" [label=""];
  "sha256:78c4b476058f1c2faf00395ad85d0bd88ddd44292fc430500431ca3f703c34b2" -> "sha256:da09cc4f79920fa660ff0b6353e4467f995c8ec0b4712411e779e116cd258c7c" [label=""];
  "sha256:da09cc4f79920fa660ff0b6353e4467f995c8ec0b4712411e779e116cd258c7c" -> "sha256:472b26ad2e48096f724d37de20cc24a65f0c2e675f41f11fce4dd1dd3b3c130a" [label=""];
  "sha256:934a989d01d9cb020f3b623cb89f78ba31a2cde4576104baa4c0297764e5663c" -> "sha256:472b26ad2e48096f724d37de20cc24a65f0c2e675f41f11fce4dd1dd3b3c130a" [label=""];
  "sha256:472b26ad2e48096f724d37de20cc24a65f0c2e675f41f11fce4dd1dd3b3c130a" -> "sha256:f681dd5e08e40dcd53a61e92f1aecfa6e4d5f29dc680496a39178ddd28d28eba" [label=""];
  "sha256:934a989d01d9cb020f3b623cb89f78ba31a2cde4576104baa4c0297764e5663c" -> "sha256:f681dd5e08e40dcd53a61e92f1aecfa6e4d5f29dc680496a39178ddd28d28eba" [label=""];
  "sha256:f681dd5e08e40dcd53a61e92f1aecfa6e4d5f29dc680496a39178ddd28d28eba" -> "sha256:4ccfc0e56f4162bb6c7784f5df9c9cf12e3fd1fad20651d18bf6202b5a146712" [label=""];
  "sha256:934a989d01d9cb020f3b623cb89f78ba31a2cde4576104baa4c0297764e5663c" -> "sha256:4ccfc0e56f4162bb6c7784f5df9c9cf12e3fd1fad20651d18bf6202b5a146712" [label=""];
  "sha256:4ccfc0e56f4162bb6c7784f5df9c9cf12e3fd1fad20651d18bf6202b5a146712" -> "sha256:85b165cf13f4b570ccde9dccd314ed2d8ac58f0e0b0dc1c0564ba8414a8033bc" [label=""];
}

