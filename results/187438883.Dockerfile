[app/sources/187438883.Dockerfile]
digraph {
  "sha256:a326ffaa562580efea9e863f6336824d7a918eb11dd101915fe21293caa0429b" [label="docker-image://docker.io/fempar/fempar-env:gnu-debug" shape="ellipse"];
  "sha256:b22527cccfb17c996fbac631e1d7f474b39e953b207c2e1cba7c4130e68c3a12" [label="/bin/sh -c source /opt/intel/mkl/bin/mklvars.sh intel64     && PACKAGE=p4est     && VERSION=2.2     && INSTALL_ROOT=/opt     && P4EST_INSTALL=$INSTALL_ROOT/$PACKAGE/$VERSION     && TAR_FILE=$PACKAGE-$VERSION.tar.gz     && URL=\"https://github.com/p4est/p4est.github.io/raw/master/release\"     && ROOT_DIR=/tmp     && SOURCES_DIR=$ROOT_DIR/$PACKAGE-$VERSION     && BUILD_DIR=$SOURCES_DIR/build     && wget $URL/$TAR_FILE -O $ROOT_DIR/$TAR_FILE     && mkdir -p $SOURCES_DIR     && tar xzvf $ROOT_DIR/$TAR_FILE -C $SOURCES_DIR --strip-components=1     && cd $SOURCES_DIR     && ./configure --prefix=$P4EST_INSTALL --enable-debug --without-blas --without-lapack     && make     && make install     && rm -rf $ROOT_DIR/$TAR_FILE $SOURCES_DIR" shape="box"];
  "sha256:eefe22dd35ea6a5498b2b13020b375e01294e587a4f0dab676ac0c894affd95e" [label="sha256:eefe22dd35ea6a5498b2b13020b375e01294e587a4f0dab676ac0c894affd95e" shape="plaintext"];
  "sha256:a326ffaa562580efea9e863f6336824d7a918eb11dd101915fe21293caa0429b" -> "sha256:b22527cccfb17c996fbac631e1d7f474b39e953b207c2e1cba7c4130e68c3a12" [label=""];
  "sha256:b22527cccfb17c996fbac631e1d7f474b39e953b207c2e1cba7c4130e68c3a12" -> "sha256:eefe22dd35ea6a5498b2b13020b375e01294e587a4f0dab676ac0c894affd95e" [label=""];
}

