[app/sources/235654148.Dockerfile]
digraph {
  "sha256:5e3ffce172abe029e14398c960f76178160392adccdc24ec33a7ba0bde79cc90" [label="docker-image://docker.io/library/php:5.6-apache" shape="ellipse"];
  "sha256:0b2975ac357b812345967f82aa651a1990bbf8263fb31ebd517aded9fd3886c0" [label="/bin/sh -c set -ex     && docker-php-ext-install mysql     && curl -#SL https://vulhub.oss-cn-shanghai.aliyuncs.com/download/ecshop/ecshop-3.6.0.tar.gz         | tar zx -C ${DOWNLOAD_PATH}     && cp -r ${DOWNLOAD_PATH}/ecshop/* /var/www/html/     && cp -r ${DOWNLOAD_PATH}/appserver /var/www/     && chown www-data:www-data -R /var/www     && echo \"date.timezone = Asia/Shanghai\" > /usr/local/etc/php/conf.d/date.ini     && rm -rf ${DOWNLOAD_PATH}/*" shape="box"];
  "sha256:6e7b4a1103a17b63bde13b1ef052502b5da60006b8a61b7b5a5ab24076397ffe" [label="sha256:6e7b4a1103a17b63bde13b1ef052502b5da60006b8a61b7b5a5ab24076397ffe" shape="plaintext"];
  "sha256:5e3ffce172abe029e14398c960f76178160392adccdc24ec33a7ba0bde79cc90" -> "sha256:0b2975ac357b812345967f82aa651a1990bbf8263fb31ebd517aded9fd3886c0" [label=""];
  "sha256:0b2975ac357b812345967f82aa651a1990bbf8263fb31ebd517aded9fd3886c0" -> "sha256:6e7b4a1103a17b63bde13b1ef052502b5da60006b8a61b7b5a5ab24076397ffe" [label=""];
}

