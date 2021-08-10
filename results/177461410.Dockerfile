[app/sources/177461410.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:4024bea83d1c269703b14993646b91cc5480a2cb6ff93c882c9140c12792f49d" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:3bd999fcc4061f27d219b42329d446d27c77cf54d06548175d428d2707e4b8de" [label="mkdir{path=/root}" shape="note"];
  "sha256:ac1ab5b4dc4e81d63965cd2e3bf776e764f2c4da26f0e7081e60c6bdb5355d1a" [label="/bin/sh -c apt-get install -y build-essential devscripts fakeroot quilt dh-make automake libdistro-info-perl less vim git curl" shape="box"];
  "sha256:dc00dbc8469c8179354490a0e749ad6150a34b8dac783c1f1fb2fffb73e870d6" [label="/bin/sh -c git clone https://github.com/Aseman-Land/libqtelegram-aseman-edition.git" shape="box"];
  "sha256:4886eb3e40974169746a4a164164b429a5d8cd79c98edd6bbec7eb4333dbb9b7" [label="/bin/sh -c apt-get -y install libssl-dev pkg-config qt5-default qtbase5-dev qtmultimedia5-dev cmake" shape="box"];
  "sha256:fe2d539024f324936e53bdead2ba050cf7d2161b9c10a6d7c74a48c13e6a7bd3" [label="/bin/sh -c cd libqtelegram-aseman-edition; dpkg-buildpackage -b" shape="box"];
  "sha256:1d64c92c62e84e901c5cf48bebbe38109c2f6e3a3c2f6e637b83c45cd4b408e3" [label="/bin/sh -c dpkg -i libqtelegram-ae_0.2-1aseman1-vivid_amd64.deb  libqtelegram-ae-dev_0.2-1aseman1-vivid_amd64.deb" shape="box"];
  "sha256:06aa31bf4a4cade91b163886dbd38b24b3a0a381f5dacd7723c65cd77284a22f" [label="/bin/sh -c apt-get -y install libqt5multimedia5-plugins libqt5qml5 qml-module-qtgraphicaleffects qml-module-qtquick-controls qtdeclarative5-dev libqt5webkit5-dev libappindicator-dev" shape="box"];
  "sha256:62addb0e0ae83b6dd5978fc777d1c3a99fd2132bd3e02e9aa91e79baceba2dff" [label="/bin/sh -c git clone https://github.com/abate/Cutegram.git" shape="box"];
  "sha256:d1a7f9128a7146a301fd814ec9baefb271565af1cfe48fe3e55cfd14108cc13e" [label="/bin/sh -c cd Cutegram; dpkg-buildpackage -b" shape="box"];
  "sha256:a43bd70f9662718ecb4979583fac8dcc32d8b072293cb351edf6554a60962da0" [label="sha256:a43bd70f9662718ecb4979583fac8dcc32d8b072293cb351edf6554a60962da0" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:4024bea83d1c269703b14993646b91cc5480a2cb6ff93c882c9140c12792f49d" [label=""];
  "sha256:4024bea83d1c269703b14993646b91cc5480a2cb6ff93c882c9140c12792f49d" -> "sha256:3bd999fcc4061f27d219b42329d446d27c77cf54d06548175d428d2707e4b8de" [label=""];
  "sha256:3bd999fcc4061f27d219b42329d446d27c77cf54d06548175d428d2707e4b8de" -> "sha256:ac1ab5b4dc4e81d63965cd2e3bf776e764f2c4da26f0e7081e60c6bdb5355d1a" [label=""];
  "sha256:ac1ab5b4dc4e81d63965cd2e3bf776e764f2c4da26f0e7081e60c6bdb5355d1a" -> "sha256:dc00dbc8469c8179354490a0e749ad6150a34b8dac783c1f1fb2fffb73e870d6" [label=""];
  "sha256:dc00dbc8469c8179354490a0e749ad6150a34b8dac783c1f1fb2fffb73e870d6" -> "sha256:4886eb3e40974169746a4a164164b429a5d8cd79c98edd6bbec7eb4333dbb9b7" [label=""];
  "sha256:4886eb3e40974169746a4a164164b429a5d8cd79c98edd6bbec7eb4333dbb9b7" -> "sha256:fe2d539024f324936e53bdead2ba050cf7d2161b9c10a6d7c74a48c13e6a7bd3" [label=""];
  "sha256:fe2d539024f324936e53bdead2ba050cf7d2161b9c10a6d7c74a48c13e6a7bd3" -> "sha256:1d64c92c62e84e901c5cf48bebbe38109c2f6e3a3c2f6e637b83c45cd4b408e3" [label=""];
  "sha256:1d64c92c62e84e901c5cf48bebbe38109c2f6e3a3c2f6e637b83c45cd4b408e3" -> "sha256:06aa31bf4a4cade91b163886dbd38b24b3a0a381f5dacd7723c65cd77284a22f" [label=""];
  "sha256:06aa31bf4a4cade91b163886dbd38b24b3a0a381f5dacd7723c65cd77284a22f" -> "sha256:62addb0e0ae83b6dd5978fc777d1c3a99fd2132bd3e02e9aa91e79baceba2dff" [label=""];
  "sha256:62addb0e0ae83b6dd5978fc777d1c3a99fd2132bd3e02e9aa91e79baceba2dff" -> "sha256:d1a7f9128a7146a301fd814ec9baefb271565af1cfe48fe3e55cfd14108cc13e" [label=""];
  "sha256:d1a7f9128a7146a301fd814ec9baefb271565af1cfe48fe3e55cfd14108cc13e" -> "sha256:a43bd70f9662718ecb4979583fac8dcc32d8b072293cb351edf6554a60962da0" [label=""];
}

