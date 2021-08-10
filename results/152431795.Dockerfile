[app/sources/152431795.Dockerfile]
digraph {
  "sha256:4b47dd17a27205cc20f840afe15fc1c685bc22c14c107126365a72a6f8851951" [label="local://context" shape="ellipse"];
  "sha256:3250a80f970c73638896090134c0acfa2d690ebe3d4ecf0a85ccd43d4af182e0" [label="docker-image://docker.io/phusion/baseimage:0.11" shape="ellipse"];
  "sha256:6a75b9e44b03c2034f3cca7db7b5dfaf797d4e98950881529350f5b540eebdd0" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -q -y git-core software-properties-common &&   apt-add-repository ppa:webupd8team/java -y &&   echo oracle-java${JAVA_VERSION}-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections &&   DEBIAN_FRONTEND=noninteractive apt-get update &&  apt-get install oracle-java${JAVA_VERSION}-installer -y &&   mkdir /srv/www" shape="box"];
  "sha256:34afa637315920eab025b3e5a312ab0d20eb4fac038ce40631f47370a17677a6" [label="copy{src=/config/ssh-keys, dest=/root/ssh-keys}" shape="note"];
  "sha256:49ade57f700ae356a780d77885f90bd90e4ffb4b0f391429781f4dbc4e6f2bca" [label="copy{src=/install-jira.sh, dest=/root/}" shape="note"];
  "sha256:9175a6dcdfc804dd9890901d23cb95217f1b16f485da7c064037d1a34972c083" [label="/bin/sh -c /root/install-jira.sh" shape="box"];
  "sha256:33c5c97da9483df8a433f2b9376a0fd45d46c69971674663a70f49335b52c7ce" [label="mkdir{path=/opt/jira-home}" shape="note"];
  "sha256:ffcf01f7384d995edd6ccd084da47af56c9ad503d71ef30bd0057a2cedfe8724" [label="/bin/sh -c rm -f /opt/jira-home/.jira-home.lock" shape="box"];
  "sha256:c542c23bb1052d1d611464e4c193e161f062496e9e2e6a3d618f40e1b97e3972" [label="/bin/sh -c curl -sSL http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-${MYSQL_CONNECTOR_VERSION}.tar.gz -o /tmp/mysql-connector-java.tar.gz &&   tar xzf /tmp/mysql-connector-java.tar.gz -C /tmp &&   cp /tmp/mysql-connector-java-${MYSQL_CONNECTOR_VERSION}/mysql-connector-java-${MYSQL_CONNECTOR_VERSION}-bin.jar /opt/jira/lib/" shape="box"];
  "sha256:44ce2e07b2e300ad4ab652c8de43169f036f4f08841ea88a7d360bcc599ae9f6" [label="/bin/sh -c mkdir -p /etc/my_init.d" shape="box"];
  "sha256:57ff8b3d8b2d12b3d41f58e83853f37035cfaebb8a6402782cdf60439937482b" [label="copy{src=/setup-server.sh, dest=/etc/my_init.d/setup-server.sh}" shape="note"];
  "sha256:a0cb52bc5ed0f0f0a73f88ee31acf4ac218855dd37f97bb367be31abfce7552a" [label="copy{src=/start-jira.sh, dest=/etc/my_init.d/start-jira.sh}" shape="note"];
  "sha256:471baff0e9a80278e8f4217e330c868c5f95f58714c9fbf5a68d05a3e6794687" [label="sha256:471baff0e9a80278e8f4217e330c868c5f95f58714c9fbf5a68d05a3e6794687" shape="plaintext"];
  "sha256:3250a80f970c73638896090134c0acfa2d690ebe3d4ecf0a85ccd43d4af182e0" -> "sha256:6a75b9e44b03c2034f3cca7db7b5dfaf797d4e98950881529350f5b540eebdd0" [label=""];
  "sha256:6a75b9e44b03c2034f3cca7db7b5dfaf797d4e98950881529350f5b540eebdd0" -> "sha256:34afa637315920eab025b3e5a312ab0d20eb4fac038ce40631f47370a17677a6" [label=""];
  "sha256:4b47dd17a27205cc20f840afe15fc1c685bc22c14c107126365a72a6f8851951" -> "sha256:34afa637315920eab025b3e5a312ab0d20eb4fac038ce40631f47370a17677a6" [label=""];
  "sha256:34afa637315920eab025b3e5a312ab0d20eb4fac038ce40631f47370a17677a6" -> "sha256:49ade57f700ae356a780d77885f90bd90e4ffb4b0f391429781f4dbc4e6f2bca" [label=""];
  "sha256:4b47dd17a27205cc20f840afe15fc1c685bc22c14c107126365a72a6f8851951" -> "sha256:49ade57f700ae356a780d77885f90bd90e4ffb4b0f391429781f4dbc4e6f2bca" [label=""];
  "sha256:49ade57f700ae356a780d77885f90bd90e4ffb4b0f391429781f4dbc4e6f2bca" -> "sha256:9175a6dcdfc804dd9890901d23cb95217f1b16f485da7c064037d1a34972c083" [label=""];
  "sha256:9175a6dcdfc804dd9890901d23cb95217f1b16f485da7c064037d1a34972c083" -> "sha256:33c5c97da9483df8a433f2b9376a0fd45d46c69971674663a70f49335b52c7ce" [label=""];
  "sha256:33c5c97da9483df8a433f2b9376a0fd45d46c69971674663a70f49335b52c7ce" -> "sha256:ffcf01f7384d995edd6ccd084da47af56c9ad503d71ef30bd0057a2cedfe8724" [label=""];
  "sha256:ffcf01f7384d995edd6ccd084da47af56c9ad503d71ef30bd0057a2cedfe8724" -> "sha256:c542c23bb1052d1d611464e4c193e161f062496e9e2e6a3d618f40e1b97e3972" [label=""];
  "sha256:c542c23bb1052d1d611464e4c193e161f062496e9e2e6a3d618f40e1b97e3972" -> "sha256:44ce2e07b2e300ad4ab652c8de43169f036f4f08841ea88a7d360bcc599ae9f6" [label=""];
  "sha256:44ce2e07b2e300ad4ab652c8de43169f036f4f08841ea88a7d360bcc599ae9f6" -> "sha256:57ff8b3d8b2d12b3d41f58e83853f37035cfaebb8a6402782cdf60439937482b" [label=""];
  "sha256:4b47dd17a27205cc20f840afe15fc1c685bc22c14c107126365a72a6f8851951" -> "sha256:57ff8b3d8b2d12b3d41f58e83853f37035cfaebb8a6402782cdf60439937482b" [label=""];
  "sha256:57ff8b3d8b2d12b3d41f58e83853f37035cfaebb8a6402782cdf60439937482b" -> "sha256:a0cb52bc5ed0f0f0a73f88ee31acf4ac218855dd37f97bb367be31abfce7552a" [label=""];
  "sha256:4b47dd17a27205cc20f840afe15fc1c685bc22c14c107126365a72a6f8851951" -> "sha256:a0cb52bc5ed0f0f0a73f88ee31acf4ac218855dd37f97bb367be31abfce7552a" [label=""];
  "sha256:a0cb52bc5ed0f0f0a73f88ee31acf4ac218855dd37f97bb367be31abfce7552a" -> "sha256:471baff0e9a80278e8f4217e330c868c5f95f58714c9fbf5a68d05a3e6794687" [label=""];
}

