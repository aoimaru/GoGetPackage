[app/sources/222158490.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:1430e19b09324ae1303899b7ca30afb01b669145aac9bd159b92246f9cebabc9" [label="/bin/sh -c apt-get update && apt-get install -y \tgit \tbuild-essential \tgawk \tpkg-config \tgettext \tautomake \tautoconf \tlibtool \tbison \tflex \tzlib1g-dev \tlibgmp3-dev \tlibmpfr-dev \tlibmpc-dev \ttexinfo \tmc \tlibncurses5-dev \tnano \tvim" shape="box"];
  "sha256:2c23f8959903dbae4d5b04c41709fe6baa944a630d6c1343ad5862115e3d851f" [label="/bin/sh -c git clone https://bitbucket.org/padavan/rt-n56u.git /opt/rt-n56u" shape="box"];
  "sha256:ccb76c474fc7d3ce94d1529c1fe75e588cf35ead67dbffc8135924a0ac956f14" [label="/bin/sh -c cd /opt/rt-n56u/toolchain-mipsel && ./clean_sources && ./build_toolchain_3.4.x" shape="box"];
  "sha256:5d3f5ee7401fc1a71cd4952a6bdfb84b08de34b5ce61a85ff83966d4611b79f1" [label="sha256:5d3f5ee7401fc1a71cd4952a6bdfb84b08de34b5ce61a85ff83966d4611b79f1" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:1430e19b09324ae1303899b7ca30afb01b669145aac9bd159b92246f9cebabc9" [label=""];
  "sha256:1430e19b09324ae1303899b7ca30afb01b669145aac9bd159b92246f9cebabc9" -> "sha256:2c23f8959903dbae4d5b04c41709fe6baa944a630d6c1343ad5862115e3d851f" [label=""];
  "sha256:2c23f8959903dbae4d5b04c41709fe6baa944a630d6c1343ad5862115e3d851f" -> "sha256:ccb76c474fc7d3ce94d1529c1fe75e588cf35ead67dbffc8135924a0ac956f14" [label=""];
  "sha256:ccb76c474fc7d3ce94d1529c1fe75e588cf35ead67dbffc8135924a0ac956f14" -> "sha256:5d3f5ee7401fc1a71cd4952a6bdfb84b08de34b5ce61a85ff83966d4611b79f1" [label=""];
}

