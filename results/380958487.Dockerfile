[app/sources/380958487.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:60b60ed08779783ab9282f612577df514fba82767a2d18bb3e134c3bbb954419" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt update && apt upgrade -yq && apt install -yq \t--no-install-recommends \tca-certificates \tzip \tgit \tnginx \tphp-fpm \tphp-gd \tphp-xml \tlibgd-dev \tsupervisor \texiftran \t&& git clone https://github.com/thibaud-rohmer/PhotoShow.git /var/www/PhotoShow \t&& apt remove -yq        \tca-certificates        \tgit     && apt autoremove -yq" shape="box"];
  "sha256:565dff0a3344fa4f95c64c46246129458bee6f94a2339acc7a213f60d96a3431" [label="/bin/sh -c mkdir -p /opt/PhotoShow/Photos /opt/PhotoShow/generated && chown -R www-data:www-data /opt/PhotoShow/Photos /opt/PhotoShow/generated" shape="box"];
  "sha256:0316254609c84046ced67eb8d95030e8685d25a8c22379acc69a6dfd02b0374b" [label="/bin/sh -c sed -i -e 's/$config->photos_dir.\\+/$config->photos_dir = \"\\/opt\\/PhotoShow\\/Photos\";/' /var/www/PhotoShow/config.php" shape="box"];
  "sha256:94d0ef64a4f8d972e13b4bef2bd2ff660c78f08ff07afd2a3ff687b7a3613da7" [label="/bin/sh -c sed -i -e 's/$config->ps_generated.\\+/$config->ps_generated = \"\\/opt\\/PhotoShow\\/generated\";/' /var/www/PhotoShow/config.php" shape="box"];
  "sha256:7384a0c0274e8b6da39c43aecf7a15a4a89e344cfe272bac40738c3b98e1a1ec" [label="/bin/sh -c rm -f /etc/nginx/sites-enabled/default && echo \"daemon off;\" >> /etc/nginx/nginx.conf && mkdir -p /var/run/php" shape="box"];
  "sha256:7c2bd159ed38b8d39b638720cc5dc41bcfc554c3defb00da594ebbd480e6f464" [label="local://context" shape="ellipse"];
  "sha256:021374111109d7076de50e4b67c9776660144303e2293962205c445a97c4ba88" [label="copy{src=/nginx.conf, dest=/etc/nginx/conf.d/photoshow.conf}" shape="note"];
  "sha256:0e9cf55eaf6bad509bee3a17ad01665de59f6387f1ba9b1b50d8b2c1eb5aef34" [label="/bin/sh -c sed -i -e 's/^.\\+daemonize.\\+$/daemonize = no/' /etc/php/7.0/fpm/php-fpm.conf" shape="box"];
  "sha256:b06538773d71d753d80160e6a56daa97d5d2c560122daedd0643b0dd4bb4db50" [label="copy{src=/fpm.conf, dest=/etc/php/7.0/fpm/pool.d/photoshow.conf}" shape="note"];
  "sha256:964be76945e39c19a582a5cc949c9cc7d43f137062d6fe5ad5265ca74eef76a8" [label="/bin/sh -c sed -i -e 's/^\\(\\[supervisord\\]\\)$/\\1\\nnodaemon=true/' /etc/supervisor/supervisord.conf" shape="box"];
  "sha256:1ccdc6770818691cbe8f233dc5daef96c487b43b80a98effd4818e960be8482e" [label="copy{src=/supervisor.conf, dest=/etc/supervisor/conf.d/photoshow.conf}" shape="note"];
  "sha256:d01a7a9c4c527002370b553ce3b7bc5bde3c9a7e77fc1d6e8dbe377c77f9b0cc" [label="sha256:d01a7a9c4c527002370b553ce3b7bc5bde3c9a7e77fc1d6e8dbe377c77f9b0cc" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:60b60ed08779783ab9282f612577df514fba82767a2d18bb3e134c3bbb954419" [label=""];
  "sha256:60b60ed08779783ab9282f612577df514fba82767a2d18bb3e134c3bbb954419" -> "sha256:565dff0a3344fa4f95c64c46246129458bee6f94a2339acc7a213f60d96a3431" [label=""];
  "sha256:565dff0a3344fa4f95c64c46246129458bee6f94a2339acc7a213f60d96a3431" -> "sha256:0316254609c84046ced67eb8d95030e8685d25a8c22379acc69a6dfd02b0374b" [label=""];
  "sha256:0316254609c84046ced67eb8d95030e8685d25a8c22379acc69a6dfd02b0374b" -> "sha256:94d0ef64a4f8d972e13b4bef2bd2ff660c78f08ff07afd2a3ff687b7a3613da7" [label=""];
  "sha256:94d0ef64a4f8d972e13b4bef2bd2ff660c78f08ff07afd2a3ff687b7a3613da7" -> "sha256:7384a0c0274e8b6da39c43aecf7a15a4a89e344cfe272bac40738c3b98e1a1ec" [label=""];
  "sha256:7384a0c0274e8b6da39c43aecf7a15a4a89e344cfe272bac40738c3b98e1a1ec" -> "sha256:021374111109d7076de50e4b67c9776660144303e2293962205c445a97c4ba88" [label=""];
  "sha256:7c2bd159ed38b8d39b638720cc5dc41bcfc554c3defb00da594ebbd480e6f464" -> "sha256:021374111109d7076de50e4b67c9776660144303e2293962205c445a97c4ba88" [label=""];
  "sha256:021374111109d7076de50e4b67c9776660144303e2293962205c445a97c4ba88" -> "sha256:0e9cf55eaf6bad509bee3a17ad01665de59f6387f1ba9b1b50d8b2c1eb5aef34" [label=""];
  "sha256:0e9cf55eaf6bad509bee3a17ad01665de59f6387f1ba9b1b50d8b2c1eb5aef34" -> "sha256:b06538773d71d753d80160e6a56daa97d5d2c560122daedd0643b0dd4bb4db50" [label=""];
  "sha256:7c2bd159ed38b8d39b638720cc5dc41bcfc554c3defb00da594ebbd480e6f464" -> "sha256:b06538773d71d753d80160e6a56daa97d5d2c560122daedd0643b0dd4bb4db50" [label=""];
  "sha256:b06538773d71d753d80160e6a56daa97d5d2c560122daedd0643b0dd4bb4db50" -> "sha256:964be76945e39c19a582a5cc949c9cc7d43f137062d6fe5ad5265ca74eef76a8" [label=""];
  "sha256:964be76945e39c19a582a5cc949c9cc7d43f137062d6fe5ad5265ca74eef76a8" -> "sha256:1ccdc6770818691cbe8f233dc5daef96c487b43b80a98effd4818e960be8482e" [label=""];
  "sha256:7c2bd159ed38b8d39b638720cc5dc41bcfc554c3defb00da594ebbd480e6f464" -> "sha256:1ccdc6770818691cbe8f233dc5daef96c487b43b80a98effd4818e960be8482e" [label=""];
  "sha256:1ccdc6770818691cbe8f233dc5daef96c487b43b80a98effd4818e960be8482e" -> "sha256:d01a7a9c4c527002370b553ce3b7bc5bde3c9a7e77fc1d6e8dbe377c77f9b0cc" [label=""];
}

