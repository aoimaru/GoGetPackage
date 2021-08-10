[app/sources/202373889.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:76ad3621a3b8962689b01135ea58afea241dd640a59ee1966e18bd8395aa4cf8" [label="/bin/sh -c apt-get -qq update > /dev/null && DEBIAN_FRONTEND=noninteractive apt-get -qq -y --no-install-recommends install     supervisor     ca-certificates     nginx     wget     apt-transport-https > /dev/null &&    wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg &&    echo \"deb https://packages.sury.org/php/ stretch main\" > /etc/apt/sources.list.d/php.list &&    apt-get update -qq > /dev/null &&    DEBIAN_FRONTEND=noninteractive apt-get -qq -y --no-install-recommends install     unzip     php7.1     php7.1-cli     php7.1-intl     php7.1-fpm     php7.1-xml     php7.1-mbstring     php7.1-zip > /dev/null &&    apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* &&    php -r \"readfile('https://getcomposer.org/installer');\" | php --              --install-dir=/usr/local/bin              --filename=composer &&    sed -i -e \"s/;cgi.fix_pathinfo=1/cgi.fix_pathinfo=0/g\" /etc/php/7.1/fpm/php.ini &&    echo \"daemon off;\" >> /etc/nginx/nginx.conf &&    mkdir -p /run/php" shape="box"];
  "sha256:0777634e9fe9bdb970c50d2f1c5dfbd256684efffe3b4cbf49e1edb70f03ac62" [label="local://context" shape="ellipse"];
  "sha256:1a6e4ff5425eff3d762d90bbb2d26716958e81b6564878cb6a1ca4ed12ac2b31" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:c576b081221304278c77d6041fa599bd18246f38175d2ef5547321543d3daf80" [label="/bin/sh -c mkfifo $LOG_STREAM && chmod 777 $LOG_STREAM" shape="box"];
  "sha256:b23608a7fe29b02441d5eea953c49b7cfddd30c1e08f63583d67d054a9c25e9c" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:17c19a25d26977daa03bb23b72bfc9579644daa5de131cc70325d7c1931bfdfd" [label="sha256:17c19a25d26977daa03bb23b72bfc9579644daa5de131cc70325d7c1931bfdfd" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:76ad3621a3b8962689b01135ea58afea241dd640a59ee1966e18bd8395aa4cf8" [label=""];
  "sha256:76ad3621a3b8962689b01135ea58afea241dd640a59ee1966e18bd8395aa4cf8" -> "sha256:1a6e4ff5425eff3d762d90bbb2d26716958e81b6564878cb6a1ca4ed12ac2b31" [label=""];
  "sha256:0777634e9fe9bdb970c50d2f1c5dfbd256684efffe3b4cbf49e1edb70f03ac62" -> "sha256:1a6e4ff5425eff3d762d90bbb2d26716958e81b6564878cb6a1ca4ed12ac2b31" [label=""];
  "sha256:1a6e4ff5425eff3d762d90bbb2d26716958e81b6564878cb6a1ca4ed12ac2b31" -> "sha256:c576b081221304278c77d6041fa599bd18246f38175d2ef5547321543d3daf80" [label=""];
  "sha256:c576b081221304278c77d6041fa599bd18246f38175d2ef5547321543d3daf80" -> "sha256:b23608a7fe29b02441d5eea953c49b7cfddd30c1e08f63583d67d054a9c25e9c" [label=""];
  "sha256:b23608a7fe29b02441d5eea953c49b7cfddd30c1e08f63583d67d054a9c25e9c" -> "sha256:17c19a25d26977daa03bb23b72bfc9579644daa5de131cc70325d7c1931bfdfd" [label=""];
}

