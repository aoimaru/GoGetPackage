[app/sources/292284342.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:e130d5012812ad642105db0aee5eec98a6cf0cca7329fd5c41636080e2828449" [label="local://context" shape="ellipse"];
  "sha256:fa5b3cd22a7c56179ae882c8386efa6ba2a4642e77d8e423f6b3be232665438a" [label="copy{src=/nginx.repo, dest=/etc/yum.repos.d/nginx.repo}" shape="note"];
  "sha256:1da9dc781d15d99a7d3aab456d4af258f5c33d7fc61fd947c5648b11f9d22dc6" [label="/bin/sh -c curl -sO http://nginx.org/keys/nginx_signing.key &&     rpm --import ./nginx_signing.key &&     yum -y install --setopt=tsflags=nodocs nginx-${NGINX_VERSION}.ngx &&     rm -f ./nginx_signing.key &&     yum clean all" shape="box"];
  "sha256:580e300be8091d0938e2abeba242badcde83937b377640b6fe13e4ab2550486c" [label="/bin/sh -c mkdir -p /opt/fuse/licenses" shape="box"];
  "sha256:3e15a5bc9700addcd2b166d4b33e5ce57b09caa3116e5b9af4b313ad5172dd45" [label="copy{src=/licenses, dest=/opt/fuse/licenses}" shape="note"];
  "sha256:c04c2180d8b1a773a41de999f2a68d9808aa18a33a93530d3453737c6f85479d" [label="/bin/sh -c ln -sf /dev/stdout /var/log/nginx/access.log &&     ln -sf /dev/stderr /var/log/nginx/error.log &&     sed -i 's/\\/var\\/run\\/nginx.pid/\\/var\\/cache\\/nginx\\/nginx.pid/g' /etc/nginx/nginx.conf &&     sed -i -e '/user/!b' -e '/nginx/!b' -e '/nginx/d' /etc/nginx/nginx.conf &&     rm -f /etc/nginx/conf.d/default.conf &&     chown -R 998 /var/cache/nginx /etc/nginx &&     chmod -R g=u /var/cache/nginx /etc/nginx" shape="box"];
  "sha256:c12191e4e7c20d086cb3d0b1f4ec5519839d955a0a094f20d2b052e2e8ab8788" [label="/bin/sh -c ln -sf /usr/share/nginx/html/config/config.json /usr/share/nginx/html/config.json" shape="box"];
  "sha256:e38bd8fd8ad77c2a56d6a195461ccefde6a2ae003b512d6bd058f55ecef00788" [label="/bin/sh -c rm /usr/share/nginx/html/index.html" shape="box"];
  "sha256:d86cf492c82e18c60ad0439edce7718c66b7374d5e16fa5be73fcb86eecb4ca5" [label="/bin/sh -c touch config.js &&     chown 998 config.js && chmod g=u config.js &&     mkdir -p /usr/share/nginx/html/online/osconsole &&     ln -sf /config.js /usr/share/nginx/html/online/osconsole/config.js &&     mkdir -p /usr/share/nginx/html/integration/osconsole &&     ln -sf /config.js /usr/share/nginx/html/integration/osconsole/config.js" shape="box"];
  "sha256:35025a1083f42372d610a4cbae61d72b2967b131f27d026df4b5216969fa68e7" [label="copy{src=/nginx.conf, dest=/etc/nginx/conf.d}" shape="note"];
  "sha256:ecaac8eaee526c12c8d5ad85fa48a1e94e6bacad8209fa36f74b181f468d391c" [label="copy{src=/nginx.sh, dest=/}" shape="note"];
  "sha256:f3f26153c63c0026c1b7091117ede574103b7afa6025b5120e6381463ef4e481" [label="copy{src=/osconsole/config.sh, dest=/}" shape="note"];
  "sha256:1fb481455ae65c4bf3513e5e3a5be38a49b37a032baf46dcb967cba1186d5b24" [label="copy{src=/site, dest=/usr/share/nginx/html}" shape="note"];
  "sha256:2e31dd3d446fb8ca06245d2dd53b4bb5711d2c6dedf5581cbdce639662c1e4df" [label="copy{src=/branding/favicon.ico, dest=/usr/share/nginx/html/online/img/},copy{src=/branding/Logo-Red_Hat-Fuse-A-Reverse-RGB.png, dest=/usr/share/nginx/html/online/img/},copy{src=/branding/Logo-RedHat-A-Reverse-RGB.png, dest=/usr/share/nginx/html/online/img/}" shape="note"];
  "sha256:d3c8bdfad253b76d9622a998277f06f09e29866e01b20a8f0102f85b04350ddf" [label="copy{src=/branding/hawtconfig.json, dest=/usr/share/nginx/html/online}" shape="note"];
  "sha256:c0d19e093d6454a1d08a70f9a0b5ff1d098edc3ca15b3e01cda99272309f5894" [label="copy{src=/branding/hawtconfig.json, dest=/usr/share/nginx/html/integration}" shape="note"];
  "sha256:271aa9012f32fe0818b7d25ff007637787baac83df2e74472465c4ff7751a6e1" [label="sha256:271aa9012f32fe0818b7d25ff007637787baac83df2e74472465c4ff7751a6e1" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:fa5b3cd22a7c56179ae882c8386efa6ba2a4642e77d8e423f6b3be232665438a" [label=""];
  "sha256:e130d5012812ad642105db0aee5eec98a6cf0cca7329fd5c41636080e2828449" -> "sha256:fa5b3cd22a7c56179ae882c8386efa6ba2a4642e77d8e423f6b3be232665438a" [label=""];
  "sha256:fa5b3cd22a7c56179ae882c8386efa6ba2a4642e77d8e423f6b3be232665438a" -> "sha256:1da9dc781d15d99a7d3aab456d4af258f5c33d7fc61fd947c5648b11f9d22dc6" [label=""];
  "sha256:1da9dc781d15d99a7d3aab456d4af258f5c33d7fc61fd947c5648b11f9d22dc6" -> "sha256:580e300be8091d0938e2abeba242badcde83937b377640b6fe13e4ab2550486c" [label=""];
  "sha256:580e300be8091d0938e2abeba242badcde83937b377640b6fe13e4ab2550486c" -> "sha256:3e15a5bc9700addcd2b166d4b33e5ce57b09caa3116e5b9af4b313ad5172dd45" [label=""];
  "sha256:e130d5012812ad642105db0aee5eec98a6cf0cca7329fd5c41636080e2828449" -> "sha256:3e15a5bc9700addcd2b166d4b33e5ce57b09caa3116e5b9af4b313ad5172dd45" [label=""];
  "sha256:3e15a5bc9700addcd2b166d4b33e5ce57b09caa3116e5b9af4b313ad5172dd45" -> "sha256:c04c2180d8b1a773a41de999f2a68d9808aa18a33a93530d3453737c6f85479d" [label=""];
  "sha256:c04c2180d8b1a773a41de999f2a68d9808aa18a33a93530d3453737c6f85479d" -> "sha256:c12191e4e7c20d086cb3d0b1f4ec5519839d955a0a094f20d2b052e2e8ab8788" [label=""];
  "sha256:c12191e4e7c20d086cb3d0b1f4ec5519839d955a0a094f20d2b052e2e8ab8788" -> "sha256:e38bd8fd8ad77c2a56d6a195461ccefde6a2ae003b512d6bd058f55ecef00788" [label=""];
  "sha256:e38bd8fd8ad77c2a56d6a195461ccefde6a2ae003b512d6bd058f55ecef00788" -> "sha256:d86cf492c82e18c60ad0439edce7718c66b7374d5e16fa5be73fcb86eecb4ca5" [label=""];
  "sha256:d86cf492c82e18c60ad0439edce7718c66b7374d5e16fa5be73fcb86eecb4ca5" -> "sha256:35025a1083f42372d610a4cbae61d72b2967b131f27d026df4b5216969fa68e7" [label=""];
  "sha256:e130d5012812ad642105db0aee5eec98a6cf0cca7329fd5c41636080e2828449" -> "sha256:35025a1083f42372d610a4cbae61d72b2967b131f27d026df4b5216969fa68e7" [label=""];
  "sha256:35025a1083f42372d610a4cbae61d72b2967b131f27d026df4b5216969fa68e7" -> "sha256:ecaac8eaee526c12c8d5ad85fa48a1e94e6bacad8209fa36f74b181f468d391c" [label=""];
  "sha256:e130d5012812ad642105db0aee5eec98a6cf0cca7329fd5c41636080e2828449" -> "sha256:ecaac8eaee526c12c8d5ad85fa48a1e94e6bacad8209fa36f74b181f468d391c" [label=""];
  "sha256:ecaac8eaee526c12c8d5ad85fa48a1e94e6bacad8209fa36f74b181f468d391c" -> "sha256:f3f26153c63c0026c1b7091117ede574103b7afa6025b5120e6381463ef4e481" [label=""];
  "sha256:e130d5012812ad642105db0aee5eec98a6cf0cca7329fd5c41636080e2828449" -> "sha256:f3f26153c63c0026c1b7091117ede574103b7afa6025b5120e6381463ef4e481" [label=""];
  "sha256:f3f26153c63c0026c1b7091117ede574103b7afa6025b5120e6381463ef4e481" -> "sha256:1fb481455ae65c4bf3513e5e3a5be38a49b37a032baf46dcb967cba1186d5b24" [label=""];
  "sha256:e130d5012812ad642105db0aee5eec98a6cf0cca7329fd5c41636080e2828449" -> "sha256:1fb481455ae65c4bf3513e5e3a5be38a49b37a032baf46dcb967cba1186d5b24" [label=""];
  "sha256:1fb481455ae65c4bf3513e5e3a5be38a49b37a032baf46dcb967cba1186d5b24" -> "sha256:2e31dd3d446fb8ca06245d2dd53b4bb5711d2c6dedf5581cbdce639662c1e4df" [label=""];
  "sha256:e130d5012812ad642105db0aee5eec98a6cf0cca7329fd5c41636080e2828449" -> "sha256:2e31dd3d446fb8ca06245d2dd53b4bb5711d2c6dedf5581cbdce639662c1e4df" [label=""];
  "sha256:2e31dd3d446fb8ca06245d2dd53b4bb5711d2c6dedf5581cbdce639662c1e4df" -> "sha256:d3c8bdfad253b76d9622a998277f06f09e29866e01b20a8f0102f85b04350ddf" [label=""];
  "sha256:e130d5012812ad642105db0aee5eec98a6cf0cca7329fd5c41636080e2828449" -> "sha256:d3c8bdfad253b76d9622a998277f06f09e29866e01b20a8f0102f85b04350ddf" [label=""];
  "sha256:d3c8bdfad253b76d9622a998277f06f09e29866e01b20a8f0102f85b04350ddf" -> "sha256:c0d19e093d6454a1d08a70f9a0b5ff1d098edc3ca15b3e01cda99272309f5894" [label=""];
  "sha256:e130d5012812ad642105db0aee5eec98a6cf0cca7329fd5c41636080e2828449" -> "sha256:c0d19e093d6454a1d08a70f9a0b5ff1d098edc3ca15b3e01cda99272309f5894" [label=""];
  "sha256:c0d19e093d6454a1d08a70f9a0b5ff1d098edc3ca15b3e01cda99272309f5894" -> "sha256:271aa9012f32fe0818b7d25ff007637787baac83df2e74472465c4ff7751a6e1" [label=""];
}

