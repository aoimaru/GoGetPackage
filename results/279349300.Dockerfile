[app/sources/279349300.Dockerfile]
digraph {
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" [label="docker-image://docker.io/library/nginx:alpine" shape="ellipse"];
  "sha256:28c98fc6057ca939316834ca31ae36359f742148b1376847be3c30f14cee156d" [label="/bin/sh -c apk add --no-cache --virtual .build-deps \t\tgcc \t\tlibc-dev \t\tmake \t\tpcre-dev \t\tzlib-dev \t\tlinux-headers \t\tcurl \t\tlibxslt-dev \t\tgd-dev     git     && curl -LO https://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz     && tar zxf nginx-${NGINX_VERSION}.tar.gz     && cd nginx-${NGINX_VERSION}     && git -c http.sslVerify=false clone https://github.com/evanmiller/mod_zip.git     && ./configure         --prefix=/usr         --user=nginx         --group=nginx         --conf-path=/etc/nginx/nginx.conf         --http-log-path=/dev/stdout         --error-log-path=/dev/stdout         --with-pcre-jit         --with-file-aio         --with-threads         --with-http_realip_module         --with-http_addition_module         --with-http_gzip_static_module         --with-http_gunzip_module         --with-http_sub_module         --add-module=mod_zip     && make install     && cd ..     && rm -f nginx-${NGINX_VERSION}.tar.gz     && rm -rf nginx-${NGINX_VERSION}     && apk del .build-deps     && mkdir -p /etc/nginx/sites-enabled" shape="box"];
  "sha256:321d6613cd3ad69665459a44065bb52693cb05d9cf605d1daf41855940af1bca" [label="local://context" shape="ellipse"];
  "sha256:bda268a3b5b5c0c16b1c09e45e0431e04a3b71ee00e2fc4203dcfff863f10f12" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:bd6d266101e40146f7b9c7d1b90b8c7d9f540a1061ad1bc606333c5e03e384ff" [label="copy{src=/sec.conf, dest=/etc/nginx/sites-enabled}" shape="note"];
  "sha256:536532fa14c08a53f80221e0349f3a3d5212b289274011178ee767f0540ccccb" [label="sha256:536532fa14c08a53f80221e0349f3a3d5212b289274011178ee767f0540ccccb" shape="plaintext"];
  "sha256:c75195e762116c0f57dfcc525e15f33187c6595b42ae6d2f9e313e730e56e0e2" -> "sha256:28c98fc6057ca939316834ca31ae36359f742148b1376847be3c30f14cee156d" [label=""];
  "sha256:28c98fc6057ca939316834ca31ae36359f742148b1376847be3c30f14cee156d" -> "sha256:bda268a3b5b5c0c16b1c09e45e0431e04a3b71ee00e2fc4203dcfff863f10f12" [label=""];
  "sha256:321d6613cd3ad69665459a44065bb52693cb05d9cf605d1daf41855940af1bca" -> "sha256:bda268a3b5b5c0c16b1c09e45e0431e04a3b71ee00e2fc4203dcfff863f10f12" [label=""];
  "sha256:bda268a3b5b5c0c16b1c09e45e0431e04a3b71ee00e2fc4203dcfff863f10f12" -> "sha256:bd6d266101e40146f7b9c7d1b90b8c7d9f540a1061ad1bc606333c5e03e384ff" [label=""];
  "sha256:321d6613cd3ad69665459a44065bb52693cb05d9cf605d1daf41855940af1bca" -> "sha256:bd6d266101e40146f7b9c7d1b90b8c7d9f540a1061ad1bc606333c5e03e384ff" [label=""];
  "sha256:bd6d266101e40146f7b9c7d1b90b8c7d9f540a1061ad1bc606333c5e03e384ff" -> "sha256:536532fa14c08a53f80221e0349f3a3d5212b289274011178ee767f0540ccccb" [label=""];
}

