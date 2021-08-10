[app/sources/252780894.Dockerfile]
digraph {
  "sha256:ed1a5c1875c7c99f4a8c7e6cb47a83a0e088ac94d169a96497136f015f2f0c40" [label="local://context" shape="ellipse"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:c1e08d51ffbfa7ccf555da3defee62b7f93fcd784fba1136f71d3774820de61f" [label="/bin/sh -c apk add --update nginx && rm -rf /var/cache/apk/* && mkdir -p /tmp/nginx/" shape="box"];
  "sha256:9d637038c2f1b7148057a1c96e61d70417900d31f10c67bf253e9da7e8d79bc6" [label="copy{src=/files/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:919008afeb68fdc177007c844344e5b135c195ccd74eee33359064d4b794d3ba" [label="copy{src=/files/default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:2a0a9024c95f455633781e1f20bb16974a04af4055502e042cefd3bb7b6eb9c4" [label="copy{src=/files/html.tar.gz, dest=/usr/share/nginx/}" shape="note"];
  "sha256:20d90806b2a9cbf72bce1c07183644d51e1e29de8b97bf00fb839c3a706d6374" [label="sha256:20d90806b2a9cbf72bce1c07183644d51e1e29de8b97bf00fb839c3a706d6374" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:c1e08d51ffbfa7ccf555da3defee62b7f93fcd784fba1136f71d3774820de61f" [label=""];
  "sha256:c1e08d51ffbfa7ccf555da3defee62b7f93fcd784fba1136f71d3774820de61f" -> "sha256:9d637038c2f1b7148057a1c96e61d70417900d31f10c67bf253e9da7e8d79bc6" [label=""];
  "sha256:ed1a5c1875c7c99f4a8c7e6cb47a83a0e088ac94d169a96497136f015f2f0c40" -> "sha256:9d637038c2f1b7148057a1c96e61d70417900d31f10c67bf253e9da7e8d79bc6" [label=""];
  "sha256:9d637038c2f1b7148057a1c96e61d70417900d31f10c67bf253e9da7e8d79bc6" -> "sha256:919008afeb68fdc177007c844344e5b135c195ccd74eee33359064d4b794d3ba" [label=""];
  "sha256:ed1a5c1875c7c99f4a8c7e6cb47a83a0e088ac94d169a96497136f015f2f0c40" -> "sha256:919008afeb68fdc177007c844344e5b135c195ccd74eee33359064d4b794d3ba" [label=""];
  "sha256:919008afeb68fdc177007c844344e5b135c195ccd74eee33359064d4b794d3ba" -> "sha256:2a0a9024c95f455633781e1f20bb16974a04af4055502e042cefd3bb7b6eb9c4" [label=""];
  "sha256:ed1a5c1875c7c99f4a8c7e6cb47a83a0e088ac94d169a96497136f015f2f0c40" -> "sha256:2a0a9024c95f455633781e1f20bb16974a04af4055502e042cefd3bb7b6eb9c4" [label=""];
  "sha256:2a0a9024c95f455633781e1f20bb16974a04af4055502e042cefd3bb7b6eb9c4" -> "sha256:20d90806b2a9cbf72bce1c07183644d51e1e29de8b97bf00fb839c3a706d6374" [label=""];
}

