[app/sources/211162875.Dockerfile]
digraph {
  "sha256:ae1af420e84ac9033310bca2471952b49c2bddcc9c7b34ddc37a510a1bc640c6" [label="local://context" shape="ellipse"];
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" [label="docker-image://docker.io/library/fedora:25" shape="ellipse"];
  "sha256:749b123dcca187fd9b8c62c80ab025b3782b5eb0b2519870fadbbcd8b5d4c690" [label="/bin/sh -c dnf install --setopt=deltarpm=false -y net-tools procps nss_wrapper gettext nginx" shape="box"];
  "sha256:0f89c2d792037a620817f84b3f31572d3c7f6a9cfc1f437205de1acc3bed8695" [label="/bin/sh -c sed -i -r s#^.*listen.*\\ 80.*##g /etc/nginx/nginx.conf &&     sed -i -r s#'^.*listen.*80.*default_server.*'##g /etc/nginx/nginx.conf &&     sed -i -r s#^user.*##g /etc/nginx/nginx.conf &&     sed -i -r s#'^.*types_hash_max_size.*'#'    types_hash_max_size 4096;'#g /etc/nginx/nginx.conf" shape="box"];
  "sha256:85a06e7832f40afea5062717a5c0d374c192603165a85fb0633be85efc52632d" [label="copy{src=/conf/sarjitsu_nginx.conf.example, dest=/etc/nginx/conf.d/sarjitsu_nginx.conf}" shape="note"];
  "sha256:e1ba88b888bdfe1bcccbf10bc7c0eb1f42e1bff17c01d69343308c357ef75014" [label="/bin/sh -c sed -i -e \"s/%%SERVERENDPOINT%%/$SERVERENDPOINT/g\" /etc/nginx/conf.d/sarjitsu_nginx.conf" shape="box"];
  "sha256:0cf8a1d35706c9c2cef1f85db590dfe2895edc2e5d5265c8b0ece9511cf709ac" [label="copy{src=/conf/passwd.template, dest=/passwd.template}" shape="note"];
  "sha256:67619c7319194ae72d5d66b04addf5e68729a28d0068d061436acac1ec96ceaa" [label="/bin/sh -c touch /var/run/nginx.pid" shape="box"];
  "sha256:39da4b817f393a250d442e4281429536046a562af3a52808ac554c3812fe6cf2" [label="/bin/sh -c chgrp -R 0 /var/cache/nginx /etc/nginx /var/run/nginx.pid /var/log/nginx/ /var/lib/nginx/   && chmod -R g+rwX /var/cache/nginx /etc/nginx /var/run/nginx.pid /var/log/nginx/ /var/lib/nginx/   && chown -R nginx:root /var/cache/nginx /etc/nginx/ /var/run/nginx.pid /var/log/nginx/ /var/lib/nginx/" shape="box"];
  "sha256:6c8782b2254e8e4e3e047840fc1365274b01136d8ab65d7d24d45491ac4270a5" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:c3008d390b119c7a5c88c43cadede3bc0a5f66a4b5d2c0573beb61de75c968cd" [label="sha256:c3008d390b119c7a5c88c43cadede3bc0a5f66a4b5d2c0573beb61de75c968cd" shape="plaintext"];
  "sha256:36aea01cfe65e9eb29a37d74b45d24bc65ae2bd028a137fcf49f6de9fc970545" -> "sha256:749b123dcca187fd9b8c62c80ab025b3782b5eb0b2519870fadbbcd8b5d4c690" [label=""];
  "sha256:749b123dcca187fd9b8c62c80ab025b3782b5eb0b2519870fadbbcd8b5d4c690" -> "sha256:0f89c2d792037a620817f84b3f31572d3c7f6a9cfc1f437205de1acc3bed8695" [label=""];
  "sha256:0f89c2d792037a620817f84b3f31572d3c7f6a9cfc1f437205de1acc3bed8695" -> "sha256:85a06e7832f40afea5062717a5c0d374c192603165a85fb0633be85efc52632d" [label=""];
  "sha256:ae1af420e84ac9033310bca2471952b49c2bddcc9c7b34ddc37a510a1bc640c6" -> "sha256:85a06e7832f40afea5062717a5c0d374c192603165a85fb0633be85efc52632d" [label=""];
  "sha256:85a06e7832f40afea5062717a5c0d374c192603165a85fb0633be85efc52632d" -> "sha256:e1ba88b888bdfe1bcccbf10bc7c0eb1f42e1bff17c01d69343308c357ef75014" [label=""];
  "sha256:e1ba88b888bdfe1bcccbf10bc7c0eb1f42e1bff17c01d69343308c357ef75014" -> "sha256:0cf8a1d35706c9c2cef1f85db590dfe2895edc2e5d5265c8b0ece9511cf709ac" [label=""];
  "sha256:ae1af420e84ac9033310bca2471952b49c2bddcc9c7b34ddc37a510a1bc640c6" -> "sha256:0cf8a1d35706c9c2cef1f85db590dfe2895edc2e5d5265c8b0ece9511cf709ac" [label=""];
  "sha256:0cf8a1d35706c9c2cef1f85db590dfe2895edc2e5d5265c8b0ece9511cf709ac" -> "sha256:67619c7319194ae72d5d66b04addf5e68729a28d0068d061436acac1ec96ceaa" [label=""];
  "sha256:67619c7319194ae72d5d66b04addf5e68729a28d0068d061436acac1ec96ceaa" -> "sha256:39da4b817f393a250d442e4281429536046a562af3a52808ac554c3812fe6cf2" [label=""];
  "sha256:39da4b817f393a250d442e4281429536046a562af3a52808ac554c3812fe6cf2" -> "sha256:6c8782b2254e8e4e3e047840fc1365274b01136d8ab65d7d24d45491ac4270a5" [label=""];
  "sha256:ae1af420e84ac9033310bca2471952b49c2bddcc9c7b34ddc37a510a1bc640c6" -> "sha256:6c8782b2254e8e4e3e047840fc1365274b01136d8ab65d7d24d45491ac4270a5" [label=""];
  "sha256:6c8782b2254e8e4e3e047840fc1365274b01136d8ab65d7d24d45491ac4270a5" -> "sha256:c3008d390b119c7a5c88c43cadede3bc0a5f66a4b5d2c0573beb61de75c968cd" [label=""];
}

