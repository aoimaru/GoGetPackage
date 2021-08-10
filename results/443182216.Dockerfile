[app/sources/443182216.Dockerfile]
digraph {
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" [label="docker-image://docker.io/library/alpine:3.6" shape="ellipse"];
  "sha256:37d467f413175ead549e8523e7dd02a68d077e70f91b0690d0d8f8b4607d66b4" [label="/bin/sh -c echo -e \"http://mirrors.aliyun.com/alpine/edge/testing\\nhttp://mirrors.aliyun.com/alpine/v3.6/main\\nhttp://mirrors.aliyun.com/alpine/v3.6/community\\n\" > /etc/apk/repositories" shape="box"];
  "sha256:0f1869b08a1baf70d54c5caf682b7b3f14b77b36cabbe7275038ea74f263ee83" [label="/bin/sh -c apk update && apk add --no-cache     libstdc++     boost-system     boost-filesystem     boost-random     boost-regex     boost-thread     gmp     libcurl libmicrohttpd libcrypto1.0 leveldb" shape="box"];
  "sha256:0ca56a16fc9270182b2471d7cea665eead517e344290b96d1a31b45db6a4700f" [label="/bin/sh -c apk add --no-cache --virtual .build-deps     unzip     git     cmake     g++     make     curl-dev boost-dev libmicrohttpd-dev openssl-dev leveldb-dev     && sed -i -E -e 's/include <sys\\/poll.h>/include <poll.h>/' /usr/include/boost/asio/detail/socket_types.hpp     && git clone https://github.com/bcosorg/bcos.git     && cd bcos && mkdir build && cd build     && cmake -DEVMJIT=OFF -DTESTS=OFF -DTOOLS=OFF -DMINIUPNPC=OFF ..     && make     && make install     && mkdir /nodedata && cd ../docker && cp nodeConfig/node-0/* /nodedata     && cd / && rm -rf bcos     && apk del .build-deps     && rm /var/cache/apk/* -f" shape="box"];
  "sha256:d8a74369f6cbf8947dbd3a4791982db1fee08f0df0b9716f34050234d2f0c77e" [label="sha256:d8a74369f6cbf8947dbd3a4791982db1fee08f0df0b9716f34050234d2f0c77e" shape="plaintext"];
  "sha256:630fc16d18f8e178fe504e469b3a53c135401f77c3dc9f09ff0feaf9a5d935ff" -> "sha256:37d467f413175ead549e8523e7dd02a68d077e70f91b0690d0d8f8b4607d66b4" [label=""];
  "sha256:37d467f413175ead549e8523e7dd02a68d077e70f91b0690d0d8f8b4607d66b4" -> "sha256:0f1869b08a1baf70d54c5caf682b7b3f14b77b36cabbe7275038ea74f263ee83" [label=""];
  "sha256:0f1869b08a1baf70d54c5caf682b7b3f14b77b36cabbe7275038ea74f263ee83" -> "sha256:0ca56a16fc9270182b2471d7cea665eead517e344290b96d1a31b45db6a4700f" [label=""];
  "sha256:0ca56a16fc9270182b2471d7cea665eead517e344290b96d1a31b45db6a4700f" -> "sha256:d8a74369f6cbf8947dbd3a4791982db1fee08f0df0b9716f34050234d2f0c77e" [label=""];
}

