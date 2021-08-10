[app/sources/256628530.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:7df27c97803d017c1b951b3a5ad7075b8c4df59a9fce6c9277ac1b68e7d527a8" [label="/bin/sh -c mkdir /projects" shape="box"];
  "sha256:67210b1d9f87076df659009360a39a4099759f50ba8270c62d1fba60f3ea2ae6" [label="mkdir{path=/projects}" shape="note"];
  "sha256:9625a85d2eebc0466171cc5265c8b31efc430de2b70ad8d060c8010d8f1226ce" [label="/bin/sh -c apt-get -y upgrade && apt-get -y update && apt-get install -y software-properties-common wget && add-apt-repository ppa:ubuntu-toolchain-r/test     && wget http://eclipseice.ornl.gov/downloads/xacc/debs/16.04/xacc_1.0_amd64.deb     && wget https://github.com/ORNL-QCI/ScaffCC/releases/download/v2.0/scaffold_2.0_amd64.deb     && apt-get -y update && apt-get install -y $(dpkg --info xacc_1.0_amd64.deb | grep Depends | sed \"s/.*ends:\\ //\" | sed 's/,//g')     && apt-get -y update && apt-get -y install $(dpkg --info scaffold_2.0_amd64.deb | grep Depends | sed \"s/.*ends:\\ //\" | sed 's/,//g')     && dpkg -i scaffold_2.0_amd64.deb && dpkg -i xacc_1.0_amd64.deb" shape="box"];
  "sha256:371e7c836ba9f0d202caf9b2c8ccc2e94aeeed833d0ba76da8c81b8edbb9d712" [label="sha256:371e7c836ba9f0d202caf9b2c8ccc2e94aeeed833d0ba76da8c81b8edbb9d712" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:7df27c97803d017c1b951b3a5ad7075b8c4df59a9fce6c9277ac1b68e7d527a8" [label=""];
  "sha256:7df27c97803d017c1b951b3a5ad7075b8c4df59a9fce6c9277ac1b68e7d527a8" -> "sha256:67210b1d9f87076df659009360a39a4099759f50ba8270c62d1fba60f3ea2ae6" [label=""];
  "sha256:67210b1d9f87076df659009360a39a4099759f50ba8270c62d1fba60f3ea2ae6" -> "sha256:9625a85d2eebc0466171cc5265c8b31efc430de2b70ad8d060c8010d8f1226ce" [label=""];
  "sha256:9625a85d2eebc0466171cc5265c8b31efc430de2b70ad8d060c8010d8f1226ce" -> "sha256:371e7c836ba9f0d202caf9b2c8ccc2e94aeeed833d0ba76da8c81b8edbb9d712" [label=""];
}

