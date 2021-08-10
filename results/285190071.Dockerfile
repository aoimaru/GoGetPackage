[app/sources/285190071.Dockerfile]
digraph {
  "sha256:1c1aeeece7a5efeedab4f970800945840532ea587f7807c8383f100bff1eeffc" [label="local://context" shape="ellipse"];
  "sha256:9894880239c1390a414ed7ff30650eb31aab081f1751152cd84bd6abf6ef2b92" [label="docker-image://docker.io/matrixdotorg/sytest:latest" shape="ellipse"];
  "sha256:64d2d4216d39d6f512897d7e2c5c48289ca5bbd67e1720d1f9ebf136cae25eed" [label="/bin/sh -c apt-get -qq install -y curl nginx dos2unix     && curl -O https://dl.google.com/go/go1.10.2.linux-amd64.tar.gz     && tar xvf go1.10.2.linux-amd64.tar.gz     && chown -R root:root ./go     && mv go /usr/local     && mkdir /go     && openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt -subj \"/C=US/ST=Denial/L=Springfield/O=Dis/CN=www.example.com\"     && openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048" shape="box"];
  "sha256:3fa58d3cbdd28c0a8d9b4650887acb43490705dc96b4e66ca8d1a122b0c7a10d" [label="copy{src=/docker/sytest/site.conf, dest=/etc/nginx/sites-available/default}" shape="note"];
  "sha256:3e1a72ae4069997347f9528e2d3e3b2d91c36d4f67dbc503661ead21bb30334c" [label="copy{src=/docker/sytest/run-tests.sh, dest=/test/run-tests.sh}" shape="note"];
  "sha256:88768e7cd3f0e62db228b5006704499de98a9a805dc2e412821dc179e74efb8b" [label="copy{src=/docker/sytest/media-repo.yaml, dest=/test/media-repo.yaml}" shape="note"];
  "sha256:89f2270ada444588f0d16a377fd86888045017400aee3e507950b9ab3314dceb" [label="copy{src=/docker/sytest/03ascii.patch, dest=/test/03ascii.patch}" shape="note"];
  "sha256:5de918561da7d3ba96bc9a73697fe3f9fc038ce44a9bc93a483a41b56edc843f" [label="/bin/sh -c dos2unix /test/run-tests.sh" shape="box"];
  "sha256:9ad55ae84d4a512bcecf747ea916bdbcbbc553fdb8850489a683e2a21e073de4" [label="sha256:9ad55ae84d4a512bcecf747ea916bdbcbbc553fdb8850489a683e2a21e073de4" shape="plaintext"];
  "sha256:9894880239c1390a414ed7ff30650eb31aab081f1751152cd84bd6abf6ef2b92" -> "sha256:64d2d4216d39d6f512897d7e2c5c48289ca5bbd67e1720d1f9ebf136cae25eed" [label=""];
  "sha256:64d2d4216d39d6f512897d7e2c5c48289ca5bbd67e1720d1f9ebf136cae25eed" -> "sha256:3fa58d3cbdd28c0a8d9b4650887acb43490705dc96b4e66ca8d1a122b0c7a10d" [label=""];
  "sha256:1c1aeeece7a5efeedab4f970800945840532ea587f7807c8383f100bff1eeffc" -> "sha256:3fa58d3cbdd28c0a8d9b4650887acb43490705dc96b4e66ca8d1a122b0c7a10d" [label=""];
  "sha256:3fa58d3cbdd28c0a8d9b4650887acb43490705dc96b4e66ca8d1a122b0c7a10d" -> "sha256:3e1a72ae4069997347f9528e2d3e3b2d91c36d4f67dbc503661ead21bb30334c" [label=""];
  "sha256:1c1aeeece7a5efeedab4f970800945840532ea587f7807c8383f100bff1eeffc" -> "sha256:3e1a72ae4069997347f9528e2d3e3b2d91c36d4f67dbc503661ead21bb30334c" [label=""];
  "sha256:3e1a72ae4069997347f9528e2d3e3b2d91c36d4f67dbc503661ead21bb30334c" -> "sha256:88768e7cd3f0e62db228b5006704499de98a9a805dc2e412821dc179e74efb8b" [label=""];
  "sha256:1c1aeeece7a5efeedab4f970800945840532ea587f7807c8383f100bff1eeffc" -> "sha256:88768e7cd3f0e62db228b5006704499de98a9a805dc2e412821dc179e74efb8b" [label=""];
  "sha256:88768e7cd3f0e62db228b5006704499de98a9a805dc2e412821dc179e74efb8b" -> "sha256:89f2270ada444588f0d16a377fd86888045017400aee3e507950b9ab3314dceb" [label=""];
  "sha256:1c1aeeece7a5efeedab4f970800945840532ea587f7807c8383f100bff1eeffc" -> "sha256:89f2270ada444588f0d16a377fd86888045017400aee3e507950b9ab3314dceb" [label=""];
  "sha256:89f2270ada444588f0d16a377fd86888045017400aee3e507950b9ab3314dceb" -> "sha256:5de918561da7d3ba96bc9a73697fe3f9fc038ce44a9bc93a483a41b56edc843f" [label=""];
  "sha256:5de918561da7d3ba96bc9a73697fe3f9fc038ce44a9bc93a483a41b56edc843f" -> "sha256:9ad55ae84d4a512bcecf747ea916bdbcbbc553fdb8850489a683e2a21e073de4" [label=""];
}

