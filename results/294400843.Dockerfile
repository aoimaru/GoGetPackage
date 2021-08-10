[app/sources/294400843.Dockerfile]
digraph {
  "sha256:40245049f641431384bd5600333b7091a6b77439308d532c2f9a51bba774f161" [label="docker-image://docker.io/formapro/nginx-php-fpm:7.3-latest" shape="ellipse"];
  "sha256:d142ced357cd0a0ebd850118d60c15d9ef65ce66b122644019ed1d491220653b" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends --no-install-suggests     php-mongodb php-curl php-intl php-soap php-xml php-mcrypt php-bcmath     php-mysql php-amqp php-gearman php-mbstring php-ldap php-zip php-gd php-xdebug php-imagick &&     rm -f /etc/php/7.3/cli/conf.d/*xdebug.ini &&     rm -f /etc/php/7.3/fpm/conf.d/*xdebug.ini &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c53bb69161d2d42c9a105f53f220dd163ad1a8537c6868fe427ab2b157bbe923" [label="sha256:c53bb69161d2d42c9a105f53f220dd163ad1a8537c6868fe427ab2b157bbe923" shape="plaintext"];
  "sha256:40245049f641431384bd5600333b7091a6b77439308d532c2f9a51bba774f161" -> "sha256:d142ced357cd0a0ebd850118d60c15d9ef65ce66b122644019ed1d491220653b" [label=""];
  "sha256:d142ced357cd0a0ebd850118d60c15d9ef65ce66b122644019ed1d491220653b" -> "sha256:c53bb69161d2d42c9a105f53f220dd163ad1a8537c6868fe427ab2b157bbe923" [label=""];
}

