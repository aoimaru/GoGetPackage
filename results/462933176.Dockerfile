[app/sources/462933176.Dockerfile]
digraph {
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" [label="docker-image://docker.io/library/ubuntu:17.10" shape="ellipse"];
  "sha256:591c6288ba2b1771eef49524b5afed9b7c7c7a52c5cf2acaf0ad66a1e23f4fd5" [label="/bin/sh -c rm /bin/sh && ln -s /bin/bash /bin/sh" shape="box"];
  "sha256:5e8bc0dbcdce7d16c1bc7975c6bb0e4849d49e959a2ff455baef32a0b5f0be64" [label="/bin/sh -c echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections" shape="box"];
  "sha256:458b3f12d9d3efee89fe26abab1912659555048071db9bf63bddaae9ead1742f" [label="/bin/sh -c apt-get -y update   && apt-get -y install   build-essential   gcc   apt-utils   pkg-config   software-properties-common   apt-transport-https   libssl-dev   sudo   bash   curl   tar   git   netcat   bind9   dnsutils   && apt-get -y update   && apt-get -y upgrade   && apt-get -y autoremove   && apt-get -y autoclean" shape="box"];
  "sha256:2d6e179245a981b3c3cc5aca57701832b802744e048996492995a6635a8dd208" [label="/bin/sh -c rm -rf ${GOROOT}   && curl -s ${GO_DOWNLOAD_URL}/go${GO_VERSION}.linux-amd64.tar.gz | tar -v -C /usr/local/ -xz   && mkdir -p ${GOPATH}/src ${GOPATH}/bin   && go version   && go get -v -u github.com/mattn/goreman" shape="box"];
  "sha256:3ab4b36078ff9711e8e8063f284d9a732c5c0b57ef971715bc20e7fc2f677c31" [label="sha256:3ab4b36078ff9711e8e8063f284d9a732c5c0b57ef971715bc20e7fc2f677c31" shape="plaintext"];
  "sha256:ef233d6a7d0a9054ca782792f3ae2c3b2e8940193003edb0db3ffd10490a64a7" -> "sha256:591c6288ba2b1771eef49524b5afed9b7c7c7a52c5cf2acaf0ad66a1e23f4fd5" [label=""];
  "sha256:591c6288ba2b1771eef49524b5afed9b7c7c7a52c5cf2acaf0ad66a1e23f4fd5" -> "sha256:5e8bc0dbcdce7d16c1bc7975c6bb0e4849d49e959a2ff455baef32a0b5f0be64" [label=""];
  "sha256:5e8bc0dbcdce7d16c1bc7975c6bb0e4849d49e959a2ff455baef32a0b5f0be64" -> "sha256:458b3f12d9d3efee89fe26abab1912659555048071db9bf63bddaae9ead1742f" [label=""];
  "sha256:458b3f12d9d3efee89fe26abab1912659555048071db9bf63bddaae9ead1742f" -> "sha256:2d6e179245a981b3c3cc5aca57701832b802744e048996492995a6635a8dd208" [label=""];
  "sha256:2d6e179245a981b3c3cc5aca57701832b802744e048996492995a6635a8dd208" -> "sha256:3ab4b36078ff9711e8e8063f284d9a732c5c0b57ef971715bc20e7fc2f677c31" [label=""];
}

