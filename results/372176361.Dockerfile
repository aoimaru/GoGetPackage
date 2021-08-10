[app/sources/372176361.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:ff7b74cd212530cd540bd13e8b361ce9befd687abd8b4e0ff10e10d2529a03e2" [label="/bin/sh -c apt-get -y update  && apt-get -y install         autoconf         automake         bison         debhelper         debian-keyring         default-jdk         devscripts         flex         gcc         git         libcurl4-openssl-dev         libhiredis-dev         libltdl-dev         libmysqlclient-dev         libpq-dev         libtool         libvarnishapi-dev         libyajl-dev         lsb-release         make         pkg-config         python-dev  && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:92671e4ddb6bd4ecc60037b419516ddc55005dbe7d9b4784b60ab418845531fa" [label="sha256:92671e4ddb6bd4ecc60037b419516ddc55005dbe7d9b4784b60ab418845531fa" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:ff7b74cd212530cd540bd13e8b361ce9befd687abd8b4e0ff10e10d2529a03e2" [label=""];
  "sha256:ff7b74cd212530cd540bd13e8b361ce9befd687abd8b4e0ff10e10d2529a03e2" -> "sha256:92671e4ddb6bd4ecc60037b419516ddc55005dbe7d9b4784b60ab418845531fa" [label=""];
}

