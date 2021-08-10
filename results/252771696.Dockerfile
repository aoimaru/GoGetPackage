[app/sources/252771696.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:94d7c26db67da675f45d07c4e8905841b9339924a1553c6b2a724398e5218b78" [label="/bin/sh -c yum update -y && yum install -y java-1.8.0-openjdk-headless && yum clean all" shape="box"];
  "sha256:75108506a5f676d0e36087eda51f0495ef5980d0504044c63085637a67031b8e" [label="local://context" shape="ellipse"];
  "sha256:5f39899ae39563cdb5ced6388ba6a8cf86832f39928b4f0d40d47731cee09504" [label="copy{src=/start-kafka-manager.sh, dest=/kafka-manager/start-kafka-manager.sh}" shape="note"];
  "sha256:b4978c7e805decce7a47fc8de5e9792b26ecc0002351758877ecd844cade7838" [label="/bin/sh -c yum install -y java-1.8.0-openjdk-devel git wget unzip which rsync && mkdir -p /tmp && cd /tmp && git clone https://github.com/yahoo/kafka-manager && cd /tmp/kafka-manager && KM_VERSION=$(awk '/^version/ { gsub(/\"/,\"\",$NF); print $NF }' build.sbt) && echo 'scalacOptions ++= Seq(\"-Xmax-classfile-name\", \"200\")' >> build.sbt && ./sbt clean dist && unzip -d / ./target/universal/kafka-manager-${KM_VERSION}.zip && rsync -arv /kafka-manager-${KM_VERSION}/ /kafka-manager && rm -fr /kafka-manager-${KM_VERSION} && rm -fr /tmp/* /root/.sbt /root/.ivy2 && chmod +x /kafka-manager/start-kafka-manager.sh && yum autoremove -y java-1.8.0-openjdk-devel git wget unzip which && yum clean all" shape="box"];
  "sha256:22faa3c3cf36dc7fe32fbdd58e038e8e41026de4d817af6578ce098b47b4314e" [label="mkdir{path=/kafka-manager}" shape="note"];
  "sha256:db2fa3bf33753b39b10031d71221d57fc2a83a239c5a42170686f50caf3f8cd0" [label="sha256:db2fa3bf33753b39b10031d71221d57fc2a83a239c5a42170686f50caf3f8cd0" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:94d7c26db67da675f45d07c4e8905841b9339924a1553c6b2a724398e5218b78" [label=""];
  "sha256:94d7c26db67da675f45d07c4e8905841b9339924a1553c6b2a724398e5218b78" -> "sha256:5f39899ae39563cdb5ced6388ba6a8cf86832f39928b4f0d40d47731cee09504" [label=""];
  "sha256:75108506a5f676d0e36087eda51f0495ef5980d0504044c63085637a67031b8e" -> "sha256:5f39899ae39563cdb5ced6388ba6a8cf86832f39928b4f0d40d47731cee09504" [label=""];
  "sha256:5f39899ae39563cdb5ced6388ba6a8cf86832f39928b4f0d40d47731cee09504" -> "sha256:b4978c7e805decce7a47fc8de5e9792b26ecc0002351758877ecd844cade7838" [label=""];
  "sha256:b4978c7e805decce7a47fc8de5e9792b26ecc0002351758877ecd844cade7838" -> "sha256:22faa3c3cf36dc7fe32fbdd58e038e8e41026de4d817af6578ce098b47b4314e" [label=""];
  "sha256:22faa3c3cf36dc7fe32fbdd58e038e8e41026de4d817af6578ce098b47b4314e" -> "sha256:db2fa3bf33753b39b10031d71221d57fc2a83a239c5a42170686f50caf3f8cd0" [label=""];
}

