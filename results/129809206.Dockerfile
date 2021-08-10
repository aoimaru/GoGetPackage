[app/sources/129809206.Dockerfile]
digraph {
  "sha256:3d3d78eca0b1a8fba17fbc6a0a3d80030634f2e9222f1c56e580a995941664d1" [label="local://context" shape="ellipse"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:659ca2e071c48da85261e51a86ab2ffb94c645d2a4542582dff34fa461ab715d" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         build-essential         ca-certificates         curl         git         gettext-base         libgd-dev         libgeoip-dev         libncurses5-dev         libperl-dev         libreadline-dev         libxslt1-dev         make         perl         unzip         zlib1g-dev         cmake         ${RESTY_ADD_PACKAGE_BUILDDEPS}         ${RESTY_ADD_PACKAGE_RUNDEPS}     && cd /tmp     && if [ -n \"${RESTY_EVAL_PRE_CONFIGURE}\" ]; then eval $(echo ${RESTY_EVAL_PRE_CONFIGURE}); fi     && curl -fSL https://www.openssl.org/source/openssl-${RESTY_OPENSSL_VERSION}.tar.gz -o openssl-${RESTY_OPENSSL_VERSION}.tar.gz     && tar xzf openssl-${RESTY_OPENSSL_VERSION}.tar.gz     && curl -fSL https://ftp.pcre.org/pub/pcre/pcre-${RESTY_PCRE_VERSION}.tar.gz -o pcre-${RESTY_PCRE_VERSION}.tar.gz     && tar xzf pcre-${RESTY_PCRE_VERSION}.tar.gz     && cd /tmp     && curl -fSL https://github.com/opentracing/opentracing-cpp/archive/v${OPENTRACING_CPP_VERSION}.tar.gz -o opentracing-cpp-${OPENTRACING_CPP_VERSION}.tar.gz    && tar -zxf opentracing-cpp-${OPENTRACING_CPP_VERSION}.tar.gz     && cd opentracing-cpp-${OPENTRACING_CPP_VERSION}     && mkdir -p cmake-build     && cd cmake-build     && cmake -DCMAKE_BUILD_TYPE=Release              -DBUILD_MOCKTRACER=OFF              -DBUILD_STATIC_LIBS=OFF              -DBUILD_TESTING=OFF        ..     && make -j${NUM_CPUS}     && make -j${NUM_CPUS} install     && cd /tmp     && rm -rf opentracing-cpp-${OPENTRACING_CPP_VERSION}.tar.gz               opentracing-cpp-${OPENTRACING_CPP_VERSION}     && cd /tmp     && git clone https://github.com/jkeys089/lua-resty-hmac.git     && cd lua-resty-hmac     && make     && make install     && cd /tmp     && rm -rf lua-resty-hmac     && cd /usr/local/lib     && curl -fSL https://github.com/jaegertracing/jaeger-client-cpp/releases/download/v${JAEGER_TRACING_VERSION}/libjaegertracing_plugin.linux_amd64.so -o libjaegertracing_plugin.so" shape="box"];
  "sha256:2650e55d84224fbe2bb13c481e0a02d053168f24be3d923b77fad74482688aa1" [label="/bin/sh -c cd /usr/local     && curl -fSL https://github.com/opentracing-contrib/nginx-opentracing/archive/v${NGINX_OPENTRACING_VERSION}.tar.gz -o nginx-opentracing-${NGINX_OPENTRACING_VERSION}.tar.gz     && tar -zxf nginx-opentracing-${NGINX_OPENTRACING_VERSION}.tar.gz     && rm nginx-opentracing-${NGINX_OPENTRACING_VERSION}.tar.gz     && cd /tmp     && curl -fSL https://openresty.org/download/openresty-${RESTY_VERSION}.tar.gz -o openresty-${RESTY_VERSION}.tar.gz     && tar xzf openresty-${RESTY_VERSION}.tar.gz     && cd /tmp/openresty-${RESTY_VERSION}     && ./configure -j${RESTY_J} ${_RESTY_CONFIG_DEPS} ${RESTY_CONFIG_OPTIONS} ${RESTY_CONFIG_OPTIONS_MORE}     && make -j${RESTY_J}     && make -j${RESTY_J} install     && cd /tmp     && rm -rf         openssl-${RESTY_OPENSSL_VERSION}         openssl-${RESTY_OPENSSL_VERSION}.tar.gz         openresty-${RESTY_VERSION}.tar.gz openresty-${RESTY_VERSION}         pcre-${RESTY_PCRE_VERSION}.tar.gz pcre-${RESTY_PCRE_VERSION}" shape="box"];
  "sha256:38967d4511fd0d3ce758265cc00205b3a28212ea7bbeac3c569dc1a20af84fda" [label="/bin/sh -c cd /tmp     && curl -fSL https://github.com/luarocks/luarocks/archive/${RESTY_LUAROCKS_VERSION}.tar.gz -o luarocks-${RESTY_LUAROCKS_VERSION}.tar.gz     && tar xzf luarocks-${RESTY_LUAROCKS_VERSION}.tar.gz     && cd luarocks-${RESTY_LUAROCKS_VERSION}     && ./configure         --prefix=/usr/local/openresty/luajit         --with-lua=/usr/local/openresty/luajit         --lua-suffix=jit-2.1.0-beta3         --with-lua-include=/usr/local/openresty/luajit/include/luajit-2.1     && make build     && make install     && cd /tmp     && if [ -n \"${RESTY_EVAL_POST_MAKE}\" ]; then eval $(echo ${RESTY_EVAL_POST_MAKE}); fi     && rm -rf luarocks-${RESTY_LUAROCKS_VERSION} luarocks-${RESTY_LUAROCKS_VERSION}.tar.gz     && if [ -n \"${RESTY_ADD_PACKAGE_BUILDDEPS}\" ]; then DEBIAN_FRONTEND=noninteractive apt-get remove --purge \"${RESTY_ADD_PACKAGE_BUILDDEPS}\" ; fi     && DEBIAN_FRONTEND=noninteractive apt-get autoremove -y     && ln -sf /dev/stdout /usr/local/openresty/nginx/logs/access.log     && ln -sf /dev/stderr /usr/local/openresty/nginx/logs/error.log" shape="box"];
  "sha256:52523c0bfd3961d139fa560cd7351f75ef601f29e6947ac5538db27d9449d23a" [label="copy{src=/lua-thrift, dest=/usr/local/openresty/lualib/thrift}" shape="note"];
  "sha256:bc1a65e86f657f23670bf3ef60b1ef11d5c155e0e8f5dbc513664f16d60f00e6" [label="copy{src=/lua-bridge-tracer, dest=/tmp/lua-bridge-tracer}" shape="note"];
  "sha256:d4e91fed17ad2207f55f9fae0ade748e661569bdb0aabe8f7615c5aba3cbcb02" [label="copy{src=/lua-json/json.lua, dest=/usr/local/openresty/lualib/json/json.lua}" shape="note"];
  "sha256:fac629e085a6e519c20b8462323d17e28afda026920d69b372ed5aaf1a8208dd" [label="/bin/sh -c cd /usr/local/openresty/lualib/thrift/src     && make     && make install     && cd /tmp/lua-bridge-tracer     && mkdir -p cmake-build     && cd cmake-build     && cmake -DCMAKE_BUILD_TYPE=Release        ..     && make -j${NUM_CPUS}     && make -j${NUM_CPUS} install" shape="box"];
  "sha256:f13b60d47d52b1bd49b4b743e01a616d0fc9ec35c6487e515daf34824035446d" [label="/bin/sh -c luarocks install long     && luarocks install lua-resty-jwt     && ldconfig" shape="box"];
  "sha256:a4e82866967a0b2cea4ec3b2cbd0ce65ea72373e49917ee5b6897fd753643579" [label="copy{src=/nginx.conf, dest=/usr/local/openresty/nginx/conf/nginx.conf}" shape="note"];
  "sha256:3f8b86d3fafc1aee7e0916dbe155187d1c814e93c741b06371ad8ac71ee9b4df" [label="copy{src=/nginx.vh.default.conf, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:cc8ffb6cdfa561c4900f3103f719ada0af3db58efaad80637c595e97c8874c6b" [label="sha256:cc8ffb6cdfa561c4900f3103f719ada0af3db58efaad80637c595e97c8874c6b" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:659ca2e071c48da85261e51a86ab2ffb94c645d2a4542582dff34fa461ab715d" [label=""];
  "sha256:659ca2e071c48da85261e51a86ab2ffb94c645d2a4542582dff34fa461ab715d" -> "sha256:2650e55d84224fbe2bb13c481e0a02d053168f24be3d923b77fad74482688aa1" [label=""];
  "sha256:2650e55d84224fbe2bb13c481e0a02d053168f24be3d923b77fad74482688aa1" -> "sha256:38967d4511fd0d3ce758265cc00205b3a28212ea7bbeac3c569dc1a20af84fda" [label=""];
  "sha256:38967d4511fd0d3ce758265cc00205b3a28212ea7bbeac3c569dc1a20af84fda" -> "sha256:52523c0bfd3961d139fa560cd7351f75ef601f29e6947ac5538db27d9449d23a" [label=""];
  "sha256:3d3d78eca0b1a8fba17fbc6a0a3d80030634f2e9222f1c56e580a995941664d1" -> "sha256:52523c0bfd3961d139fa560cd7351f75ef601f29e6947ac5538db27d9449d23a" [label=""];
  "sha256:52523c0bfd3961d139fa560cd7351f75ef601f29e6947ac5538db27d9449d23a" -> "sha256:bc1a65e86f657f23670bf3ef60b1ef11d5c155e0e8f5dbc513664f16d60f00e6" [label=""];
  "sha256:3d3d78eca0b1a8fba17fbc6a0a3d80030634f2e9222f1c56e580a995941664d1" -> "sha256:bc1a65e86f657f23670bf3ef60b1ef11d5c155e0e8f5dbc513664f16d60f00e6" [label=""];
  "sha256:bc1a65e86f657f23670bf3ef60b1ef11d5c155e0e8f5dbc513664f16d60f00e6" -> "sha256:d4e91fed17ad2207f55f9fae0ade748e661569bdb0aabe8f7615c5aba3cbcb02" [label=""];
  "sha256:3d3d78eca0b1a8fba17fbc6a0a3d80030634f2e9222f1c56e580a995941664d1" -> "sha256:d4e91fed17ad2207f55f9fae0ade748e661569bdb0aabe8f7615c5aba3cbcb02" [label=""];
  "sha256:d4e91fed17ad2207f55f9fae0ade748e661569bdb0aabe8f7615c5aba3cbcb02" -> "sha256:fac629e085a6e519c20b8462323d17e28afda026920d69b372ed5aaf1a8208dd" [label=""];
  "sha256:fac629e085a6e519c20b8462323d17e28afda026920d69b372ed5aaf1a8208dd" -> "sha256:f13b60d47d52b1bd49b4b743e01a616d0fc9ec35c6487e515daf34824035446d" [label=""];
  "sha256:f13b60d47d52b1bd49b4b743e01a616d0fc9ec35c6487e515daf34824035446d" -> "sha256:a4e82866967a0b2cea4ec3b2cbd0ce65ea72373e49917ee5b6897fd753643579" [label=""];
  "sha256:3d3d78eca0b1a8fba17fbc6a0a3d80030634f2e9222f1c56e580a995941664d1" -> "sha256:a4e82866967a0b2cea4ec3b2cbd0ce65ea72373e49917ee5b6897fd753643579" [label=""];
  "sha256:a4e82866967a0b2cea4ec3b2cbd0ce65ea72373e49917ee5b6897fd753643579" -> "sha256:3f8b86d3fafc1aee7e0916dbe155187d1c814e93c741b06371ad8ac71ee9b4df" [label=""];
  "sha256:3d3d78eca0b1a8fba17fbc6a0a3d80030634f2e9222f1c56e580a995941664d1" -> "sha256:3f8b86d3fafc1aee7e0916dbe155187d1c814e93c741b06371ad8ac71ee9b4df" [label=""];
  "sha256:3f8b86d3fafc1aee7e0916dbe155187d1c814e93c741b06371ad8ac71ee9b4df" -> "sha256:cc8ffb6cdfa561c4900f3103f719ada0af3db58efaad80637c595e97c8874c6b" [label=""];
}

