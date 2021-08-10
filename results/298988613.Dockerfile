[app/sources/298988613.Dockerfile]
digraph {
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" [label="docker-image://docker.io/library/python:3.6-alpine" shape="ellipse"];
  "sha256:b1b9311fc177df3e3dde5eb61ea856a4935e90473cbc8eb572b6ddbaba0d54bc" [label="local://context" shape="ellipse"];
  "sha256:ceeb3c784c5d893d8549d0fb958778fa964500841d5d351b89841b4dd18e2390" [label="copy{src=/mailman-web, dest=/opt/mailman-web}" shape="note"];
  "sha256:5ab17a74db7cfa3afb408752881936d13ac71cdc71b73a820fc77204ad671b00" [label="copy{src=/docker-entrypoint.sh, dest=/usr/local/bin/}" shape="note"];
  "sha256:92f675b977a935960e373eac1d42e7eb34212e91d9f54e683479f48d9ba65583" [label="/bin/sh -c set -ex \t&& apk add --no-cache --virtual .build-deps gcc libc-dev linux-headers \t   \tpostgresql-dev mariadb-dev libffi-dev \t&& apk add --no-cache --virtual .mailman-rundeps bash libffi \t   postgresql-client mysql-client py-mysqldb curl mailcap \t&& pip install -U Django==2.1.5 pip \t&& pip install postorius==1.2.4 \t\tuwsgi \t\tpsycopg2 \t\tdj-database-url \t\tmysqlclient \t\ttyping \t&& apk del .build-deps \t&& addgroup -S mailman \t&& adduser -S -G mailman mailman \t&& chown -R mailman /opt/mailman-web/ \t&& chmod u+x /opt/mailman-web/manage.py" shape="box"];
  "sha256:2d34b9c00db5cb7371c72148fb9ff25ce5139476dd605818cf73b067321617d6" [label="mkdir{path=/opt/mailman-web}" shape="note"];
  "sha256:128d1b012a680f2076c5e27f90867b9513c94ea296d8ec186cd54ec18dea0d96" [label="sha256:128d1b012a680f2076c5e27f90867b9513c94ea296d8ec186cd54ec18dea0d96" shape="plaintext"];
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" -> "sha256:ceeb3c784c5d893d8549d0fb958778fa964500841d5d351b89841b4dd18e2390" [label=""];
  "sha256:b1b9311fc177df3e3dde5eb61ea856a4935e90473cbc8eb572b6ddbaba0d54bc" -> "sha256:ceeb3c784c5d893d8549d0fb958778fa964500841d5d351b89841b4dd18e2390" [label=""];
  "sha256:ceeb3c784c5d893d8549d0fb958778fa964500841d5d351b89841b4dd18e2390" -> "sha256:5ab17a74db7cfa3afb408752881936d13ac71cdc71b73a820fc77204ad671b00" [label=""];
  "sha256:b1b9311fc177df3e3dde5eb61ea856a4935e90473cbc8eb572b6ddbaba0d54bc" -> "sha256:5ab17a74db7cfa3afb408752881936d13ac71cdc71b73a820fc77204ad671b00" [label=""];
  "sha256:5ab17a74db7cfa3afb408752881936d13ac71cdc71b73a820fc77204ad671b00" -> "sha256:92f675b977a935960e373eac1d42e7eb34212e91d9f54e683479f48d9ba65583" [label=""];
  "sha256:92f675b977a935960e373eac1d42e7eb34212e91d9f54e683479f48d9ba65583" -> "sha256:2d34b9c00db5cb7371c72148fb9ff25ce5139476dd605818cf73b067321617d6" [label=""];
  "sha256:2d34b9c00db5cb7371c72148fb9ff25ce5139476dd605818cf73b067321617d6" -> "sha256:128d1b012a680f2076c5e27f90867b9513c94ea296d8ec186cd54ec18dea0d96" [label=""];
}

