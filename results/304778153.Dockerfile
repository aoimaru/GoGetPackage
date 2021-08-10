[app/sources/304778153.Dockerfile]
digraph {
  "sha256:0ed785d071216df7e6c4c6e0643889894c6ef7ec07da82381791576f7dd5e212" [label="docker-image://docker.io/library/nginx@sha256:8f335768880da6baf72b70c701002b45f4932acae8d574dedfddaf967fc3ac90" shape="ellipse"];
  "sha256:7b87d231bfd41a98fc6aa38294f1c4e7c9ce5c8d989cb0b3acf2d1a68d2dbd31" [label="/bin/sh -c rm -f /etc/nginx/conf.d/*   && mkdir -p /run/php /run/hhvm   && apt-get update && apt-get upgrade -y && apt-get install -my     supervisor     curl     wget     php-curl     php-fpm     php-gd     php-memcached     php-mysql     php-mcrypt     php-sqlite3     php-xdebug     php-apcu" shape="box"];
  "sha256:806cb3a64f1fdf9213622535540c29f09f2857d54a62437c1bbbe9fa88ad28a8" [label="/bin/sh -c echo \"deb http://deb.debian.org/debian sid main\" >> /etc/apt/sources.list     && apt-get update && apt-get install -y hhvm" shape="box"];
  "sha256:be76029bd4ecc4570f2d4e4776c7423e66e5cb295208bf08d74f0f5e74acc0d6" [label="/bin/sh -c sed -i \"s/user = www-data/user = root/\" /etc/php/7.0/fpm/pool.d/www.conf     && sed -i \"s/group = www-data/group = root/\" /etc/php/7.0/fpm/pool.d/www.conf     && sed -i '/^;clear_env = no/s/^;//' /etc/php/7.0/fpm/pool.d/www.conf     && sed -i '/^;ping\\.path/s/^;//' /etc/php/7.0/fpm/pool.d/www.conf     && sed -i '/^;pm\\.status_path/s/^;//' /etc/php/7.0/fpm/pool.d/www.conf     && sed -i '/.*xdebug.so$/s/^/;/' /etc/php/7.0/mods-available/xdebug.ini" shape="box"];
  "sha256:053a1be0f4203404dfd9b1b74c534055e9bed1f04682aa0953956b0944a508b8" [label="local://context" shape="ellipse"];
  "sha256:3b0ed7240a4795caa5dc1f4af54b33b9e0a83fc8a54930923fd3ba2c9d450f1a" [label="copy{src=/conf/nginx.conf, dest=/etc/nginx/}" shape="note"];
  "sha256:09e4d0e88ca21b342ffa0e25817ab37996d0910a85cbdc54350628319b0a3703" [label="copy{src=/conf/supervisord.conf, dest=/etc/supervisor/conf.d/}" shape="note"];
  "sha256:674cd49855703357d894555eb567b3aff71bb874167b569616afcf1be7b3d2f5" [label="copy{src=/conf/php.ini, dest=/etc/php/7.0/fpm/conf.d/40-custom.ini}" shape="note"];
  "sha256:ebf0db949a07bb00d5278ae8d55865eafe1307df506a97643efc6234ff98f7df" [label="sha256:ebf0db949a07bb00d5278ae8d55865eafe1307df506a97643efc6234ff98f7df" shape="plaintext"];
  "sha256:0ed785d071216df7e6c4c6e0643889894c6ef7ec07da82381791576f7dd5e212" -> "sha256:7b87d231bfd41a98fc6aa38294f1c4e7c9ce5c8d989cb0b3acf2d1a68d2dbd31" [label=""];
  "sha256:7b87d231bfd41a98fc6aa38294f1c4e7c9ce5c8d989cb0b3acf2d1a68d2dbd31" -> "sha256:806cb3a64f1fdf9213622535540c29f09f2857d54a62437c1bbbe9fa88ad28a8" [label=""];
  "sha256:806cb3a64f1fdf9213622535540c29f09f2857d54a62437c1bbbe9fa88ad28a8" -> "sha256:be76029bd4ecc4570f2d4e4776c7423e66e5cb295208bf08d74f0f5e74acc0d6" [label=""];
  "sha256:be76029bd4ecc4570f2d4e4776c7423e66e5cb295208bf08d74f0f5e74acc0d6" -> "sha256:3b0ed7240a4795caa5dc1f4af54b33b9e0a83fc8a54930923fd3ba2c9d450f1a" [label=""];
  "sha256:053a1be0f4203404dfd9b1b74c534055e9bed1f04682aa0953956b0944a508b8" -> "sha256:3b0ed7240a4795caa5dc1f4af54b33b9e0a83fc8a54930923fd3ba2c9d450f1a" [label=""];
  "sha256:3b0ed7240a4795caa5dc1f4af54b33b9e0a83fc8a54930923fd3ba2c9d450f1a" -> "sha256:09e4d0e88ca21b342ffa0e25817ab37996d0910a85cbdc54350628319b0a3703" [label=""];
  "sha256:053a1be0f4203404dfd9b1b74c534055e9bed1f04682aa0953956b0944a508b8" -> "sha256:09e4d0e88ca21b342ffa0e25817ab37996d0910a85cbdc54350628319b0a3703" [label=""];
  "sha256:09e4d0e88ca21b342ffa0e25817ab37996d0910a85cbdc54350628319b0a3703" -> "sha256:674cd49855703357d894555eb567b3aff71bb874167b569616afcf1be7b3d2f5" [label=""];
  "sha256:053a1be0f4203404dfd9b1b74c534055e9bed1f04682aa0953956b0944a508b8" -> "sha256:674cd49855703357d894555eb567b3aff71bb874167b569616afcf1be7b3d2f5" [label=""];
  "sha256:674cd49855703357d894555eb567b3aff71bb874167b569616afcf1be7b3d2f5" -> "sha256:ebf0db949a07bb00d5278ae8d55865eafe1307df506a97643efc6234ff98f7df" [label=""];
}

