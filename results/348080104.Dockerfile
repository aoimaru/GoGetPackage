[app/sources/348080104.Dockerfile]
digraph {
  "sha256:843688427f5f22c4d219f94d5d1439bbf95b803ae454c1dbfa2ae5c04b54ee92" [label="docker-image://docker.io/opennsm/debian@sha256:a83a9b8c3dc3f688148f4094eaa5f78a200d130d66f3bf2f224dcfd800ead893" shape="ellipse"];
  "sha256:7ec6a0c61aee17f40fb93e9cbc2a81e419923d708269675cc6768c9cc8e321f6" [label="/bin/sh -c apt-get update -qq" shape="box"];
  "sha256:81500faaebd168a31a33ec92060f1074a18c43162e9ca8b4679717f04265105d" [label="/bin/sh -c apt-get install -yq libpcre3 libpcre3-dbg libpcre3-dev build-essential autoconf automake libtool libpcap-dev libnet1-dev libyaml-0-2 libyaml-dev zlib1g zlib1g-dev libmagic-dev libcap-ng-dev libjansson-dev pkg-config libnetfilter-queue-dev" shape="box"];
  "sha256:c5120dd727bb44d85f4cb05dc4350a958f3d2d1273e746721f7d0b26dc51faf4" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:0ed54af7987737badf1dbf657f4b9de05e35b152d82ffc4930fa0c9355bb83d4" [label="/bin/sh -c wget http://www.openinfosecfoundation.org/download/$PROG-$VERS.tar.gz" shape="box"];
  "sha256:cbef0208eb8f654ead997202eb16db5eafbbca245f8250c1035542a945a518b5" [label="/bin/sh -c tar -xvzf $PROG-$VERS.tar.gz" shape="box"];
  "sha256:e5b0cf4c6344b8fccd6656573a1008c330f84fdbf5e6a34c627d5e4f5dc63ab9" [label="mkdir{path=/home/opennsm/suricata-1.0.5}" shape="note"];
  "sha256:09f0e694cb4378ce70f561f9e2f764d8a043254488fae85dd72ff3e133eb08ab" [label="/bin/sh -c ./configure --enable-nfqueue --prefix=$PREFIX --enable-profiling --enable-debug --enable-debug-validation --enable-unittests --sysconfdir=/etc --localstatedir=/var && make" shape="box"];
  "sha256:267208defd93e813934de2a6c4efad28108a31c943a665d549c8d1b92ded9e22" [label="/bin/sh -c make install" shape="box"];
  "sha256:0ae36f0620f3393f304e2f33215171f609d3c5405eb4f7ee2c1f27c0d94f1734" [label="/bin/sh -c chmod u+s $PREFIX/bin/$PROG" shape="box"];
  "sha256:1f3805587cc08bf13779981c28c4389dd9856dc0d83a2af779909af22c294fd9" [label="/bin/sh -c rm -rf /home/$VIRTUSER/$PROG-$VERS" shape="box"];
  "sha256:727a3cc89d91c921c85acbd84ffe2291c8b96a1398d6829bf99ef3607aa3007f" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:881d0bd3caff0f09502bacbbb303d6c48918554593842f912f28df24cba5005e" [label="sha256:881d0bd3caff0f09502bacbbb303d6c48918554593842f912f28df24cba5005e" shape="plaintext"];
  "sha256:843688427f5f22c4d219f94d5d1439bbf95b803ae454c1dbfa2ae5c04b54ee92" -> "sha256:7ec6a0c61aee17f40fb93e9cbc2a81e419923d708269675cc6768c9cc8e321f6" [label=""];
  "sha256:7ec6a0c61aee17f40fb93e9cbc2a81e419923d708269675cc6768c9cc8e321f6" -> "sha256:81500faaebd168a31a33ec92060f1074a18c43162e9ca8b4679717f04265105d" [label=""];
  "sha256:81500faaebd168a31a33ec92060f1074a18c43162e9ca8b4679717f04265105d" -> "sha256:c5120dd727bb44d85f4cb05dc4350a958f3d2d1273e746721f7d0b26dc51faf4" [label=""];
  "sha256:c5120dd727bb44d85f4cb05dc4350a958f3d2d1273e746721f7d0b26dc51faf4" -> "sha256:0ed54af7987737badf1dbf657f4b9de05e35b152d82ffc4930fa0c9355bb83d4" [label=""];
  "sha256:0ed54af7987737badf1dbf657f4b9de05e35b152d82ffc4930fa0c9355bb83d4" -> "sha256:cbef0208eb8f654ead997202eb16db5eafbbca245f8250c1035542a945a518b5" [label=""];
  "sha256:cbef0208eb8f654ead997202eb16db5eafbbca245f8250c1035542a945a518b5" -> "sha256:e5b0cf4c6344b8fccd6656573a1008c330f84fdbf5e6a34c627d5e4f5dc63ab9" [label=""];
  "sha256:e5b0cf4c6344b8fccd6656573a1008c330f84fdbf5e6a34c627d5e4f5dc63ab9" -> "sha256:09f0e694cb4378ce70f561f9e2f764d8a043254488fae85dd72ff3e133eb08ab" [label=""];
  "sha256:09f0e694cb4378ce70f561f9e2f764d8a043254488fae85dd72ff3e133eb08ab" -> "sha256:267208defd93e813934de2a6c4efad28108a31c943a665d549c8d1b92ded9e22" [label=""];
  "sha256:267208defd93e813934de2a6c4efad28108a31c943a665d549c8d1b92ded9e22" -> "sha256:0ae36f0620f3393f304e2f33215171f609d3c5405eb4f7ee2c1f27c0d94f1734" [label=""];
  "sha256:0ae36f0620f3393f304e2f33215171f609d3c5405eb4f7ee2c1f27c0d94f1734" -> "sha256:1f3805587cc08bf13779981c28c4389dd9856dc0d83a2af779909af22c294fd9" [label=""];
  "sha256:1f3805587cc08bf13779981c28c4389dd9856dc0d83a2af779909af22c294fd9" -> "sha256:727a3cc89d91c921c85acbd84ffe2291c8b96a1398d6829bf99ef3607aa3007f" [label=""];
  "sha256:727a3cc89d91c921c85acbd84ffe2291c8b96a1398d6829bf99ef3607aa3007f" -> "sha256:881d0bd3caff0f09502bacbbb303d6c48918554593842f912f28df24cba5005e" [label=""];
}

