[app/sources/183521511.Dockerfile]
digraph {
  "sha256:068c0645aa89360860bc9b66c4e99703114b43d373ede76de92208c78db68725" [label="docker-image://docker.io/library/wordpress:4-php7.1" shape="ellipse"];
  "sha256:dd2d3f4ceabf3b30964953d2e63d0d8d3fb3bcc699acccdc659c7de18821cdb3" [label="/bin/sh -c curl -o wordpress.tar.gz -sSL https://wordpress.org/wordpress-${WORDPRESS_UPSTREAM_VERSION}.tar.gz   && echo \"$WORDPRESS_SHA1 *wordpress.tar.gz\" | sha1sum -c -   && tar -xzf wordpress.tar.gz -C /usr/src/   && rm wordpress.tar.gz   && mkdir /usr/src/wordpress/wp-content/uploads   && chown -R www-data:www-data /usr/src/wordpress" shape="box"];
  "sha256:6fcafb55899b79b7a176d31f62651e4e7ba998173264556176519c417125136d" [label="sha256:6fcafb55899b79b7a176d31f62651e4e7ba998173264556176519c417125136d" shape="plaintext"];
  "sha256:068c0645aa89360860bc9b66c4e99703114b43d373ede76de92208c78db68725" -> "sha256:dd2d3f4ceabf3b30964953d2e63d0d8d3fb3bcc699acccdc659c7de18821cdb3" [label=""];
  "sha256:dd2d3f4ceabf3b30964953d2e63d0d8d3fb3bcc699acccdc659c7de18821cdb3" -> "sha256:6fcafb55899b79b7a176d31f62651e4e7ba998173264556176519c417125136d" [label=""];
}

