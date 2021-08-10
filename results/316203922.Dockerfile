[app/sources/316203922.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:93ab912cfbbfacf29dc141e304ead332e0b4035248a2f92b260c5167dba0ad5f" [label="/bin/sh -c NGHTTP2_VERSION='1.30.0'  BUILD_DEPS='wget libc-dev gcc g++ make'  RUN_DEPS='ca-certificates libstdc++ openssl-dev libev-dev zlib-dev jansson-dev libxml2-dev c-ares-dev'  && apk --no-cache add $BUILD_DEPS $RUN_DEPS  && cd /tmp  && wget -qO- \"https://github.com/tatsuhiro-t/nghttp2/releases/download/v${NGHTTP2_VERSION}/nghttp2-${NGHTTP2_VERSION}.tar.gz\" | tar -xz  && cd /tmp/nghttp2-$NGHTTP2_VERSION  && ./configure --enable-app  && make  && make install  && apk del $BUILD_DEPS  && rm -rf /tmp/*" shape="box"];
  "sha256:908d325db3d20b0498825aadc7ed2e49d35b22afa90a3cb1dbe90fcbe5417779" [label="sha256:908d325db3d20b0498825aadc7ed2e49d35b22afa90a3cb1dbe90fcbe5417779" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:93ab912cfbbfacf29dc141e304ead332e0b4035248a2f92b260c5167dba0ad5f" [label=""];
  "sha256:93ab912cfbbfacf29dc141e304ead332e0b4035248a2f92b260c5167dba0ad5f" -> "sha256:908d325db3d20b0498825aadc7ed2e49d35b22afa90a3cb1dbe90fcbe5417779" [label=""];
}

