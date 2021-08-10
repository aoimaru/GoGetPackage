[app/sources/320100509.Dockerfile]
digraph {
  "sha256:9cefdd5f3fa03f71019162aa24693bbab3020435c99491033a3c3e7f9b0455ef" [label="local://context" shape="ellipse"];
  "sha256:5302843d2dbcdc70daa768ed854a92ace1acca51c6194779befcaf5558dd1367" [label="docker-image://docker.io/library/alpine:edge@sha256:2f77b6664f181b246244f9cd052155e74fb3f26d2a502edecd5fff0fc4bda388" shape="ellipse"];
  "sha256:61749667d523547b60cfe83698de4bdf1ae5a3561355d6ff0cc760293c805986" [label="/bin/sh -c echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories" shape="box"];
  "sha256:6a0f20d4ed08abe39b5925e05c1933b34ae352d12418084f8200878f70fadb4d" [label="/bin/sh -c apk update && \tapk add nginx curl supervisor \tphp7 \tphp7-fpm \tphp7-zip \tphp7-mbstring \tphp7-xml \tphp7-mysqli \tphp7-json \tphp7-phar \tphp7-dom \tphp7-xmlwriter \tphp7-tokenizer \tphp7-session \tphp7-mongodb \tphp7-pdo" shape="box"];
  "sha256:a90127168f1f33fb68a180daf4c1bc61d1a84551cfacca645862d62802db724f" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:d9b619d525b42bc232db64f99cbe0ef0ba22bebdce2a76d60f6f1509e25ac9f3" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/supervisord.conf}" shape="note"];
  "sha256:274c01369dc05a63ed2a5d9707169a8daf561f60c2453ce3dbed9beec2130007" [label="/bin/sh -c php -r \"copy('https://getcomposer.org/installer', 'composer-setup.php');\" && \tphp composer-setup.php && \tphp -r \"unlink('composer-setup.php');\" && \tmv composer.phar /usr/local/bin/composer" shape="box"];
  "sha256:507a68e6187475fa7ccd12571acf3f1bd9b05ba8fe0be606665b5cb04e3ff927" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:099f0778f1b785abec3b166850cf9d0cef3a0f26dc36bfe105da33ea98f7074e" [label="sha256:099f0778f1b785abec3b166850cf9d0cef3a0f26dc36bfe105da33ea98f7074e" shape="plaintext"];
  "sha256:5302843d2dbcdc70daa768ed854a92ace1acca51c6194779befcaf5558dd1367" -> "sha256:61749667d523547b60cfe83698de4bdf1ae5a3561355d6ff0cc760293c805986" [label=""];
  "sha256:61749667d523547b60cfe83698de4bdf1ae5a3561355d6ff0cc760293c805986" -> "sha256:6a0f20d4ed08abe39b5925e05c1933b34ae352d12418084f8200878f70fadb4d" [label=""];
  "sha256:6a0f20d4ed08abe39b5925e05c1933b34ae352d12418084f8200878f70fadb4d" -> "sha256:a90127168f1f33fb68a180daf4c1bc61d1a84551cfacca645862d62802db724f" [label=""];
  "sha256:9cefdd5f3fa03f71019162aa24693bbab3020435c99491033a3c3e7f9b0455ef" -> "sha256:a90127168f1f33fb68a180daf4c1bc61d1a84551cfacca645862d62802db724f" [label=""];
  "sha256:a90127168f1f33fb68a180daf4c1bc61d1a84551cfacca645862d62802db724f" -> "sha256:d9b619d525b42bc232db64f99cbe0ef0ba22bebdce2a76d60f6f1509e25ac9f3" [label=""];
  "sha256:9cefdd5f3fa03f71019162aa24693bbab3020435c99491033a3c3e7f9b0455ef" -> "sha256:d9b619d525b42bc232db64f99cbe0ef0ba22bebdce2a76d60f6f1509e25ac9f3" [label=""];
  "sha256:d9b619d525b42bc232db64f99cbe0ef0ba22bebdce2a76d60f6f1509e25ac9f3" -> "sha256:274c01369dc05a63ed2a5d9707169a8daf561f60c2453ce3dbed9beec2130007" [label=""];
  "sha256:274c01369dc05a63ed2a5d9707169a8daf561f60c2453ce3dbed9beec2130007" -> "sha256:507a68e6187475fa7ccd12571acf3f1bd9b05ba8fe0be606665b5cb04e3ff927" [label=""];
  "sha256:507a68e6187475fa7ccd12571acf3f1bd9b05ba8fe0be606665b5cb04e3ff927" -> "sha256:099f0778f1b785abec3b166850cf9d0cef3a0f26dc36bfe105da33ea98f7074e" [label=""];
}

