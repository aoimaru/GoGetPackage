[app/sources/183521498.Dockerfile]
digraph {
  "sha256:b16232c8f9fdc40e7e18056e6e9b7409b8f0abea134854120b1b4660ec2ef380" [label="docker-image://docker.io/library/wordpress:4-php5.6" shape="ellipse"];
  "sha256:955380ee1c39dfbea91904a8131b7d7b30ddfdcdc440c95eb4728e8fb0e30108" [label="/bin/sh -c docker-php-ext-install mysql" shape="box"];
  "sha256:c559437abdf3ee7d0e6a6cd49cdfe1dd167affda40eff39ad3053f369c691024" [label="/bin/sh -c curl -o wordpress.tar.gz -sSL https://wordpress.org/wordpress-${WORDPRESS_UPSTREAM_VERSION}.tar.gz   && echo \"$WORDPRESS_SHA1 *wordpress.tar.gz\" | sha1sum -c -   && tar -xzf wordpress.tar.gz -C /usr/src/   && rm wordpress.tar.gz   && mkdir /usr/src/wordpress/wp-content/uploads   && chown -R www-data:www-data /usr/src/wordpress" shape="box"];
  "sha256:db00d26f7db45a5ab63b9962c1653b71430d8c07bc17864e0eefa418cc45ed5e" [label="sha256:db00d26f7db45a5ab63b9962c1653b71430d8c07bc17864e0eefa418cc45ed5e" shape="plaintext"];
  "sha256:b16232c8f9fdc40e7e18056e6e9b7409b8f0abea134854120b1b4660ec2ef380" -> "sha256:955380ee1c39dfbea91904a8131b7d7b30ddfdcdc440c95eb4728e8fb0e30108" [label=""];
  "sha256:955380ee1c39dfbea91904a8131b7d7b30ddfdcdc440c95eb4728e8fb0e30108" -> "sha256:c559437abdf3ee7d0e6a6cd49cdfe1dd167affda40eff39ad3053f369c691024" [label=""];
  "sha256:c559437abdf3ee7d0e6a6cd49cdfe1dd167affda40eff39ad3053f369c691024" -> "sha256:db00d26f7db45a5ab63b9962c1653b71430d8c07bc17864e0eefa418cc45ed5e" [label=""];
}

