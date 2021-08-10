[app/sources/373991227.Dockerfile]
digraph {
  "sha256:fbc1865a0c8782a4e330e68c092b66a76ee392f59ac88917f14e9e8cdebf785d" [label="docker-image://docker.io/library/php:7.0-apache" shape="ellipse"];
  "sha256:f707d9e42bc79564c82e14987b2a30d86946e41cdac911775b1d24016c9d2013" [label="/bin/sh -c a2enmod headers rewrite" shape="box"];
  "sha256:ae1a49a60564f14bbc127c28333c68b3c5d950f9de069c83c2c96fa33ed8dc0a" [label="/bin/sh -c sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf     && sed -ri -e 's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf" shape="box"];
  "sha256:85022683390edbaa4f5dbf018f1c677f8a2b6a23d3afaabdf1c53ff05fec9704" [label="sha256:85022683390edbaa4f5dbf018f1c677f8a2b6a23d3afaabdf1c53ff05fec9704" shape="plaintext"];
  "sha256:fbc1865a0c8782a4e330e68c092b66a76ee392f59ac88917f14e9e8cdebf785d" -> "sha256:f707d9e42bc79564c82e14987b2a30d86946e41cdac911775b1d24016c9d2013" [label=""];
  "sha256:f707d9e42bc79564c82e14987b2a30d86946e41cdac911775b1d24016c9d2013" -> "sha256:ae1a49a60564f14bbc127c28333c68b3c5d950f9de069c83c2c96fa33ed8dc0a" [label=""];
  "sha256:ae1a49a60564f14bbc127c28333c68b3c5d950f9de069c83c2c96fa33ed8dc0a" -> "sha256:85022683390edbaa4f5dbf018f1c677f8a2b6a23d3afaabdf1c53ff05fec9704" [label=""];
}

