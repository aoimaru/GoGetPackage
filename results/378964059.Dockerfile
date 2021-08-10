[app/sources/378964059.Dockerfile]
digraph {
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:e516a91bb43bade6b910868f5e00656e2fbd2c155dddec0f8f1796daff1fdcb0" [label="/bin/sh -c yum install -y http://dl.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm  && curl -L -o /etc/yum.repos.d/hop5.repo \"http://www.hop5.in/yum/el6/hop5.repo\"" shape="box"];
  "sha256:e61d68c001c93d1aa5bec642c8eae1c9180c02765a308ea10e2a4c1d3fb2a122" [label="/bin/sh -c yum install -y python-meld3 http://dl.fedoraproject.org/pub/epel/6/i386/supervisor-2.1-8.el6.noarch.rpm" shape="box"];
  "sha256:32e2aaacb949c02428613dee9ee68c132b2a4e8b1b3b49d7d2ba597876d7279e" [label="yum -y install nginx php php-mysql php-devel php-gd php-pecl-memcache php-pspell php-snmp php-xmlrpc php-xml hhvm" shape="box"];
  "sha256:a627a83dd4e396ee4f93939832fa2c46eca858167c0549f6b3b38159a814fc8d" [label="/bin/sh -c mkdir -p /var/www/html && chmod a+r /var/www/html && echo \"<?php phpinfo(); ?>\" > /var/www/html/index.php" shape="box"];
  "sha256:dee93873e737747e230ce6ff781cca6a4af6d393c3754800847d8873068f0f43" [label="local://context" shape="ellipse"];
  "sha256:3a2a7f7abf47ed2b7766b89a8b9210ff8575bc2b160c54827b60d888981dfb8c" [label="copy{src=/config.hdf, dest=/etc/hhvm/config.hdf}" shape="note"];
  "sha256:0d9e96268c6f3d8e2e43389b8a5cad8549afed26404d99f5b649ea6f56745a88" [label="/bin/sh -c service hhvm restart" shape="box"];
  "sha256:bd236c01ef8233661fd8136b3a3783e6a36d113cab38508943fa68a5420593ce" [label="copy{src=/nginx.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:193defbabc978ecd14bfdbb0c486cf158c0b5daf398a4a8616314ddabaf6d998" [label="copy{src=/supervisord.conf, dest=/etc/supervisord.conf}" shape="note"];
  "sha256:f45fff364faf25ed9e797c84848c25589359be0ba57f72f3ecb140c10f129616" [label="/bin/sh -c chkconfig supervisord on && chkconfig nginx on" shape="box"];
  "sha256:9eef594c6e306673989441b3408a393dae09f7dc274cf242fd575d3b0710ec54" [label="copy{src=/scripts/run.sh, dest=/run.sh}" shape="note"];
  "sha256:e79f4f7a0ce124cca179278f6f95c15d4ae5bb58bd6d82a9d7e698dd0a61e348" [label="/bin/sh -c chmod a+x /run.sh" shape="box"];
  "sha256:ba90e0f19b0221d9165bb3ec79ad86582466021b13d76c00b9d7d4358443de9f" [label="sha256:ba90e0f19b0221d9165bb3ec79ad86582466021b13d76c00b9d7d4358443de9f" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:e516a91bb43bade6b910868f5e00656e2fbd2c155dddec0f8f1796daff1fdcb0" [label=""];
  "sha256:e516a91bb43bade6b910868f5e00656e2fbd2c155dddec0f8f1796daff1fdcb0" -> "sha256:e61d68c001c93d1aa5bec642c8eae1c9180c02765a308ea10e2a4c1d3fb2a122" [label=""];
  "sha256:e61d68c001c93d1aa5bec642c8eae1c9180c02765a308ea10e2a4c1d3fb2a122" -> "sha256:32e2aaacb949c02428613dee9ee68c132b2a4e8b1b3b49d7d2ba597876d7279e" [label=""];
  "sha256:32e2aaacb949c02428613dee9ee68c132b2a4e8b1b3b49d7d2ba597876d7279e" -> "sha256:a627a83dd4e396ee4f93939832fa2c46eca858167c0549f6b3b38159a814fc8d" [label=""];
  "sha256:a627a83dd4e396ee4f93939832fa2c46eca858167c0549f6b3b38159a814fc8d" -> "sha256:3a2a7f7abf47ed2b7766b89a8b9210ff8575bc2b160c54827b60d888981dfb8c" [label=""];
  "sha256:dee93873e737747e230ce6ff781cca6a4af6d393c3754800847d8873068f0f43" -> "sha256:3a2a7f7abf47ed2b7766b89a8b9210ff8575bc2b160c54827b60d888981dfb8c" [label=""];
  "sha256:3a2a7f7abf47ed2b7766b89a8b9210ff8575bc2b160c54827b60d888981dfb8c" -> "sha256:0d9e96268c6f3d8e2e43389b8a5cad8549afed26404d99f5b649ea6f56745a88" [label=""];
  "sha256:0d9e96268c6f3d8e2e43389b8a5cad8549afed26404d99f5b649ea6f56745a88" -> "sha256:bd236c01ef8233661fd8136b3a3783e6a36d113cab38508943fa68a5420593ce" [label=""];
  "sha256:dee93873e737747e230ce6ff781cca6a4af6d393c3754800847d8873068f0f43" -> "sha256:bd236c01ef8233661fd8136b3a3783e6a36d113cab38508943fa68a5420593ce" [label=""];
  "sha256:bd236c01ef8233661fd8136b3a3783e6a36d113cab38508943fa68a5420593ce" -> "sha256:193defbabc978ecd14bfdbb0c486cf158c0b5daf398a4a8616314ddabaf6d998" [label=""];
  "sha256:dee93873e737747e230ce6ff781cca6a4af6d393c3754800847d8873068f0f43" -> "sha256:193defbabc978ecd14bfdbb0c486cf158c0b5daf398a4a8616314ddabaf6d998" [label=""];
  "sha256:193defbabc978ecd14bfdbb0c486cf158c0b5daf398a4a8616314ddabaf6d998" -> "sha256:f45fff364faf25ed9e797c84848c25589359be0ba57f72f3ecb140c10f129616" [label=""];
  "sha256:f45fff364faf25ed9e797c84848c25589359be0ba57f72f3ecb140c10f129616" -> "sha256:9eef594c6e306673989441b3408a393dae09f7dc274cf242fd575d3b0710ec54" [label=""];
  "sha256:dee93873e737747e230ce6ff781cca6a4af6d393c3754800847d8873068f0f43" -> "sha256:9eef594c6e306673989441b3408a393dae09f7dc274cf242fd575d3b0710ec54" [label=""];
  "sha256:9eef594c6e306673989441b3408a393dae09f7dc274cf242fd575d3b0710ec54" -> "sha256:e79f4f7a0ce124cca179278f6f95c15d4ae5bb58bd6d82a9d7e698dd0a61e348" [label=""];
  "sha256:e79f4f7a0ce124cca179278f6f95c15d4ae5bb58bd6d82a9d7e698dd0a61e348" -> "sha256:ba90e0f19b0221d9165bb3ec79ad86582466021b13d76c00b9d7d4358443de9f" [label=""];
}

