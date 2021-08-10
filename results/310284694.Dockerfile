[app/sources/310284694.Dockerfile]
digraph {
  "sha256:4b06deb9ad7dfbff59c855eb5e98824d5587610cd73aa93e3c2b75da55364d4a" [label="docker-image://docker.io/library/nginx:1.13.10-alpine" shape="ellipse"];
  "sha256:1087c0b6a51d388779fc9ea6ca4402774e6e066115667b010c4ac18b67a827a3" [label="local://context" shape="ellipse"];
  "sha256:46674f2b101c1868bd6ec949fc4e9df9ff28ebc57d6ab4d1c2ba1d34db1b9de4" [label="copy{src=/files/GLOBAL*, dest=/etc/nginx/conf.d/},copy{src=/files/SERVER*, dest=/etc/nginx/conf.d/},copy{src=/files/vars*, dest=/etc/nginx/conf.d/}" shape="note"];
  "sha256:a5d622276dd7d438f6525e01462e64ab421779ea3b1e84893e56da2b149c46a9" [label="/bin/sh -c mkdir -p /var/www/maintenance" shape="box"];
  "sha256:1def92a9bf641bb2957acbcdaf5f8a09af44cb7413e9c562e3734a4b62f17f42" [label="copy{src=/files/maintenance.html, dest=/var/www/maintenance/}" shape="note"];
  "sha256:5c9160a6917a63323584e27b4e319b2a64312f793c9b951bea76d2e5b0cfcd30" [label="/bin/sh -c mv /etc/nginx/nginx.conf /etc/nginx/nginx.orig && ln -s /etc/nginx/conf.d/GLOBAL_nginx_common /etc/nginx/nginx.conf" shape="box"];
  "sha256:f605ffae0a0bf9567a36e49f14db9649a41d996f545c920251cc1d306a93800d" [label="sha256:f605ffae0a0bf9567a36e49f14db9649a41d996f545c920251cc1d306a93800d" shape="plaintext"];
  "sha256:4b06deb9ad7dfbff59c855eb5e98824d5587610cd73aa93e3c2b75da55364d4a" -> "sha256:46674f2b101c1868bd6ec949fc4e9df9ff28ebc57d6ab4d1c2ba1d34db1b9de4" [label=""];
  "sha256:1087c0b6a51d388779fc9ea6ca4402774e6e066115667b010c4ac18b67a827a3" -> "sha256:46674f2b101c1868bd6ec949fc4e9df9ff28ebc57d6ab4d1c2ba1d34db1b9de4" [label=""];
  "sha256:46674f2b101c1868bd6ec949fc4e9df9ff28ebc57d6ab4d1c2ba1d34db1b9de4" -> "sha256:a5d622276dd7d438f6525e01462e64ab421779ea3b1e84893e56da2b149c46a9" [label=""];
  "sha256:a5d622276dd7d438f6525e01462e64ab421779ea3b1e84893e56da2b149c46a9" -> "sha256:1def92a9bf641bb2957acbcdaf5f8a09af44cb7413e9c562e3734a4b62f17f42" [label=""];
  "sha256:1087c0b6a51d388779fc9ea6ca4402774e6e066115667b010c4ac18b67a827a3" -> "sha256:1def92a9bf641bb2957acbcdaf5f8a09af44cb7413e9c562e3734a4b62f17f42" [label=""];
  "sha256:1def92a9bf641bb2957acbcdaf5f8a09af44cb7413e9c562e3734a4b62f17f42" -> "sha256:5c9160a6917a63323584e27b4e319b2a64312f793c9b951bea76d2e5b0cfcd30" [label=""];
  "sha256:5c9160a6917a63323584e27b4e319b2a64312f793c9b951bea76d2e5b0cfcd30" -> "sha256:f605ffae0a0bf9567a36e49f14db9649a41d996f545c920251cc1d306a93800d" [label=""];
}

