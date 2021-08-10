[app/sources/318581685.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:01a04e524529fb3c489e89430b9b2998eb06e5e8391cac4dfbfeace9a423030e" [label="mkdir{path=/root}" shape="note"];
  "sha256:2ceb955459593bce0da72b3c9229ec0f235c0e62af4715fc6f2f5bb3f27d20d4" [label="/bin/sh -c yum install -y gcc gcc-c++ make epel-release bzip2 iproute openssh-server     && yum install -y wget unzip     && useradd antidote -d /home/antidote -m     && echo antidotepassword | passwd --stdin antidote" shape="box"];
  "sha256:0b72830fc29f0f909170b18a4d7ece674062452c6ad3d9c45cf3b05e78f8fd1f" [label="mkdir{path=/home/antidote}" shape="note"];
  "sha256:75c85edc7f98383fc9c3cea57780f2bb83b0a51a67fec17deb902160b9a93c5f" [label="/bin/sh -c wget https://github.com/pjsip/pjproject/archive/2.8.zip     && unzip 2.8.zip     && cd pjproject-2.8     && ./configure     && make dep     && make     && make clean" shape="box"];
  "sha256:bf55ab10864bc20c82bbc87482624049c7f6517202cda2952e513c359016fae7" [label="/bin/sh -c yum erase -y gcc gcc-c++ make epel-release bzip2 wget     && yum -y autoremove     && mkdir /var/run/sshd     && yum clean all     && rm -rf /var/cache/yum" shape="box"];
  "sha256:23ce8a9ce654993347e28d7fda20134af7fd7a3662e4d180b0dfe9c5355348c8" [label="local://context" shape="ellipse"];
  "sha256:1c023c0c6d116a62b11dfea48c44fbb059f03b836361850f9ec9b9473fe4292e" [label="copy{src=/launch.sh, dest=/root/launch.sh}" shape="note"];
  "sha256:ea603c82d19c51d4302c71c12a7c9e6a4c5d52cc5d665c6da6eb59debe533791" [label="sha256:ea603c82d19c51d4302c71c12a7c9e6a4c5d52cc5d665c6da6eb59debe533791" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:01a04e524529fb3c489e89430b9b2998eb06e5e8391cac4dfbfeace9a423030e" [label=""];
  "sha256:01a04e524529fb3c489e89430b9b2998eb06e5e8391cac4dfbfeace9a423030e" -> "sha256:2ceb955459593bce0da72b3c9229ec0f235c0e62af4715fc6f2f5bb3f27d20d4" [label=""];
  "sha256:2ceb955459593bce0da72b3c9229ec0f235c0e62af4715fc6f2f5bb3f27d20d4" -> "sha256:0b72830fc29f0f909170b18a4d7ece674062452c6ad3d9c45cf3b05e78f8fd1f" [label=""];
  "sha256:0b72830fc29f0f909170b18a4d7ece674062452c6ad3d9c45cf3b05e78f8fd1f" -> "sha256:75c85edc7f98383fc9c3cea57780f2bb83b0a51a67fec17deb902160b9a93c5f" [label=""];
  "sha256:75c85edc7f98383fc9c3cea57780f2bb83b0a51a67fec17deb902160b9a93c5f" -> "sha256:bf55ab10864bc20c82bbc87482624049c7f6517202cda2952e513c359016fae7" [label=""];
  "sha256:bf55ab10864bc20c82bbc87482624049c7f6517202cda2952e513c359016fae7" -> "sha256:1c023c0c6d116a62b11dfea48c44fbb059f03b836361850f9ec9b9473fe4292e" [label=""];
  "sha256:23ce8a9ce654993347e28d7fda20134af7fd7a3662e4d180b0dfe9c5355348c8" -> "sha256:1c023c0c6d116a62b11dfea48c44fbb059f03b836361850f9ec9b9473fe4292e" [label=""];
  "sha256:1c023c0c6d116a62b11dfea48c44fbb059f03b836361850f9ec9b9473fe4292e" -> "sha256:ea603c82d19c51d4302c71c12a7c9e6a4c5d52cc5d665c6da6eb59debe533791" [label=""];
}

