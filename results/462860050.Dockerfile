[app/sources/462860050.Dockerfile]
digraph {
  "sha256:82726a7ad50baf901c46385059a7b57732e5c6b5ee97053f36690bbae8381719" [label="local://context" shape="ellipse"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" [label="docker-image://docker.io/library/ubuntu:17.10" shape="ellipse"];
  "sha256:591c6288ba2b1771eef49524b5afed9b7c7c7a52c5cf2acaf0ad66a1e23f4fd5" [label="/bin/sh -c rm /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:5e8bc0dbcdce7d16c1bc7975c6bb0e4849d49e959a2ff455baef32a0b5f0be64" [label="/bin/sh -c echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections" shape="box"];
  "sha256:458b3f12d9d3efee89fe26abab1912659555048071db9bf63bddaae9ead1742f" [label="/bin/sh -c apt-get -y update   && apt-get -y install   build-essential   gcc   apt-utils   pkg-config   software-properties-common   apt-transport-https   libssl-dev   sudo   bash   curl   tar   git   netcat   bind9   dnsutils   && apt-get -y update   && apt-get -y upgrade   && apt-get -y autoremove   && apt-get -y autoclean" shape="box"];
  "sha256:2d6e179245a981b3c3cc5aca57701832b802744e048996492995a6635a8dd208" [label="/bin/sh -c rm -rf ${GOROOT}   && curl -s ${GO_DOWNLOAD_URL}/go${GO_VERSION}.linux-amd64.tar.gz | tar -v -C /usr/local/ -xz   && mkdir -p ${GOPATH}/src ${GOPATH}/bin   && go version   && go get -v -u github.com/mattn/goreman" shape="box"];
  "sha256:ca0059ede78cede04e4fb7b2f105080c0b12ad67bb6a4d2d828e551068cad043" [label="/bin/sh -c mkdir -p /var/bind /etc/bind" shape="box"];
  "sha256:77b48c7d1598e48c8507e0b78e3ec1a58915812c8f51b82b22d903ec78b48a4a" [label="/bin/sh -c chown root:bind /var/bind /etc/bind" shape="box"];
  "sha256:3edd831d166e15eaa2d8ec58876f9aebb8c0e2568f3479223ea79273d2003312" [label="copy{src=/named.conf, dest=/etc/bind/},copy{src=/etcd.zone, dest=/etc/bind/},copy{src=/rdns.zone, dest=/etc/bind/}" shape="note"];
  "sha256:63604734d2fab281afb9bb69182d1ad0d3c1fd010a0271e2e0463a12111be6b9" [label="/bin/sh -c chown root:bind /etc/bind/named.conf /etc/bind/etcd.zone /etc/bind/rdns.zone" shape="box"];
  "sha256:7013416664b8fd63254ac7fc2b307bf1323e8fccc0660a9c69da7421cb1ed84a" [label="copy{src=/resolv.conf, dest=/etc/resolv.conf}" shape="note"];
  "sha256:fe3f40ec2a2b644746d2d7062e6a93d01ff91dd5a42deeb69779df65100dd1e4" [label="sha256:fe3f40ec2a2b644746d2d7062e6a93d01ff91dd5a42deeb69779df65100dd1e4" shape="plaintext"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" -> "sha256:591c6288ba2b1771eef49524b5afed9b7c7c7a52c5cf2acaf0ad66a1e23f4fd5" [label=""];
  "sha256:591c6288ba2b1771eef49524b5afed9b7c7c7a52c5cf2acaf0ad66a1e23f4fd5" -> "sha256:5e8bc0dbcdce7d16c1bc7975c6bb0e4849d49e959a2ff455baef32a0b5f0be64" [label=""];
  "sha256:5e8bc0dbcdce7d16c1bc7975c6bb0e4849d49e959a2ff455baef32a0b5f0be64" -> "sha256:458b3f12d9d3efee89fe26abab1912659555048071db9bf63bddaae9ead1742f" [label=""];
  "sha256:458b3f12d9d3efee89fe26abab1912659555048071db9bf63bddaae9ead1742f" -> "sha256:2d6e179245a981b3c3cc5aca57701832b802744e048996492995a6635a8dd208" [label=""];
  "sha256:2d6e179245a981b3c3cc5aca57701832b802744e048996492995a6635a8dd208" -> "sha256:ca0059ede78cede04e4fb7b2f105080c0b12ad67bb6a4d2d828e551068cad043" [label=""];
  "sha256:ca0059ede78cede04e4fb7b2f105080c0b12ad67bb6a4d2d828e551068cad043" -> "sha256:77b48c7d1598e48c8507e0b78e3ec1a58915812c8f51b82b22d903ec78b48a4a" [label=""];
  "sha256:77b48c7d1598e48c8507e0b78e3ec1a58915812c8f51b82b22d903ec78b48a4a" -> "sha256:3edd831d166e15eaa2d8ec58876f9aebb8c0e2568f3479223ea79273d2003312" [label=""];
  "sha256:82726a7ad50baf901c46385059a7b57732e5c6b5ee97053f36690bbae8381719" -> "sha256:3edd831d166e15eaa2d8ec58876f9aebb8c0e2568f3479223ea79273d2003312" [label=""];
  "sha256:3edd831d166e15eaa2d8ec58876f9aebb8c0e2568f3479223ea79273d2003312" -> "sha256:63604734d2fab281afb9bb69182d1ad0d3c1fd010a0271e2e0463a12111be6b9" [label=""];
  "sha256:63604734d2fab281afb9bb69182d1ad0d3c1fd010a0271e2e0463a12111be6b9" -> "sha256:7013416664b8fd63254ac7fc2b307bf1323e8fccc0660a9c69da7421cb1ed84a" [label=""];
  "sha256:82726a7ad50baf901c46385059a7b57732e5c6b5ee97053f36690bbae8381719" -> "sha256:7013416664b8fd63254ac7fc2b307bf1323e8fccc0660a9c69da7421cb1ed84a" [label=""];
  "sha256:7013416664b8fd63254ac7fc2b307bf1323e8fccc0660a9c69da7421cb1ed84a" -> "sha256:fe3f40ec2a2b644746d2d7062e6a93d01ff91dd5a42deeb69779df65100dd1e4" [label=""];
}

