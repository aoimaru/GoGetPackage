[app/sources/228339383.Dockerfile]
digraph {
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" [label="docker-image://docker.io/library/alpine:3.5" shape="ellipse"];
  "sha256:5c0955a00601e584b99e512ecacebf84613e2e7060317038fdd59da8b0bd9ce3" [label="local://context" shape="ellipse"];
  "sha256:a5e0fc13501e04b249dbad842372e7a9910ab79060ca3d77019ba8213eee60c6" [label="copy{src=/rootfs, dest=/}" shape="note"];
  "sha256:02e559ad6dbea97b7ab83208868fcd255dd0dad3deaa84f34ee16b354921ac13" [label="/bin/sh -c set -ex   && apk add --no-cache     ca-certificates     libressl     pcre     zlib   && apk add --no-cache --virtual .build-deps     build-base     linux-headers     libressl-dev     pcre-dev     wget     zlib-dev   && cd /tmp   && wget http://nginx.org/download/nginx-${NGINX_VERSION}.tar.gz   && tar xzf nginx-${NGINX_VERSION}.tar.gz   && cd /tmp/nginx-${NGINX_VERSION}   && ./configure     --prefix=/etc/nginx     --sbin-path=/usr/sbin/nginx     --conf-path=/etc/nginx/nginx.conf     --error-log-path=/var/log/nginx/error.log     --http-log-path=/var/log/nginx/access.log     --pid-path=/var/run/nginx.pid     --lock-path=/var/run/nginx.lock     --http-client-body-temp-path=/var/cache/nginx/client_temp     --http-proxy-temp-path=/var/cache/nginx/proxy_temp     --http-fastcgi-temp-path=/var/cache/nginx/fastcgi_temp     --http-uwsgi-temp-path=/var/cache/nginx/uwsgi_temp     --http-scgi-temp-path=/var/cache/nginx/scgi_temp     --user=nginx     --group=nginx     --with-http_ssl_module     --with-http_realip_module     --with-http_addition_module     --with-http_sub_module     --with-http_dav_module     --with-http_flv_module     --with-http_mp4_module     --with-http_gunzip_module     --with-http_gzip_static_module     --with-http_random_index_module     --with-http_secure_link_module     --with-http_stub_status_module     --with-http_auth_request_module     --with-threads     --with-stream     --with-stream_ssl_module     --with-http_slice_module     --with-mail     --with-mail_ssl_module     --with-file-aio     --with-http_v2_module     --with-ipv6     --with-stream_realip_module   && make -j$(getconf _NPROCESSORS_ONLN)   && make install   && sed -i -e 's/#access_log  logs\\/access.log  main;/access_log \\/dev\\/stdout;/' -e 's/#error_log  logs\\/error.log  notice;/error_log stderr notice;/' /etc/nginx/nginx.conf   && adduser -D nginx   && mkdir -p /var/cache/nginx   && apk del .build-deps   && rm -rf /tmp/*" shape="box"];
  "sha256:a4c0ab295d42d39f60a4b782026bb9ffe708335aa712e7d4bce6295ea6688eaa" [label="sha256:a4c0ab295d42d39f60a4b782026bb9ffe708335aa712e7d4bce6295ea6688eaa" shape="plaintext"];
  "sha256:82b0ab03c43981bd408deb7b1ca062dc5dfd19197f06be715ff118e626d39630" -> "sha256:a5e0fc13501e04b249dbad842372e7a9910ab79060ca3d77019ba8213eee60c6" [label=""];
  "sha256:5c0955a00601e584b99e512ecacebf84613e2e7060317038fdd59da8b0bd9ce3" -> "sha256:a5e0fc13501e04b249dbad842372e7a9910ab79060ca3d77019ba8213eee60c6" [label=""];
  "sha256:a5e0fc13501e04b249dbad842372e7a9910ab79060ca3d77019ba8213eee60c6" -> "sha256:02e559ad6dbea97b7ab83208868fcd255dd0dad3deaa84f34ee16b354921ac13" [label=""];
  "sha256:02e559ad6dbea97b7ab83208868fcd255dd0dad3deaa84f34ee16b354921ac13" -> "sha256:a4c0ab295d42d39f60a4b782026bb9ffe708335aa712e7d4bce6295ea6688eaa" [label=""];
}
