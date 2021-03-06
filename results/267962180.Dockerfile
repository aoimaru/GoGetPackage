[app/sources/267962180.Dockerfile]
digraph {
  "sha256:c41a90ff94a6df2a0cd47507d4d5b4ceb49179379e408dce3bf61bbdc87ab0c7" [label="https://github.com/levito/tt-rss-feedly-theme/archive/master.tar.gz" shape="ellipse"];
  "sha256:8bd0cf470e7c45de50c2497941e1361904b6a53670796fb87e087a90d964f48f" [label="docker-image://docker.io/library/alpine:3.10" shape="ellipse"];
  "sha256:65169154574c283fe57a997a4db62889d94adf6d2846fbc80872d0ee2b3e3a9f" [label="local://context" shape="ellipse"];
  "sha256:2dcfb25ce8fca1d76f7224c4c9c228fa10fd9b00c5b84bcb0075c012c1ec827d" [label="copy{src=/src/wait-for.sh, dest=/wait-for.sh}" shape="note"];
  "sha256:434eff875f7ba78b3c352b83a6b45d0ab63d4071821d658abcdc109a3a3ed5f1" [label="/bin/sh -c chmod -x /wait-for.sh && apk add --update --no-cache nginx s6   php7 php7-intl php7-fpm php7-cli php7-curl php7-fileinfo   php7-mbstring php7-gd php7-json php7-dom php7-pcntl php7-posix   php7-pgsql php7-mcrypt php7-session php7-pdo php7-pdo_pgsql   ca-certificates && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:7c16615e3ea7d8e8af594ee55a9c6e948445348876ae91b85ed90f4ef3abe3d0" [label="copy{src=/src/ttrss.nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:d1bfcbe01bbe475f4943fbc34be5bb0f54307950269277ca59c8ba7929534560" [label="https://github.com/HenryQW/tinytinyrss-fever-plugin/archive/master.tar.gz" shape="ellipse"];
  "sha256:d3c8ec51cd3bb4577d049e4a1e173fd4788750b6fac239e63028434f9aa81ec6" [label="copy{src=/master.tar.gz, dest=/var/www/plugins/fever/}" shape="note"];
  "sha256:e0dbff15a5cf71935badb577a94c1ca218a8270740421f025308d2d21c986ef2" [label="https://github.com/HenryQW/mercury_fulltext/archive/master.tar.gz" shape="ellipse"];
  "sha256:22f6445f835ccbbfd1743302e015f7cff3b1a73b322b5c6c586c57b8685d06fb" [label="copy{src=/master.tar.gz, dest=/var/www/plugins/mercury_fulltext/}" shape="note"];
  "sha256:5637570383f8edbee17607e405c1f4cbbc274c978fe110012bf9f8f5f1150552" [label="https://github.com/feediron/ttrss_plugin-feediron/archive/master.tar.gz" shape="ellipse"];
  "sha256:a4bfd6103df265fd581b8d64d1768bc847303bef6e7e3f9491854d7214bab785" [label="copy{src=/master.tar.gz, dest=/var/www/plugins/feediron/}" shape="note"];
  "sha256:4ad67746d6edb4e49bc00c59e96a19fda7b80db1b02b96d4877d62a72e4c3aa7" [label="https://github.com/HenryQW/ttrss_opencc/archive/master.tar.gz" shape="ellipse"];
  "sha256:21e251ff9ed818b83fc52603c104b6e92b2bf65131cc058cd844b733fcd5faa1" [label="copy{src=/master.tar.gz, dest=/var/www/plugins/opencc/}" shape="note"];
  "sha256:0815366fb6df9e364450366e27082c9efe2d8d26aa94bda4db36cd58ab0dca09" [label="https://github.com/voidstern/tt-rss-newsplus-plugin/archive/master.tar.gz" shape="ellipse"];
  "sha256:eea3ddf230b1230d19558d4cdc566c2f7215f8419ac3a67fad2ca683a4f20494" [label="copy{src=/master.tar.gz, dest=/var/www/plugins/api_newsplus/}" shape="note"];
  "sha256:fc1a9465becc390429bc96b24fa50e3ea47134d65a8e4b646f6cc1937c277719" [label="https://raw.githubusercontent.com/jangernert/FeedReader/master/data/tt-rss-feedreader-plugin/api_feedreader/init.php" shape="ellipse"];
  "sha256:e2b784b2d9208bdce07f8c607574d979b7b76e5b2965ce98b205e7461e1d991f" [label="copy{src=/init.php, dest=/var/www/plugins/api_feedreader/}" shape="note"];
  "sha256:5d76878e30d4f7926602e046e8dd50842c18a08b621a87c5f2f5c715d679fa31" [label="copy{src=/master.tar.gz, dest=/var/www/themes/feedly/}" shape="note"];
  "sha256:59236ab50b77c03a5bc1b87c0114267233a51f79644076f46ad15f8395c25eaa" [label="https://github.com/DIYgod/ttrss-theme-rsshub/archive/master.tar.gz" shape="ellipse"];
  "sha256:91352bbe3b15d00d1e768754116533545ba54f9f7eea47e81c3bcc2a83d3749f" [label="copy{src=/master.tar.gz, dest=/var/www/themes/rsshub/}" shape="note"];
  "sha256:24464119f8d4dd50309c0ce0b76efa2ca4c3fd33d46fcf5cc288a2edc1a4a379" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:93a481766bb9c744ff4c4511659cc2e26fc2e2d5bb7097030cadbd0dd7344ec7" [label="/bin/sh -c apk add --update --virtual build-dependencies curl tar   && curl -SL https://git.tt-rss.org/git/tt-rss/archive/master.tar.gz | tar xzC /var/www --strip-components 1   && tar xzvpf /var/www/plugins/fever/master.tar.gz --strip-components=1 -C /var/www/plugins/fever tinytinyrss-fever-plugin-master && rm /var/www/plugins/fever/master.tar.gz     && tar xzvpf /var/www/plugins/mercury_fulltext/master.tar.gz --strip-components=1 -C /var/www/plugins/mercury_fulltext/ mercury_fulltext-master && rm /var/www/plugins/mercury_fulltext/master.tar.gz     && tar xzvpf /var/www/plugins/feediron/master.tar.gz --strip-components=1 -C /var/www/plugins/feediron/ ttrss_plugin-feediron-master && rm /var/www/plugins/feediron/master.tar.gz     && tar xzvpf /var/www/plugins/opencc/master.tar.gz --strip-components=1 -C /var/www/plugins/opencc/ ttrss_opencc-master && rm /var/www/plugins/opencc/master.tar.gz     && tar xzvpf /var/www/plugins/api_newsplus/master.tar.gz --strip-components=2 -C /var/www/plugins/api_newsplus tt-rss-newsplus-plugin-master/api_newsplus && rm /var/www/plugins/api_newsplus/master.tar.gz     && tar xzvpf /var/www/themes/feedly/master.tar.gz --strip-components=1 -C /var/www/themes/ tt-rss-feedly-theme-master/feedly tt-rss-feedly-theme-master/feedly.css && rm -rf /var/www/themes/feedly     && tar xzvpf /var/www/themes/rsshub/master.tar.gz --strip-components=2 -C /var/www/themes/ ttrss-theme-rsshub-master/dist/rsshub.css && rm -rf /var/www/themes/rsshub     && apk del build-dependencies   && rm -rf /var/cache/apk/*   && cp config.php-dist config.php   && chown nobody:nginx -R /var/www" shape="box"];
  "sha256:3b5fea2d7b0c939063e84c0e2bcb457ee8700d8344cddf090dccc47885c77134" [label="copy{src=/src/configure-db.php, dest=/configure-db.php}" shape="note"];
  "sha256:462da7b89729631cd5a82ecc486ff600ef56d1ac69770909634a20dac7311278" [label="copy{src=/src/s6, dest=/etc/s6/}" shape="note"];
  "sha256:b75f9d4d6304c5de4a8453fe81b72888075d78335ff74859a509ef3008039b0b" [label="sha256:b75f9d4d6304c5de4a8453fe81b72888075d78335ff74859a509ef3008039b0b" shape="plaintext"];
  "sha256:8bd0cf470e7c45de50c2497941e1361904b6a53670796fb87e087a90d964f48f" -> "sha256:2dcfb25ce8fca1d76f7224c4c9c228fa10fd9b00c5b84bcb0075c012c1ec827d" [label=""];
  "sha256:65169154574c283fe57a997a4db62889d94adf6d2846fbc80872d0ee2b3e3a9f" -> "sha256:2dcfb25ce8fca1d76f7224c4c9c228fa10fd9b00c5b84bcb0075c012c1ec827d" [label=""];
  "sha256:2dcfb25ce8fca1d76f7224c4c9c228fa10fd9b00c5b84bcb0075c012c1ec827d" -> "sha256:434eff875f7ba78b3c352b83a6b45d0ab63d4071821d658abcdc109a3a3ed5f1" [label=""];
  "sha256:434eff875f7ba78b3c352b83a6b45d0ab63d4071821d658abcdc109a3a3ed5f1" -> "sha256:7c16615e3ea7d8e8af594ee55a9c6e948445348876ae91b85ed90f4ef3abe3d0" [label=""];
  "sha256:65169154574c283fe57a997a4db62889d94adf6d2846fbc80872d0ee2b3e3a9f" -> "sha256:7c16615e3ea7d8e8af594ee55a9c6e948445348876ae91b85ed90f4ef3abe3d0" [label=""];
  "sha256:7c16615e3ea7d8e8af594ee55a9c6e948445348876ae91b85ed90f4ef3abe3d0" -> "sha256:d3c8ec51cd3bb4577d049e4a1e173fd4788750b6fac239e63028434f9aa81ec6" [label=""];
  "sha256:d1bfcbe01bbe475f4943fbc34be5bb0f54307950269277ca59c8ba7929534560" -> "sha256:d3c8ec51cd3bb4577d049e4a1e173fd4788750b6fac239e63028434f9aa81ec6" [label=""];
  "sha256:d3c8ec51cd3bb4577d049e4a1e173fd4788750b6fac239e63028434f9aa81ec6" -> "sha256:22f6445f835ccbbfd1743302e015f7cff3b1a73b322b5c6c586c57b8685d06fb" [label=""];
  "sha256:e0dbff15a5cf71935badb577a94c1ca218a8270740421f025308d2d21c986ef2" -> "sha256:22f6445f835ccbbfd1743302e015f7cff3b1a73b322b5c6c586c57b8685d06fb" [label=""];
  "sha256:22f6445f835ccbbfd1743302e015f7cff3b1a73b322b5c6c586c57b8685d06fb" -> "sha256:a4bfd6103df265fd581b8d64d1768bc847303bef6e7e3f9491854d7214bab785" [label=""];
  "sha256:5637570383f8edbee17607e405c1f4cbbc274c978fe110012bf9f8f5f1150552" -> "sha256:a4bfd6103df265fd581b8d64d1768bc847303bef6e7e3f9491854d7214bab785" [label=""];
  "sha256:a4bfd6103df265fd581b8d64d1768bc847303bef6e7e3f9491854d7214bab785" -> "sha256:21e251ff9ed818b83fc52603c104b6e92b2bf65131cc058cd844b733fcd5faa1" [label=""];
  "sha256:4ad67746d6edb4e49bc00c59e96a19fda7b80db1b02b96d4877d62a72e4c3aa7" -> "sha256:21e251ff9ed818b83fc52603c104b6e92b2bf65131cc058cd844b733fcd5faa1" [label=""];
  "sha256:21e251ff9ed818b83fc52603c104b6e92b2bf65131cc058cd844b733fcd5faa1" -> "sha256:eea3ddf230b1230d19558d4cdc566c2f7215f8419ac3a67fad2ca683a4f20494" [label=""];
  "sha256:0815366fb6df9e364450366e27082c9efe2d8d26aa94bda4db36cd58ab0dca09" -> "sha256:eea3ddf230b1230d19558d4cdc566c2f7215f8419ac3a67fad2ca683a4f20494" [label=""];
  "sha256:eea3ddf230b1230d19558d4cdc566c2f7215f8419ac3a67fad2ca683a4f20494" -> "sha256:e2b784b2d9208bdce07f8c607574d979b7b76e5b2965ce98b205e7461e1d991f" [label=""];
  "sha256:fc1a9465becc390429bc96b24fa50e3ea47134d65a8e4b646f6cc1937c277719" -> "sha256:e2b784b2d9208bdce07f8c607574d979b7b76e5b2965ce98b205e7461e1d991f" [label=""];
  "sha256:e2b784b2d9208bdce07f8c607574d979b7b76e5b2965ce98b205e7461e1d991f" -> "sha256:5d76878e30d4f7926602e046e8dd50842c18a08b621a87c5f2f5c715d679fa31" [label=""];
  "sha256:c41a90ff94a6df2a0cd47507d4d5b4ceb49179379e408dce3bf61bbdc87ab0c7" -> "sha256:5d76878e30d4f7926602e046e8dd50842c18a08b621a87c5f2f5c715d679fa31" [label=""];
  "sha256:5d76878e30d4f7926602e046e8dd50842c18a08b621a87c5f2f5c715d679fa31" -> "sha256:91352bbe3b15d00d1e768754116533545ba54f9f7eea47e81c3bcc2a83d3749f" [label=""];
  "sha256:59236ab50b77c03a5bc1b87c0114267233a51f79644076f46ad15f8395c25eaa" -> "sha256:91352bbe3b15d00d1e768754116533545ba54f9f7eea47e81c3bcc2a83d3749f" [label=""];
  "sha256:91352bbe3b15d00d1e768754116533545ba54f9f7eea47e81c3bcc2a83d3749f" -> "sha256:24464119f8d4dd50309c0ce0b76efa2ca4c3fd33d46fcf5cc288a2edc1a4a379" [label=""];
  "sha256:24464119f8d4dd50309c0ce0b76efa2ca4c3fd33d46fcf5cc288a2edc1a4a379" -> "sha256:93a481766bb9c744ff4c4511659cc2e26fc2e2d5bb7097030cadbd0dd7344ec7" [label=""];
  "sha256:93a481766bb9c744ff4c4511659cc2e26fc2e2d5bb7097030cadbd0dd7344ec7" -> "sha256:3b5fea2d7b0c939063e84c0e2bcb457ee8700d8344cddf090dccc47885c77134" [label=""];
  "sha256:65169154574c283fe57a997a4db62889d94adf6d2846fbc80872d0ee2b3e3a9f" -> "sha256:3b5fea2d7b0c939063e84c0e2bcb457ee8700d8344cddf090dccc47885c77134" [label=""];
  "sha256:3b5fea2d7b0c939063e84c0e2bcb457ee8700d8344cddf090dccc47885c77134" -> "sha256:462da7b89729631cd5a82ecc486ff600ef56d1ac69770909634a20dac7311278" [label=""];
  "sha256:65169154574c283fe57a997a4db62889d94adf6d2846fbc80872d0ee2b3e3a9f" -> "sha256:462da7b89729631cd5a82ecc486ff600ef56d1ac69770909634a20dac7311278" [label=""];
  "sha256:462da7b89729631cd5a82ecc486ff600ef56d1ac69770909634a20dac7311278" -> "sha256:b75f9d4d6304c5de4a8453fe81b72888075d78335ff74859a509ef3008039b0b" [label=""];
}

