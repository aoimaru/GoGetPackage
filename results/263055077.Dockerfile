[app/sources/263055077.Dockerfile]
digraph {
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" [label="docker-image://docker.io/library/ubuntu:17.10" shape="ellipse"];
  "sha256:591c6288ba2b1771eef49524b5afed9b7c7c7a52c5cf2acaf0ad66a1e23f4fd5" [label="/bin/sh -c rm /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:5e8bc0dbcdce7d16c1bc7975c6bb0e4849d49e959a2ff455baef32a0b5f0be64" [label="/bin/sh -c echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections" shape="box"];
  "sha256:458b3f12d9d3efee89fe26abab1912659555048071db9bf63bddaae9ead1742f" [label="/bin/sh -c apt-get -y update   && apt-get -y install   build-essential   gcc   apt-utils   pkg-config   software-properties-common   apt-transport-https   libssl-dev   sudo   bash   curl   tar   git   netcat   bind9   dnsutils   && apt-get -y update   && apt-get -y upgrade   && apt-get -y autoremove   && apt-get -y autoclean" shape="box"];
  "sha256:2d6e179245a981b3c3cc5aca57701832b802744e048996492995a6635a8dd208" [label="/bin/sh -c rm -rf ${GOROOT}   && curl -s ${GO_DOWNLOAD_URL}/go${GO_VERSION}.linux-amd64.tar.gz | tar -v -C /usr/local/ -xz   && mkdir -p ${GOPATH}/src ${GOPATH}/bin   && go version   && go get -v -u github.com/mattn/goreman" shape="box"];
  "sha256:ca0059ede78cede04e4fb7b2f105080c0b12ad67bb6a4d2d828e551068cad043" [label="/bin/sh -c mkdir -p /var/bind /etc/bind" shape="box"];
  "sha256:77b48c7d1598e48c8507e0b78e3ec1a58915812c8f51b82b22d903ec78b48a4a" [label="/bin/sh -c chown root:bind /var/bind /etc/bind" shape="box"];
  "sha256:67ac6c7d301c833246e21232d1f0591769d3cb0d53fac607f5945a79d05d7df6" [label="local://context" shape="ellipse"];
  "sha256:b19e278149e6365870f85c529d8e7bb7f2e47d6737eb285dd7d9ede73652a040" [label="copy{src=/named.conf, dest=/etc/bind/},copy{src=/etcd.zone, dest=/etc/bind/},copy{src=/rdns.zone, dest=/etc/bind/}" shape="note"];
  "sha256:e60a07314d243a1c689ac1ca6f01145e228adea6b5d5c8714e04ac4729dd37fc" [label="/bin/sh -c chown root:bind /etc/bind/named.conf /etc/bind/etcd.zone /etc/bind/rdns.zone" shape="box"];
  "sha256:ecbb3e9c5c5e35b98555e498182eaed31159b3544e564f1070eee67eeb7b9f40" [label="copy{src=/resolv.conf, dest=/etc/resolv.conf}" shape="note"];
  "sha256:db13e248177c4e8ef23ce3848059a99c837a3724e75d1a402a035021344b5d76" [label="sha256:db13e248177c4e8ef23ce3848059a99c837a3724e75d1a402a035021344b5d76" shape="plaintext"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" -> "sha256:591c6288ba2b1771eef49524b5afed9b7c7c7a52c5cf2acaf0ad66a1e23f4fd5" [label=""];
  "sha256:591c6288ba2b1771eef49524b5afed9b7c7c7a52c5cf2acaf0ad66a1e23f4fd5" -> "sha256:5e8bc0dbcdce7d16c1bc7975c6bb0e4849d49e959a2ff455baef32a0b5f0be64" [label=""];
  "sha256:5e8bc0dbcdce7d16c1bc7975c6bb0e4849d49e959a2ff455baef32a0b5f0be64" -> "sha256:458b3f12d9d3efee89fe26abab1912659555048071db9bf63bddaae9ead1742f" [label=""];
  "sha256:458b3f12d9d3efee89fe26abab1912659555048071db9bf63bddaae9ead1742f" -> "sha256:2d6e179245a981b3c3cc5aca57701832b802744e048996492995a6635a8dd208" [label=""];
  "sha256:2d6e179245a981b3c3cc5aca57701832b802744e048996492995a6635a8dd208" -> "sha256:ca0059ede78cede04e4fb7b2f105080c0b12ad67bb6a4d2d828e551068cad043" [label=""];
  "sha256:ca0059ede78cede04e4fb7b2f105080c0b12ad67bb6a4d2d828e551068cad043" -> "sha256:77b48c7d1598e48c8507e0b78e3ec1a58915812c8f51b82b22d903ec78b48a4a" [label=""];
  "sha256:77b48c7d1598e48c8507e0b78e3ec1a58915812c8f51b82b22d903ec78b48a4a" -> "sha256:b19e278149e6365870f85c529d8e7bb7f2e47d6737eb285dd7d9ede73652a040" [label=""];
  "sha256:67ac6c7d301c833246e21232d1f0591769d3cb0d53fac607f5945a79d05d7df6" -> "sha256:b19e278149e6365870f85c529d8e7bb7f2e47d6737eb285dd7d9ede73652a040" [label=""];
  "sha256:b19e278149e6365870f85c529d8e7bb7f2e47d6737eb285dd7d9ede73652a040" -> "sha256:e60a07314d243a1c689ac1ca6f01145e228adea6b5d5c8714e04ac4729dd37fc" [label=""];
  "sha256:e60a07314d243a1c689ac1ca6f01145e228adea6b5d5c8714e04ac4729dd37fc" -> "sha256:ecbb3e9c5c5e35b98555e498182eaed31159b3544e564f1070eee67eeb7b9f40" [label=""];
  "sha256:67ac6c7d301c833246e21232d1f0591769d3cb0d53fac607f5945a79d05d7df6" -> "sha256:ecbb3e9c5c5e35b98555e498182eaed31159b3544e564f1070eee67eeb7b9f40" [label=""];
  "sha256:ecbb3e9c5c5e35b98555e498182eaed31159b3544e564f1070eee67eeb7b9f40" -> "sha256:db13e248177c4e8ef23ce3848059a99c837a3724e75d1a402a035021344b5d76" [label=""];
}

