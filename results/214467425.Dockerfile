[app/sources/214467425.Dockerfile]
digraph {
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" [label="docker-image://docker.io/library/ubuntu:xenial" shape="ellipse"];
  "sha256:19cec189dda0251a0c2e0c883f9acd82e966fe618fbcba0cbf52cee47a33c165" [label="/bin/sh -c apt-get -y --force-yes update" shape="box"];
  "sha256:157419ced8e953b317c2b352713495893a0cf4a4a0308bb5c08ba36c8bf68bc3" [label="/bin/sh -c apt-get -y --force-yes  install locales" shape="box"];
  "sha256:9f0ab1c8c151e19a9828cdd5184de94341ef26cc8f5e1908cccbcdcc8122f53e" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:7343fe1c81408e454ffefcb1357197993fb50793fb4aae7697e930b44f1c36ba" [label="/bin/sh -c apt-get -y --force-yes upgrade" shape="box"];
  "sha256:13bd48d5ae7fc3f92d7e801210dfb1ad39997910222dcd7ecc8bf6c01f1d725f" [label="/bin/sh -c apt-get -y --force-yes install software-properties-common curl git wget unzip nano build-essential autoconf libxml2-dev libssl-dev libbz2-dev libcurl3-dev libjpeg-dev libpng-dev libfreetype6-dev libgmp3-dev libc-client-dev libldap2-dev libmcrypt-dev libmhash-dev freetds-dev libz-dev ncurses-dev libpcre3-dev libsqlite-dev libaspell-dev libreadline6-dev librecode-dev libsnmp-dev libtidy-dev libxslt-dev" shape="box"];
  "sha256:9ea5de8f8ce842fe40951a3c2e3072ade5204e4abf81ac334065be320a325b22" [label="/bin/sh -c apt-get -y --force-yes install ruby-dev debhelper python3-dev devscripts libxml2-dev" shape="box"];
  "sha256:505a7ea7c7c5e858ea08faab6df20f160af61d3bf8f586153ce566ea89028144" [label="/bin/sh -c apt-get -y --force-yes install python3-pip python3-setuptools libpython3-dev" shape="box"];
  "sha256:b6babefc13330181cd1f2528b5ff635cdc777645d3f774e325f758129f96e5ef" [label="/bin/sh -c apt-get -y --force-yes install python-pip python-setuptools libpython-dev" shape="box"];
  "sha256:034cb18b8cede3636c5a48aefc70c86fef06c6b75def7276d36ce9145c567ec2" [label="/bin/sh -c apt-get install locales" shape="box"];
  "sha256:fd9f228ca923571df9be5d35b04f3f7b58a23a5c8a393295b4d6c72cbb928be2" [label="/bin/sh -c add-apt-repository \"deb http://repo.aptly.info/ squeeze main\" -y" shape="box"];
  "sha256:b47428384e02123c385d71fea64b410869f65cd3846798f8ce26da9ff75a3041" [label="/bin/sh -c apt-key adv --keyserver keys.gnupg.net --recv-keys E083A3782A194991" shape="box"];
  "sha256:c0ec68c7d8bc8feb98c35bfc5f1e9250ee43009d77685dbfbbdcedf916231ce1" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:ddcbd307ee116186eb7cc72abb82ec204cab38859ed8c284694a4d22b9562432" [label="/bin/sh -c apt-get -yq --force-yes install dh-virtualenv goaccess aptly" shape="box"];
  "sha256:358d721e0d22fbe689bf3b04816e65e3314d65c8ce9e2ba96c25ef3ff1f7cfb0" [label="/bin/sh -c apt-get install postgresql libpq-dev postgresql-client postgresql-client-common -y" shape="box"];
  "sha256:f9d4d5b67aad34a5785cd1b6c2fcdb3527189ee8aad7fe73a3982f81e52391b9" [label="/bin/sh -c apt-get autoclean" shape="box"];
  "sha256:e23575141cdc949d96727c9486c9d1ead47f90346f274f247f51b5098c7c5d85" [label="local://context" shape="ellipse"];
  "sha256:4ceaf0d4ffb4ba61c75a8902f29f4269de891b351741a6462a2e0c45f267b8e6" [label="copy{src=/, dest=/home/}" shape="note"];
  "sha256:ebd718abcfcb6352601c8e1e19748ac39d30019ca42dc12319049c73f94d3dfb" [label="mkdir{path=/home}" shape="note"];
  "sha256:458259c60969b56e7e4b4b9c3114f50673af3b62e6f9a098e409a7c1123fc483" [label="sha256:458259c60969b56e7e4b4b9c3114f50673af3b62e6f9a098e409a7c1123fc483" shape="plaintext"];
  "sha256:14dd403f25ae9e519bd44f27dc17af7ce80f5a4f9f48ca88108364e67ec5d360" -> "sha256:19cec189dda0251a0c2e0c883f9acd82e966fe618fbcba0cbf52cee47a33c165" [label=""];
  "sha256:19cec189dda0251a0c2e0c883f9acd82e966fe618fbcba0cbf52cee47a33c165" -> "sha256:157419ced8e953b317c2b352713495893a0cf4a4a0308bb5c08ba36c8bf68bc3" [label=""];
  "sha256:157419ced8e953b317c2b352713495893a0cf4a4a0308bb5c08ba36c8bf68bc3" -> "sha256:9f0ab1c8c151e19a9828cdd5184de94341ef26cc8f5e1908cccbcdcc8122f53e" [label=""];
  "sha256:9f0ab1c8c151e19a9828cdd5184de94341ef26cc8f5e1908cccbcdcc8122f53e" -> "sha256:7343fe1c81408e454ffefcb1357197993fb50793fb4aae7697e930b44f1c36ba" [label=""];
  "sha256:7343fe1c81408e454ffefcb1357197993fb50793fb4aae7697e930b44f1c36ba" -> "sha256:13bd48d5ae7fc3f92d7e801210dfb1ad39997910222dcd7ecc8bf6c01f1d725f" [label=""];
  "sha256:13bd48d5ae7fc3f92d7e801210dfb1ad39997910222dcd7ecc8bf6c01f1d725f" -> "sha256:9ea5de8f8ce842fe40951a3c2e3072ade5204e4abf81ac334065be320a325b22" [label=""];
  "sha256:9ea5de8f8ce842fe40951a3c2e3072ade5204e4abf81ac334065be320a325b22" -> "sha256:505a7ea7c7c5e858ea08faab6df20f160af61d3bf8f586153ce566ea89028144" [label=""];
  "sha256:505a7ea7c7c5e858ea08faab6df20f160af61d3bf8f586153ce566ea89028144" -> "sha256:b6babefc13330181cd1f2528b5ff635cdc777645d3f774e325f758129f96e5ef" [label=""];
  "sha256:b6babefc13330181cd1f2528b5ff635cdc777645d3f774e325f758129f96e5ef" -> "sha256:034cb18b8cede3636c5a48aefc70c86fef06c6b75def7276d36ce9145c567ec2" [label=""];
  "sha256:034cb18b8cede3636c5a48aefc70c86fef06c6b75def7276d36ce9145c567ec2" -> "sha256:fd9f228ca923571df9be5d35b04f3f7b58a23a5c8a393295b4d6c72cbb928be2" [label=""];
  "sha256:fd9f228ca923571df9be5d35b04f3f7b58a23a5c8a393295b4d6c72cbb928be2" -> "sha256:b47428384e02123c385d71fea64b410869f65cd3846798f8ce26da9ff75a3041" [label=""];
  "sha256:b47428384e02123c385d71fea64b410869f65cd3846798f8ce26da9ff75a3041" -> "sha256:c0ec68c7d8bc8feb98c35bfc5f1e9250ee43009d77685dbfbbdcedf916231ce1" [label=""];
  "sha256:c0ec68c7d8bc8feb98c35bfc5f1e9250ee43009d77685dbfbbdcedf916231ce1" -> "sha256:ddcbd307ee116186eb7cc72abb82ec204cab38859ed8c284694a4d22b9562432" [label=""];
  "sha256:ddcbd307ee116186eb7cc72abb82ec204cab38859ed8c284694a4d22b9562432" -> "sha256:358d721e0d22fbe689bf3b04816e65e3314d65c8ce9e2ba96c25ef3ff1f7cfb0" [label=""];
  "sha256:358d721e0d22fbe689bf3b04816e65e3314d65c8ce9e2ba96c25ef3ff1f7cfb0" -> "sha256:f9d4d5b67aad34a5785cd1b6c2fcdb3527189ee8aad7fe73a3982f81e52391b9" [label=""];
  "sha256:f9d4d5b67aad34a5785cd1b6c2fcdb3527189ee8aad7fe73a3982f81e52391b9" -> "sha256:4ceaf0d4ffb4ba61c75a8902f29f4269de891b351741a6462a2e0c45f267b8e6" [label=""];
  "sha256:e23575141cdc949d96727c9486c9d1ead47f90346f274f247f51b5098c7c5d85" -> "sha256:4ceaf0d4ffb4ba61c75a8902f29f4269de891b351741a6462a2e0c45f267b8e6" [label=""];
  "sha256:4ceaf0d4ffb4ba61c75a8902f29f4269de891b351741a6462a2e0c45f267b8e6" -> "sha256:ebd718abcfcb6352601c8e1e19748ac39d30019ca42dc12319049c73f94d3dfb" [label=""];
  "sha256:ebd718abcfcb6352601c8e1e19748ac39d30019ca42dc12319049c73f94d3dfb" -> "sha256:458259c60969b56e7e4b4b9c3114f50673af3b62e6f9a098e409a7c1123fc483" [label=""];
}

