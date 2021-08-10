[app/sources/198360403.Dockerfile]
digraph {
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" [label="docker-image://docker.io/library/centos:6" shape="ellipse"];
  "sha256:e9fa9dbe4f5b23049ad36323ec4bf439e7ca694c0688cfe41047dd20e115eed0" [label="/bin/sh -c yum -y update;     yum clean all" shape="box"];
  "sha256:b3dc1dfc0286f6073d641ece9aab226a5c50cab2396381e1533fc1b04f5d6315" [label="/bin/sh -c yum -y install java-1.7.0-openjdk-devel     which     telnet     unzip     openssh-server     sudo     openssh-clients     iputils     iproute     httpd-tools     wget     tar;     yum clean all" shape="box"];
  "sha256:7a3e64e81d69f3886d4308e5859f117efe9c501536d3f41635f33a8c7b5bfe41" [label="/bin/sh -c mkdir -p /opt/sonatype-nexus /opt/sonatype-work" shape="box"];
  "sha256:c82e746bcf40a1f5d42d29d67a752b9b86e792e7f2087e7a47efc2eb38c76c18" [label="/bin/sh -c wget -O /tmp/nexus-latest-bundle.tar.gz http://download.sonatype.com/nexus/oss/nexus-$NEXUS_VERSION-bundle.tar.gz" shape="box"];
  "sha256:bbce17e2f59c71418e79efd1e72989724eaacea2ed71913597f8ffae2ff322b6" [label="/bin/sh -c tar xzvf /tmp/nexus-latest-bundle.tar.gz -C /opt/sonatype-nexus --strip-components=1" shape="box"];
  "sha256:19d6086adcfb9d6946459be7b9b41071f99a6e5cfa8d69ad5f1b9a170edfd3a9" [label="/bin/sh -c useradd --user-group --system --home-dir /opt/sonatype-nexus nexus" shape="box"];
  "sha256:f5d4cdd0b5ebcb894804d21748c2257566d4bf2bc2fee451274b1ed9e78905a8" [label="local://context" shape="ellipse"];
  "sha256:a2326b7b88a3ee91db1a5f62206f3c76ba3bd1ae23bd9bbc355663bdb15711a2" [label="copy{src=/nexus.xml, dest=/opt/sonatype-work/nexus/conf/nexus.xml}" shape="note"];
  "sha256:60b84dfd8948e1c9c4c1b244ecc82725dd70c690f9c73939c8c15cd594d66b69" [label="/bin/sh -c chown -R nexus:nexus /opt/sonatype-work /opt/sonatype-nexus" shape="box"];
  "sha256:41228f023e6bf9c37970d7fe72ba64e0b5c4db0c991580b30a2bd3897700f267" [label="/bin/sh -c echo \"#!/bin/bash\" > /opt/start-nexus.sh" shape="box"];
  "sha256:cf56245aca4e4a38684d3305eb35e57e09294e14a06ec3f59df503ab1031f89e" [label="/bin/sh -c echo \"su -c \\\"/opt/sonatype-nexus/bin/nexus console\\\" - nexus\" >> /opt/start-nexus.sh" shape="box"];
  "sha256:44df308ad71d83762f74a49d10cff01cc1a55df06bac2fe30a274c04914ecf9e" [label="/bin/sh -c chmod +x /opt/start-nexus.sh" shape="box"];
  "sha256:21f7e9e15e5e17ff7d3d60c8faf93f2e31ebe39b00209d00f62f66f515f86db2" [label="sha256:21f7e9e15e5e17ff7d3d60c8faf93f2e31ebe39b00209d00f62f66f515f86db2" shape="plaintext"];
  "sha256:2c13a60162907574852963997ba23911204e046f863480dcbd1d303615eb4394" -> "sha256:e9fa9dbe4f5b23049ad36323ec4bf439e7ca694c0688cfe41047dd20e115eed0" [label=""];
  "sha256:e9fa9dbe4f5b23049ad36323ec4bf439e7ca694c0688cfe41047dd20e115eed0" -> "sha256:b3dc1dfc0286f6073d641ece9aab226a5c50cab2396381e1533fc1b04f5d6315" [label=""];
  "sha256:b3dc1dfc0286f6073d641ece9aab226a5c50cab2396381e1533fc1b04f5d6315" -> "sha256:7a3e64e81d69f3886d4308e5859f117efe9c501536d3f41635f33a8c7b5bfe41" [label=""];
  "sha256:7a3e64e81d69f3886d4308e5859f117efe9c501536d3f41635f33a8c7b5bfe41" -> "sha256:c82e746bcf40a1f5d42d29d67a752b9b86e792e7f2087e7a47efc2eb38c76c18" [label=""];
  "sha256:c82e746bcf40a1f5d42d29d67a752b9b86e792e7f2087e7a47efc2eb38c76c18" -> "sha256:bbce17e2f59c71418e79efd1e72989724eaacea2ed71913597f8ffae2ff322b6" [label=""];
  "sha256:bbce17e2f59c71418e79efd1e72989724eaacea2ed71913597f8ffae2ff322b6" -> "sha256:19d6086adcfb9d6946459be7b9b41071f99a6e5cfa8d69ad5f1b9a170edfd3a9" [label=""];
  "sha256:19d6086adcfb9d6946459be7b9b41071f99a6e5cfa8d69ad5f1b9a170edfd3a9" -> "sha256:a2326b7b88a3ee91db1a5f62206f3c76ba3bd1ae23bd9bbc355663bdb15711a2" [label=""];
  "sha256:f5d4cdd0b5ebcb894804d21748c2257566d4bf2bc2fee451274b1ed9e78905a8" -> "sha256:a2326b7b88a3ee91db1a5f62206f3c76ba3bd1ae23bd9bbc355663bdb15711a2" [label=""];
  "sha256:a2326b7b88a3ee91db1a5f62206f3c76ba3bd1ae23bd9bbc355663bdb15711a2" -> "sha256:60b84dfd8948e1c9c4c1b244ecc82725dd70c690f9c73939c8c15cd594d66b69" [label=""];
  "sha256:60b84dfd8948e1c9c4c1b244ecc82725dd70c690f9c73939c8c15cd594d66b69" -> "sha256:41228f023e6bf9c37970d7fe72ba64e0b5c4db0c991580b30a2bd3897700f267" [label=""];
  "sha256:41228f023e6bf9c37970d7fe72ba64e0b5c4db0c991580b30a2bd3897700f267" -> "sha256:cf56245aca4e4a38684d3305eb35e57e09294e14a06ec3f59df503ab1031f89e" [label=""];
  "sha256:cf56245aca4e4a38684d3305eb35e57e09294e14a06ec3f59df503ab1031f89e" -> "sha256:44df308ad71d83762f74a49d10cff01cc1a55df06bac2fe30a274c04914ecf9e" [label=""];
  "sha256:44df308ad71d83762f74a49d10cff01cc1a55df06bac2fe30a274c04914ecf9e" -> "sha256:21f7e9e15e5e17ff7d3d60c8faf93f2e31ebe39b00209d00f62f66f515f86db2" [label=""];
}

