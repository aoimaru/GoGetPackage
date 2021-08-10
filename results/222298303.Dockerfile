[app/sources/222298303.Dockerfile]
digraph {
  "sha256:fbc1865a0c8782a4e330e68c092b66a76ee392f59ac88917f14e9e8cdebf785d" [label="docker-image://docker.io/library/php:7.0-apache" shape="ellipse"];
  "sha256:c6575603acc2dceef095145ce3d51aaa2f853e04f86bcf1d0bbb226f6ef4a356" [label="/bin/sh -c apt-get update  && apt-get install -y git zlib1g-dev  && docker-php-ext-install zip  && a2enmod rewrite  && sed -i 's!/var/www/html!/var/www/public!g' /etc/apache2/apache2.conf  && mv /var/www/html /var/www/public  && curl -sS https://getcomposer.org/installer   | php -- --install-dir=/usr/local/bin --filename=composer" shape="box"];
  "sha256:1640868904fd7bbdf4baa8a00d6b4b273ec3e9a717fd48126f4dd216f6f316b6" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:387ca0f99c202fe0818741f9b9080888b3b1a208f2834b1dd50b80be0697d98c" [label="sha256:387ca0f99c202fe0818741f9b9080888b3b1a208f2834b1dd50b80be0697d98c" shape="plaintext"];
  "sha256:fbc1865a0c8782a4e330e68c092b66a76ee392f59ac88917f14e9e8cdebf785d" -> "sha256:c6575603acc2dceef095145ce3d51aaa2f853e04f86bcf1d0bbb226f6ef4a356" [label=""];
  "sha256:c6575603acc2dceef095145ce3d51aaa2f853e04f86bcf1d0bbb226f6ef4a356" -> "sha256:1640868904fd7bbdf4baa8a00d6b4b273ec3e9a717fd48126f4dd216f6f316b6" [label=""];
  "sha256:1640868904fd7bbdf4baa8a00d6b4b273ec3e9a717fd48126f4dd216f6f316b6" -> "sha256:387ca0f99c202fe0818741f9b9080888b3b1a208f2834b1dd50b80be0697d98c" [label=""];
}

