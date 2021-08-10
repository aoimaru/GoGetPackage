[app/sources/463411909.Dockerfile]
digraph {
  "sha256:fce55534ca742df9fffde9dada97bf2cf1258dccb9cfd6b87556fc32653c6a56" [label="docker-image://1234567890.dkr.ecr.ap-northeast-1.amazonaws.com/application-php-fpm-base:latest" shape="ellipse"];
  "sha256:f52b7e7d0dad291dcec477d21408119b6a37c3eb5a006683c6f696004ae76663" [label="/bin/sh -c curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer" shape="box"];
  "sha256:760490364e980c3f1d5f5975c57834fd0a3c98cdc1c37727ded162fe344e3468" [label="local://context" shape="ellipse"];
  "sha256:08588c5bc3a8b5fb037cee59bd511bd2698047f96029823db1c18be3b9eb7464" [label="copy{src=/, dest=/var/www}" shape="note"];
  "sha256:76cf9a5ca3be7b7940751b7e790893b994120da7c2954f814e8ceeffbc2ad16c" [label="copy{src=/docker/php-fpm/production.env, dest=/var/www/.env}" shape="note"];
  "sha256:4a94ed4ed7f92f90a3a55f7f8ea567437b4a46acb476413ddcc60c905e07a1c6" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:98221e17afdee77386fee672e3db4da881a58cb68bee1e94614225c2f4913fd2" [label="/bin/sh -c chmod -R 777 /var/www/storage /var/www/bootstrap/cache" shape="box"];
  "sha256:09bfc066c12b6fce0a15ab24a15ad040edc5f3e7329e8350105442c217b4021e" [label="/bin/sh -c php /usr/local/bin/composer install --optimize-autoloader --no-dev" shape="box"];
  "sha256:0de83287098f07bbcdb4d0157152ed98b7fe56c32b52e140ca16acb14690396c" [label="/bin/sh -c php artisan config:cache &&     php artisan route:cache" shape="box"];
  "sha256:2580a8d7dc602ad7d52670f317332c0f4f1253b0aedfd3a1e8e1abe15d996244" [label="mkdir{path=/etc/supervisor/conf.d}" shape="note"];
  "sha256:4aec395a8e8adbe71eb7697109874d3e4595b3061b952ef71b80c97e934be6a8" [label="sha256:4aec395a8e8adbe71eb7697109874d3e4595b3061b952ef71b80c97e934be6a8" shape="plaintext"];
  "sha256:fce55534ca742df9fffde9dada97bf2cf1258dccb9cfd6b87556fc32653c6a56" -> "sha256:f52b7e7d0dad291dcec477d21408119b6a37c3eb5a006683c6f696004ae76663" [label=""];
  "sha256:f52b7e7d0dad291dcec477d21408119b6a37c3eb5a006683c6f696004ae76663" -> "sha256:08588c5bc3a8b5fb037cee59bd511bd2698047f96029823db1c18be3b9eb7464" [label=""];
  "sha256:760490364e980c3f1d5f5975c57834fd0a3c98cdc1c37727ded162fe344e3468" -> "sha256:08588c5bc3a8b5fb037cee59bd511bd2698047f96029823db1c18be3b9eb7464" [label=""];
  "sha256:08588c5bc3a8b5fb037cee59bd511bd2698047f96029823db1c18be3b9eb7464" -> "sha256:76cf9a5ca3be7b7940751b7e790893b994120da7c2954f814e8ceeffbc2ad16c" [label=""];
  "sha256:760490364e980c3f1d5f5975c57834fd0a3c98cdc1c37727ded162fe344e3468" -> "sha256:76cf9a5ca3be7b7940751b7e790893b994120da7c2954f814e8ceeffbc2ad16c" [label=""];
  "sha256:76cf9a5ca3be7b7940751b7e790893b994120da7c2954f814e8ceeffbc2ad16c" -> "sha256:4a94ed4ed7f92f90a3a55f7f8ea567437b4a46acb476413ddcc60c905e07a1c6" [label=""];
  "sha256:4a94ed4ed7f92f90a3a55f7f8ea567437b4a46acb476413ddcc60c905e07a1c6" -> "sha256:98221e17afdee77386fee672e3db4da881a58cb68bee1e94614225c2f4913fd2" [label=""];
  "sha256:98221e17afdee77386fee672e3db4da881a58cb68bee1e94614225c2f4913fd2" -> "sha256:09bfc066c12b6fce0a15ab24a15ad040edc5f3e7329e8350105442c217b4021e" [label=""];
  "sha256:09bfc066c12b6fce0a15ab24a15ad040edc5f3e7329e8350105442c217b4021e" -> "sha256:0de83287098f07bbcdb4d0157152ed98b7fe56c32b52e140ca16acb14690396c" [label=""];
  "sha256:0de83287098f07bbcdb4d0157152ed98b7fe56c32b52e140ca16acb14690396c" -> "sha256:2580a8d7dc602ad7d52670f317332c0f4f1253b0aedfd3a1e8e1abe15d996244" [label=""];
  "sha256:2580a8d7dc602ad7d52670f317332c0f4f1253b0aedfd3a1e8e1abe15d996244" -> "sha256:4aec395a8e8adbe71eb7697109874d3e4595b3061b952ef71b80c97e934be6a8" [label=""];
}

