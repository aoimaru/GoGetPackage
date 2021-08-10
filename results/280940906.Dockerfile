[app/sources/280940906.Dockerfile]
digraph {
  "sha256:c250975a8d4b1f3aab2a941aef2c75d7ef76d76912779af660aa8b559a19be54" [label="docker-image://docker.io/library/ubuntu:17.10@sha256:3b811ac794645dfaa47408f4333ac6e433858ff16908965c68f63d5d315acf94" shape="ellipse"];
  "sha256:98feb566d970f3e7599793ccb762af316e7bb446733a3da5ab5481a4043f96bf" [label="/bin/sh -c rm /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:38b4f9382e807e7fa30dbe6caf3f2792a28b0aebcc81b999ff706e21082beeb0" [label="/bin/sh -c echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections" shape="box"];
  "sha256:e127528a30cc48f5ecdfeab5c989bf28228fafd82f4e287570354ef8777c2b4a" [label="/bin/sh -c apt-get -y update   && apt-get -y install   build-essential   gcc   apt-utils   pkg-config   software-properties-common   apt-transport-https   libssl-dev   sudo   bash   curl   tar   git   netcat   bind9   dnsutils   && apt-get -y update   && apt-get -y upgrade   && apt-get -y autoremove   && apt-get -y autoclean" shape="box"];
  "sha256:e9a47e1cef1e9dad3be51f6ee9de3d8238e782cb5b88026697b4ac5525e48e94" [label="/bin/sh -c rm -rf ${GOROOT}   && curl -s ${GO_DOWNLOAD_URL}/go${GO_VERSION}.linux-amd64.tar.gz | tar -v -C /usr/local/ -xz   && mkdir -p ${GOPATH}/src ${GOPATH}/bin   && go version   && go get -v -u github.com/mattn/goreman" shape="box"];
  "sha256:7c2604908ee67b600c816b2eb0186415f4ad936ca7f7a90c3b8cb5345fe1b810" [label="sha256:7c2604908ee67b600c816b2eb0186415f4ad936ca7f7a90c3b8cb5345fe1b810" shape="plaintext"];
  "sha256:c250975a8d4b1f3aab2a941aef2c75d7ef76d76912779af660aa8b559a19be54" -> "sha256:98feb566d970f3e7599793ccb762af316e7bb446733a3da5ab5481a4043f96bf" [label=""];
  "sha256:98feb566d970f3e7599793ccb762af316e7bb446733a3da5ab5481a4043f96bf" -> "sha256:38b4f9382e807e7fa30dbe6caf3f2792a28b0aebcc81b999ff706e21082beeb0" [label=""];
  "sha256:38b4f9382e807e7fa30dbe6caf3f2792a28b0aebcc81b999ff706e21082beeb0" -> "sha256:e127528a30cc48f5ecdfeab5c989bf28228fafd82f4e287570354ef8777c2b4a" [label=""];
  "sha256:e127528a30cc48f5ecdfeab5c989bf28228fafd82f4e287570354ef8777c2b4a" -> "sha256:e9a47e1cef1e9dad3be51f6ee9de3d8238e782cb5b88026697b4ac5525e48e94" [label=""];
  "sha256:e9a47e1cef1e9dad3be51f6ee9de3d8238e782cb5b88026697b4ac5525e48e94" -> "sha256:7c2604908ee67b600c816b2eb0186415f4ad936ca7f7a90c3b8cb5345fe1b810" [label=""];
}

