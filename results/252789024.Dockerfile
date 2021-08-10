[app/sources/252789024.Dockerfile]
digraph {
  "sha256:f16b026d03b70d7f9250e03b68ae5690328aff7ca188b8edc85215ab2a85f704" [label="docker-image://docker.io/drupalci/db-base:latest" shape="ellipse"];
  "sha256:958fd87ad14da46bded46c7d6216c33cd41e8cf34844373c52fa921baaf987b8" [label="/bin/sh -c apt-get -y install mysql-server netcat" shape="box"];
  "sha256:29b6e6e2ce9133e0b2b551b73d9443f2c5b9d9d291dcf7fd5c45260fc20864ac" [label="/bin/sh -c apt-get clean && apt-get autoclean && apt-get -y autoremove" shape="box"];
  "sha256:b0dfb0d87dbed6c58715532d9d11af54da292ded1d64abf843e590f6b16664dc" [label="local://context" shape="ellipse"];
  "sha256:b4bd89077e8ad2121fbec91e02280f29b57a5fc17237cfcfeb1d07f3bc877f10" [label="copy{src=/conf/my.cnf, dest=/etc/mysql/my.cnf}" shape="note"];
  "sha256:3e1f1bdf30079b43daf83f718e4525ce33d914e598f338f4cdb05ce8fbc94e70" [label="/bin/sh -c rm -rf /var/lib/mysql/*" shape="box"];
  "sha256:dafb8b8a21e0a4bbdd33f6ad8f3da43e6982b311191862053d7c3bce52ef65ab" [label="copy{src=/conf/startup.sh, dest=/opt/startup.sh}" shape="note"];
  "sha256:b483b35a09593d9f088a2d4d80d3d1ae0e89348093f33d3d82945ec8c4775b9b" [label="sha256:b483b35a09593d9f088a2d4d80d3d1ae0e89348093f33d3d82945ec8c4775b9b" shape="plaintext"];
  "sha256:f16b026d03b70d7f9250e03b68ae5690328aff7ca188b8edc85215ab2a85f704" -> "sha256:958fd87ad14da46bded46c7d6216c33cd41e8cf34844373c52fa921baaf987b8" [label=""];
  "sha256:958fd87ad14da46bded46c7d6216c33cd41e8cf34844373c52fa921baaf987b8" -> "sha256:29b6e6e2ce9133e0b2b551b73d9443f2c5b9d9d291dcf7fd5c45260fc20864ac" [label=""];
  "sha256:29b6e6e2ce9133e0b2b551b73d9443f2c5b9d9d291dcf7fd5c45260fc20864ac" -> "sha256:b4bd89077e8ad2121fbec91e02280f29b57a5fc17237cfcfeb1d07f3bc877f10" [label=""];
  "sha256:b0dfb0d87dbed6c58715532d9d11af54da292ded1d64abf843e590f6b16664dc" -> "sha256:b4bd89077e8ad2121fbec91e02280f29b57a5fc17237cfcfeb1d07f3bc877f10" [label=""];
  "sha256:b4bd89077e8ad2121fbec91e02280f29b57a5fc17237cfcfeb1d07f3bc877f10" -> "sha256:3e1f1bdf30079b43daf83f718e4525ce33d914e598f338f4cdb05ce8fbc94e70" [label=""];
  "sha256:3e1f1bdf30079b43daf83f718e4525ce33d914e598f338f4cdb05ce8fbc94e70" -> "sha256:dafb8b8a21e0a4bbdd33f6ad8f3da43e6982b311191862053d7c3bce52ef65ab" [label=""];
  "sha256:b0dfb0d87dbed6c58715532d9d11af54da292ded1d64abf843e590f6b16664dc" -> "sha256:dafb8b8a21e0a4bbdd33f6ad8f3da43e6982b311191862053d7c3bce52ef65ab" [label=""];
  "sha256:dafb8b8a21e0a4bbdd33f6ad8f3da43e6982b311191862053d7c3bce52ef65ab" -> "sha256:b483b35a09593d9f088a2d4d80d3d1ae0e89348093f33d3d82945ec8c4775b9b" [label=""];
}

