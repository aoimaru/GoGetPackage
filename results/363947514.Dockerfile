[app/sources/363947514.Dockerfile]
digraph {
  "sha256:5955683c707c864c7cc038b6c22c3c96da611d93493c389112fa2db86641adb3" [label="docker-image://docker.io/library/nginx:1.13" shape="ellipse"];
  "sha256:a7c33ad4a075001f7331c515263b912c68e93c96af0ea799198bb048b3eac863" [label="/bin/sh -c groupadd -g 1000 app  && useradd -g 1000 -u 1000 -d /var/www -s /bin/bash app" shape="box"];
  "sha256:47ffd91bbe5a319698c61c1fcebddbffab474a64d66e4e99bb74a4bec04de698" [label="/bin/sh -c touch /var/run/nginx.pid" shape="box"];
  "sha256:9aa800514b5ac3a3b774ba11fda7bef1821767cd34c9241c120104e280355c6f" [label="/bin/sh -c mkdir /sock" shape="box"];
  "sha256:d45252566cc82507fdabfbf9addfb948be62d5acbaaefeb333557d90f75ea33e" [label="/bin/sh -c apt-get update && apt-get install -y openssl" shape="box"];
  "sha256:87fe5eab886c36d4ec3f59fd2429dc8deff4a91574eb2db3b0bf3f1757069184" [label="/bin/sh -c mkdir /etc/nginx/certs   && echo -e \"\\n\\n\\n\\n\\n\\n\\n\" | openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/certs/nginx.key -out /etc/nginx/certs/nginx.crt" shape="box"];
  "sha256:04705d2e3dc2aba1de3ed0b4a0db8bf61da2734f3e70f5699cc5be936eb0c5a3" [label="local://context" shape="ellipse"];
  "sha256:af0e4be772d061ee94e2ffa625616d14d4be8da7a7fca4d5f21b2b03e1239c65" [label="copy{src=/conf/nginx.conf, dest=/etc/nginx/}" shape="note"];
  "sha256:c2b34f813bc39a6d8391352b4286a73dbc863cc90d3a83677203499603de14ad" [label="copy{src=/conf/default.conf, dest=/etc/nginx/conf.d/}" shape="note"];
  "sha256:750d5ca9a8fa83da2ff87c98b65576b5cb9a75d2fe616b96ffcb95daa76fe1fb" [label="/bin/sh -c mkdir -p /etc/nginx/html /var/www/html   && chown -R app:app /etc/nginx /var/www /var/cache/nginx /var/run/nginx.pid /sock" shape="box"];
  "sha256:f7d261ac1ee28767d378e2ffe4a40c505a45a92d09688f154d7a1a967ad86008" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:d2f08ff824b583c59e7497fe801cf4869fec3832fbde10e8234504afd32f4eec" [label="sha256:d2f08ff824b583c59e7497fe801cf4869fec3832fbde10e8234504afd32f4eec" shape="plaintext"];
  "sha256:5955683c707c864c7cc038b6c22c3c96da611d93493c389112fa2db86641adb3" -> "sha256:a7c33ad4a075001f7331c515263b912c68e93c96af0ea799198bb048b3eac863" [label=""];
  "sha256:a7c33ad4a075001f7331c515263b912c68e93c96af0ea799198bb048b3eac863" -> "sha256:47ffd91bbe5a319698c61c1fcebddbffab474a64d66e4e99bb74a4bec04de698" [label=""];
  "sha256:47ffd91bbe5a319698c61c1fcebddbffab474a64d66e4e99bb74a4bec04de698" -> "sha256:9aa800514b5ac3a3b774ba11fda7bef1821767cd34c9241c120104e280355c6f" [label=""];
  "sha256:9aa800514b5ac3a3b774ba11fda7bef1821767cd34c9241c120104e280355c6f" -> "sha256:d45252566cc82507fdabfbf9addfb948be62d5acbaaefeb333557d90f75ea33e" [label=""];
  "sha256:d45252566cc82507fdabfbf9addfb948be62d5acbaaefeb333557d90f75ea33e" -> "sha256:87fe5eab886c36d4ec3f59fd2429dc8deff4a91574eb2db3b0bf3f1757069184" [label=""];
  "sha256:87fe5eab886c36d4ec3f59fd2429dc8deff4a91574eb2db3b0bf3f1757069184" -> "sha256:af0e4be772d061ee94e2ffa625616d14d4be8da7a7fca4d5f21b2b03e1239c65" [label=""];
  "sha256:04705d2e3dc2aba1de3ed0b4a0db8bf61da2734f3e70f5699cc5be936eb0c5a3" -> "sha256:af0e4be772d061ee94e2ffa625616d14d4be8da7a7fca4d5f21b2b03e1239c65" [label=""];
  "sha256:af0e4be772d061ee94e2ffa625616d14d4be8da7a7fca4d5f21b2b03e1239c65" -> "sha256:c2b34f813bc39a6d8391352b4286a73dbc863cc90d3a83677203499603de14ad" [label=""];
  "sha256:04705d2e3dc2aba1de3ed0b4a0db8bf61da2734f3e70f5699cc5be936eb0c5a3" -> "sha256:c2b34f813bc39a6d8391352b4286a73dbc863cc90d3a83677203499603de14ad" [label=""];
  "sha256:c2b34f813bc39a6d8391352b4286a73dbc863cc90d3a83677203499603de14ad" -> "sha256:750d5ca9a8fa83da2ff87c98b65576b5cb9a75d2fe616b96ffcb95daa76fe1fb" [label=""];
  "sha256:750d5ca9a8fa83da2ff87c98b65576b5cb9a75d2fe616b96ffcb95daa76fe1fb" -> "sha256:f7d261ac1ee28767d378e2ffe4a40c505a45a92d09688f154d7a1a967ad86008" [label=""];
  "sha256:f7d261ac1ee28767d378e2ffe4a40c505a45a92d09688f154d7a1a967ad86008" -> "sha256:d2f08ff824b583c59e7497fe801cf4869fec3832fbde10e8234504afd32f4eec" [label=""];
}

