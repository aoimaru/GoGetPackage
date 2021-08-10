[app/sources/221406423.Dockerfile]
digraph {
  "sha256:1b0af9420d4f4992c4d5ae76d9cc9b17b80c1b0d58757e12af25091f187b1c34" [label="docker-image://docker.io/nimmis/apache:latest" shape="ellipse"];
  "sha256:7a5d812f101201ae34090b53499a85a8030e9a3209abd1811ad879699e163cfc" [label="/bin/sh -c apt-get update && apt-get install -y php libapache2-mod-php  php-fpm php-cli php-mysqlnd php-pgsql php-sqlite3 php-redis php-apcu php-intl php-imagick php-mcrypt php-json php-gd php-curl && phpenmod mcrypt && rm -rf /var/lib/apt/lists/* && cd /tmp && curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer" shape="box"];
  "sha256:4657fbe776bb922d87432c9b0599155be3216f25266faa55461d84dba1c6f716" [label="sha256:4657fbe776bb922d87432c9b0599155be3216f25266faa55461d84dba1c6f716" shape="plaintext"];
  "sha256:1b0af9420d4f4992c4d5ae76d9cc9b17b80c1b0d58757e12af25091f187b1c34" -> "sha256:7a5d812f101201ae34090b53499a85a8030e9a3209abd1811ad879699e163cfc" [label=""];
  "sha256:7a5d812f101201ae34090b53499a85a8030e9a3209abd1811ad879699e163cfc" -> "sha256:4657fbe776bb922d87432c9b0599155be3216f25266faa55461d84dba1c6f716" [label=""];
}

