[app/sources/353281468.Dockerfile]
digraph {
  "sha256:d90db2bae754a20b44119942687fd310b299529a5a0219b918d86e49c3c1b2c4" [label="docker-image://docker.io/blacklabelops/jenkins-swarm:latest" shape="ellipse"];
  "sha256:a31229dcf9c1754885a49b29a70cfb6e1a252eed82faaa3e5fe3ef80f024ff0f" [label="/bin/sh -c yum install -y     unzip &&     yum clean all && rm -rf /var/cache/yum/*" shape="box"];
  "sha256:fe7ebe8bbe4d989906b1add804b3df31a49f0d28ec8d3a9ecec4a684cc9597a2" [label="/bin/sh -c export JAVA_TARBALL=${JAVA_DISTRIBUTION}-${JAVA_MAJOR_VERSION}u${JAVA_UPDATE_VERSION}-linux-x64.tar.gz &&     wget --directory-prefix=/tmp          --header \"Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie\"          http://download.oracle.com/otn-pub/java/jdk/${JAVA_MAJOR_VERSION}u${JAVA_UPDATE_VERSION}-b${JAVA_BUILD_NUMBER}/${JAVA_HASH}/${JAVA_TARBALL} &&     mkdir -p /opt/java &&     tar -xzf /tmp/${JAVA_TARBALL} -C /opt/java/ &&     alternatives --remove java ${SWARM_JAVA_HOME}/bin/java &&     alternatives --install /usr/bin/java java /opt/java/jdk${JAVA_VERSION}/bin/java 100 &&     rm -rf /tmp/* && rm -rf /var/log/*" shape="box"];
  "sha256:c9d2107598ebfb643a5a6723be8818de7f6c4736902ee519a47903895db40806" [label="/bin/sh -c wget --directory-prefix=/tmp     http://mirror.synyx.de/apache/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz &&     tar xzf /tmp/apache-maven-${MAVEN_VERSION}-bin.tar.gz -C /usr/local && rm -rf /tmp/* &&     cd /usr/local &&  ln -s apache-maven-${MAVEN_VERSION} maven &&     alternatives --install /usr/bin/mvn mvn /usr/local/maven/bin/mvn 100" shape="box"];
  "sha256:eac9f6f21fae770014a0316e6427fc8a52a72bdd15785458ff4897116766fe94" [label="/bin/sh -c wget --directory-prefix=/tmp     https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip &&     unzip /tmp/gradle-${GRADLE_VERSION}-bin.zip -d /usr/local && rm -rf /tmp/* &&     cd /usr/local &&  ln -s gradle-${GRADLE_VERSION} gradle &&     alternatives --install /usr/bin/gradle gradle /usr/local/gradle/bin/gradle 100" shape="box"];
  "sha256:bdad0ac8e29b14f160a286e7c5b56ea9a48a55387fb2cc67502437260cbf64c3" [label="sha256:bdad0ac8e29b14f160a286e7c5b56ea9a48a55387fb2cc67502437260cbf64c3" shape="plaintext"];
  "sha256:d90db2bae754a20b44119942687fd310b299529a5a0219b918d86e49c3c1b2c4" -> "sha256:a31229dcf9c1754885a49b29a70cfb6e1a252eed82faaa3e5fe3ef80f024ff0f" [label=""];
  "sha256:a31229dcf9c1754885a49b29a70cfb6e1a252eed82faaa3e5fe3ef80f024ff0f" -> "sha256:fe7ebe8bbe4d989906b1add804b3df31a49f0d28ec8d3a9ecec4a684cc9597a2" [label=""];
  "sha256:fe7ebe8bbe4d989906b1add804b3df31a49f0d28ec8d3a9ecec4a684cc9597a2" -> "sha256:c9d2107598ebfb643a5a6723be8818de7f6c4736902ee519a47903895db40806" [label=""];
  "sha256:c9d2107598ebfb643a5a6723be8818de7f6c4736902ee519a47903895db40806" -> "sha256:eac9f6f21fae770014a0316e6427fc8a52a72bdd15785458ff4897116766fe94" [label=""];
  "sha256:eac9f6f21fae770014a0316e6427fc8a52a72bdd15785458ff4897116766fe94" -> "sha256:bdad0ac8e29b14f160a286e7c5b56ea9a48a55387fb2cc67502437260cbf64c3" [label=""];
}
