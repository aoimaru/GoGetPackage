[app/sources/248836323.Dockerfile]
digraph {
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" [label="docker-image://docker.io/library/alpine:3.7" shape="ellipse"];
  "sha256:ceedd99c6999ea5294965e6fa902a74d68f757881ca4d725e300dabed84ed78c" [label="/bin/sh -c apk add -U     tini     php7     php7-dev     php7-common     php7-apcu     php7-bcmath     php7-xmlwriter     php7-ctype     php7-curl     php7-exif     php7-iconv     php7-intl     php7-json     php7-mbstring     php7-opcache     php7-openssl     php7-pcntl     php7-pdo     php7-mysqlnd     php7-pdo_mysql     php7-pdo_pgsql     php7-pdo_sqlite     php7-gd     php7-phar     php7-posix     php7-session     php7-xml     php7-simplexml     php7-mcrypt     php7-xsl     php7-zip     php7-zlib     php7-dom     php7-redis     php7-fpm     php7-tokenizer     && rm -rf /var/cache/apk/*" shape="box"];
  "sha256:0c6a2239a307c9fb444e36128479370e3cd1cca3b65bfa3d31e29bbf8b0f9ce9" [label="local://context" shape="ellipse"];
  "sha256:a9a7f6602243e2727b777002ff0c6528fd1819bc4cd98c56ec08fb2525a54a09" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:032ed3d1942b325d96b074fb41d119ad3d76ff37df5f4ab7b748928a925b2f0e" [label="mkdir{path=/app}" shape="note"];
  "sha256:4a98d57065125358719ab7edd7ed3ebdd242b5d5b7eec56f99ceaaa92460f58a" [label="sha256:4a98d57065125358719ab7edd7ed3ebdd242b5d5b7eec56f99ceaaa92460f58a" shape="plaintext"];
  "sha256:c139e859151268321f8b3d9af4bf0195aab52a1b66880ee4294469151c73bfb9" -> "sha256:ceedd99c6999ea5294965e6fa902a74d68f757881ca4d725e300dabed84ed78c" [label=""];
  "sha256:ceedd99c6999ea5294965e6fa902a74d68f757881ca4d725e300dabed84ed78c" -> "sha256:a9a7f6602243e2727b777002ff0c6528fd1819bc4cd98c56ec08fb2525a54a09" [label=""];
  "sha256:0c6a2239a307c9fb444e36128479370e3cd1cca3b65bfa3d31e29bbf8b0f9ce9" -> "sha256:a9a7f6602243e2727b777002ff0c6528fd1819bc4cd98c56ec08fb2525a54a09" [label=""];
  "sha256:a9a7f6602243e2727b777002ff0c6528fd1819bc4cd98c56ec08fb2525a54a09" -> "sha256:032ed3d1942b325d96b074fb41d119ad3d76ff37df5f4ab7b748928a925b2f0e" [label=""];
  "sha256:032ed3d1942b325d96b074fb41d119ad3d76ff37df5f4ab7b748928a925b2f0e" -> "sha256:4a98d57065125358719ab7edd7ed3ebdd242b5d5b7eec56f99ceaaa92460f58a" [label=""];
}

