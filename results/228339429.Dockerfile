[app/sources/228339429.Dockerfile]
digraph {
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" [label="docker-image://docker.io/library/alpine:3.8" shape="ellipse"];
  "sha256:0c267a70672297eadc98555998a079400ebe971d414981136809cfe76307b103" [label="local://context" shape="ellipse"];
  "sha256:1ae407406a31fc84eea49c056bcb675f14e2143a43780d6d21f767335d98bf83" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:8876bae8f9e446d6553c2ac465ee552293bd4f9fa4f95e8e6be68e52b2e9c2e8" [label="/bin/sh -c set -ex   && apk add --no-cache     ca-certificates     libressl     pcre     zlib   && apk add --no-cache --virtual .build-deps     build-base     linux-headers     libressl-dev     pcre-dev     wget     zlib-dev   && cd /tmp   && wget http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz   && tar xzf nginx-${NGINX_VERSION}.tar.gz   && cd /tmp/nginx-${NGINX_VERSION}   && ./configure         --prefix=/etc/nginx     --sbin-path=/usr/sbin/nginx     --conf-path=/etc/nginx/nginx.conf     --error-log-path=/var/log/nginx/error.log     --pid-path=/var/run/nginx.pid     --lock-path=/var/run/nginx.lock         --user=nginx     --group=nginx         --with-threads         --with-file-aio         --with-http_ssl_module     --with-http_v2_module     --with-http_realip_module     --with-http_addition_module     --with-http_sub_module     --with-http_dav_module     --with-http_flv_module     --with-http_mp4_module     --with-http_gunzip_module     --with-http_gzip_static_module     --with-http_auth_request_module     --with-http_random_index_module     --with-http_secure_link_module     --with-http_slice_module     --with-http_stub_status_module         --http-log-path=/var/log/nginx/access.log     --http-client-body-temp-path=/var/cache/nginx/client_temp     --http-proxy-temp-path=/var/cache/nginx/proxy_temp     --http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp     --http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp     --http-scgi-temp-path=/var/cache/nginx/scgi_temp         --with-mail     --with-mail_ssl_module         --with-stream     --with-stream_ssl_module     --with-stream_realip_module   && make -j$(getconf _NPROCESSORS_ONLN)   && make install   && sed -i -e 's/#access_log  logs\\/access.log  main;/access_log \\/dev\\/stdout;/' -e 's/#error_log  logs\\/error.log  notice;/error_log stderr notice;/' /etc/nginx/nginx.conf   && adduser -D nginx   && mkdir -p /var/cache/nginx   && apk del .build-deps   && rm -rf /tmp/*" shape="box"];
  "sha256:e5ebd7c0affe8a99550f25503ebb91cc184f88aa55ccbeb032301c57753afb1b" [label="sha256:e5ebd7c0affe8a99550f25503ebb91cc184f88aa55ccbeb032301c57753afb1b" shape="plaintext"];
  "sha256:fb0b5f3e3df60ee7340bd6c35ef35660fd30484802060fe6deefaf441391f4c0" -> "sha256:1ae407406a31fc84eea49c056bcb675f14e2143a43780d6d21f767335d98bf83" [label=""];
  "sha256:0c267a70672297eadc98555998a079400ebe971d414981136809cfe76307b103" -> "sha256:1ae407406a31fc84eea49c056bcb675f14e2143a43780d6d21f767335d98bf83" [label=""];
  "sha256:1ae407406a31fc84eea49c056bcb675f14e2143a43780d6d21f767335d98bf83" -> "sha256:8876bae8f9e446d6553c2ac465ee552293bd4f9fa4f95e8e6be68e52b2e9c2e8" [label=""];
  "sha256:8876bae8f9e446d6553c2ac465ee552293bd4f9fa4f95e8e6be68e52b2e9c2e8" -> "sha256:e5ebd7c0affe8a99550f25503ebb91cc184f88aa55ccbeb032301c57753afb1b" [label=""];
}
