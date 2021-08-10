[app/sources/354400526.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:4bc8103d9490c025c11b460fb288c05a215fb9c16d1423c2df83df149d7dfb02" [label="/bin/sh -c apk add --no-cache     ca-certificates     nghttp2     openssl" shape="box"];
  "sha256:4af5c2b4e5a2c9f5b65930374454f902b3dc090854d44dd114a9b03aa2eb6909" [label="/bin/sh -c set -x     && apk add --no-cache --virtual .build-deps     g++     make     nghttp2-dev     openssl-dev     perl   && wget https://curl.haxx.se/download/curl-$CURL_VERSION.tar.bz2     && tar xjvf curl-$CURL_VERSION.tar.bz2     && rm curl-$CURL_VERSION.tar.bz2     && (         cd curl-$CURL_VERSION         && ./configure           --with-nghttp2=/usr           --with-ssl           --enable-ipv6           --enable-unix-sockets           --without-libidn           --disable-static           --disable-ldap           --disable-gopher           --disable-telnet           --disable-pop3           --disable-imap           --with-pic       && make       && make install   )     && rm -r curl-$CURL_VERSION     && rm -r /usr/share/man     && apk del .build-deps" shape="box"];
  "sha256:d7a938f557e7fdf221380e82676bdba84908684b7cd76102bfa2bd8f0370cefd" [label="sha256:d7a938f557e7fdf221380e82676bdba84908684b7cd76102bfa2bd8f0370cefd" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:4bc8103d9490c025c11b460fb288c05a215fb9c16d1423c2df83df149d7dfb02" [label=""];
  "sha256:4bc8103d9490c025c11b460fb288c05a215fb9c16d1423c2df83df149d7dfb02" -> "sha256:4af5c2b4e5a2c9f5b65930374454f902b3dc090854d44dd114a9b03aa2eb6909" [label=""];
  "sha256:4af5c2b4e5a2c9f5b65930374454f902b3dc090854d44dd114a9b03aa2eb6909" -> "sha256:d7a938f557e7fdf221380e82676bdba84908684b7cd76102bfa2bd8f0370cefd" [label=""];
}

