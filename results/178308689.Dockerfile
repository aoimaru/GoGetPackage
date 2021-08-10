[app/sources/178308689.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:7dc2c5b7456febd0940665d707a46417b6005afa47113d2f879d0521446cf342" [label="/bin/sh -c echo 'APT::NeverAutoRemove \"0\";' >> /etc/apt/apt.conf.d/01usersetting &&     echo 'APT::Get::AllowUnauthenticated \"1\";' >> /etc/apt/apt.conf.d/01usersetting &&     echo 'APT::Update::AllowUnauthenticated \"1\";' >> /etc/apt/apt.conf.d/01usersetting &&     echo 'APT::Install-Suggests \"0\";' >> /etc/apt/apt.conf.d/01usersetting &&     echo 'APT::Install-Recommends \"0\";' >> /etc/apt/apt.conf.d/01usersetting &&     echo 'APT::Get::Assume-Yes \"true\";' >> /etc/apt/apt.conf.d/01usersetting &&     echo 'APT::Get::force-yes \"true\";' >> /etc/apt/apt.conf.d/01usersetting &&     printf \"deb http://ftp.uk.debian.org/debian/ jessie main contrib non-free \\n             deb-src http://ftp.uk.debian.org/debian/ jessie main contrib non-free\\n\"              >> /etc/apt/sources.list &&     apt-get update &&     apt-get upgrade &&     apt-get install         nano         procps         wget &&     apt-get autoremove" shape="box"];
  "sha256:6139fa212e5cd1f26b0c422dcdbd1b7d460f68e9b3df13a19869da86344bbe3d" [label="sha256:6139fa212e5cd1f26b0c422dcdbd1b7d460f68e9b3df13a19869da86344bbe3d" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:7dc2c5b7456febd0940665d707a46417b6005afa47113d2f879d0521446cf342" [label=""];
  "sha256:7dc2c5b7456febd0940665d707a46417b6005afa47113d2f879d0521446cf342" -> "sha256:6139fa212e5cd1f26b0c422dcdbd1b7d460f68e9b3df13a19869da86344bbe3d" [label=""];
}

