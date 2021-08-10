[app/sources/442976653.Dockerfile]
digraph {
  "sha256:ca687d8b0ee1cd3950e45a640604853d2f6c502990a65b770492ebed79871d88" [label="docker-image://docker.io/stackbrew/ubuntu:14.04" shape="ellipse"];
  "sha256:0bb96b7abe759380646c1a20cf4a5f1b8d8f20635a627bc019b271c46d21fff7" [label="/bin/sh -c echo \"deb http://archive.ubuntu.com/ubuntu trusty main universe\" > /etc/apt/sources.list" shape="box"];
  "sha256:f71089e899a91a198d9b6a0ad9832f566a6d1d8da9da4afe1ededec1cdb58eb7" [label="/bin/sh -c apt-get update && apt-get -y install   make   ruby-dev   python-pip   python-dev   libz-dev   protobuf-compiler   python-protobuf" shape="box"];
  "sha256:2e8f91b9433854d2bc82c37e2007ce7ee2e17a796032ec8a03fe48f002efed60" [label="/bin/sh -c gem install fpm" shape="box"];
  "sha256:ce96f0c53ae41c9937e041f751e035ad032714d4d578f886ce1f886c5cdb9cb8" [label="/bin/sh -c pip install bbfreeze" shape="box"];
  "sha256:c13fb7ce09a1748137bc47f386886868242d9eda660646c0d687e9f55c378ac5" [label="mkdir{path=/container}" shape="note"];
  "sha256:64acae70ed38d004ff26cb772c79c77439d9384423c492641165511b0752a4b7" [label="sha256:64acae70ed38d004ff26cb772c79c77439d9384423c492641165511b0752a4b7" shape="plaintext"];
  "sha256:ca687d8b0ee1cd3950e45a640604853d2f6c502990a65b770492ebed79871d88" -> "sha256:0bb96b7abe759380646c1a20cf4a5f1b8d8f20635a627bc019b271c46d21fff7" [label=""];
  "sha256:0bb96b7abe759380646c1a20cf4a5f1b8d8f20635a627bc019b271c46d21fff7" -> "sha256:f71089e899a91a198d9b6a0ad9832f566a6d1d8da9da4afe1ededec1cdb58eb7" [label=""];
  "sha256:f71089e899a91a198d9b6a0ad9832f566a6d1d8da9da4afe1ededec1cdb58eb7" -> "sha256:2e8f91b9433854d2bc82c37e2007ce7ee2e17a796032ec8a03fe48f002efed60" [label=""];
  "sha256:2e8f91b9433854d2bc82c37e2007ce7ee2e17a796032ec8a03fe48f002efed60" -> "sha256:ce96f0c53ae41c9937e041f751e035ad032714d4d578f886ce1f886c5cdb9cb8" [label=""];
  "sha256:ce96f0c53ae41c9937e041f751e035ad032714d4d578f886ce1f886c5cdb9cb8" -> "sha256:c13fb7ce09a1748137bc47f386886868242d9eda660646c0d687e9f55c378ac5" [label=""];
  "sha256:c13fb7ce09a1748137bc47f386886868242d9eda660646c0d687e9f55c378ac5" -> "sha256:64acae70ed38d004ff26cb772c79c77439d9384423c492641165511b0752a4b7" [label=""];
}

