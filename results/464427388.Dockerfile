[app/sources/464427388.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:2957ddbd30b56f2c45ef607cb70e28dfafe58f6926bc438f82b546852c3b2a2b" [label="/bin/sh -c locale-gen en_US.UTF-8 &&    apt-get -q update &&    DEBIAN_FRONTEND=\"noninteractive\" apt-get -q upgrade -y -o Dpkg::Options::=\"--force-confnew\" --no-install-recommends &&    DEBIAN_FRONTEND=\"noninteractive\" apt-get -q install -y -o Dpkg::Options::=\"--force-confnew\"  --no-install-recommends openssh-server &&    apt-get -q autoremove &&    apt-get -q clean -y && rm -rf /var/lib/apt/lists/* && rm -f /var/cache/apt/*.bin &&    sed -i 's|session    required     pam_loginuid.so|session    optional     pam_loginuid.so|g' /etc/pam.d/sshd &&    mkdir -p /var/run/sshd" shape="box"];
  "sha256:ef029a3a9845361228dec94f36f68b1e778a035639712ae5c9c25e582515c582" [label="/bin/sh -c apt-get update && apt-get install -y software-properties-common" shape="box"];
  "sha256:a968f1c3cbf22ed0dd0aa84ad8b97744d044f9e58dfb16b9272315fe64cc4954" [label="/bin/sh -c add-apt-repository ppa:openjdk-r/ppa" shape="box"];
  "sha256:4ec0222386a36e8bd67ed2e087f394b5d90c1e29124f74751220c47db864e8fc" [label="/bin/sh -c apt-get update && apt-get install -y openjdk-$JAVA_VERSION-jdk" shape="box"];
  "sha256:5704e0e36f4935f18930badeab1353b14091ddbf548ef13d66bf89e7463a7a8f" [label="/bin/sh -c export JAVA_HOME" shape="box"];
  "sha256:cd0b744dba51e4e95855510f9573e15eddec95e4e37ae90dfc65982fc2ed0b66" [label="/bin/sh -c useradd -m -d /home/jenkins -s /bin/sh jenkins &&    echo \"jenkins:jenkins\" | chpasswd" shape="box"];
  "sha256:ec049ead0c588bb3834953875c3507e069d681c3be87cf9f6fbee5a0b9140568" [label="/bin/sh -c adduser jenkins sudo" shape="box"];
  "sha256:e3092038ca41e60665612ad4d173c26b1f01c9177e734dc85c1670f71bb928e5" [label="/bin/sh -c apt-get update && apt-get install -y curl git && apt-get clean && rm -rf /var/lib/apt/lists" shape="box"];
  "sha256:75f759a0a2d4f3a601e51f9c4b36e61c4adf87415ebe48038b98792dd08610e5" [label="/bin/sh -c mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz     | tar -xzC /usr/share/maven --strip-components=1   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn" shape="box"];
  "sha256:fcf268e5ece6764e336bfa73ed6a139d5f29f178650de8d9ca4301ccf7270913" [label="/bin/sh -c apt-get -u update ; apt-get -y install zip unzip && \trm -rf /var/cache/apt/*" shape="box"];
  "sha256:2b34983f097175cbb7deca49d724f172673939ea4abc0c5924c89aa535268f1d" [label="/bin/sh -c set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube" shape="box"];
  "sha256:8163d0bfe4b30aedf8b1a6c5da9f36311719e856efd31da18ac56d73b6af6a35" [label="mkdir{path=/opt/sonarqube}" shape="note"];
  "sha256:dab416fc0052cc6afefd8fb1fb7997283988b99558a9985b1d4c358f45f3b026" [label="sha256:dab416fc0052cc6afefd8fb1fb7997283988b99558a9985b1d4c358f45f3b026" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:2957ddbd30b56f2c45ef607cb70e28dfafe58f6926bc438f82b546852c3b2a2b" [label=""];
  "sha256:2957ddbd30b56f2c45ef607cb70e28dfafe58f6926bc438f82b546852c3b2a2b" -> "sha256:ef029a3a9845361228dec94f36f68b1e778a035639712ae5c9c25e582515c582" [label=""];
  "sha256:ef029a3a9845361228dec94f36f68b1e778a035639712ae5c9c25e582515c582" -> "sha256:a968f1c3cbf22ed0dd0aa84ad8b97744d044f9e58dfb16b9272315fe64cc4954" [label=""];
  "sha256:a968f1c3cbf22ed0dd0aa84ad8b97744d044f9e58dfb16b9272315fe64cc4954" -> "sha256:4ec0222386a36e8bd67ed2e087f394b5d90c1e29124f74751220c47db864e8fc" [label=""];
  "sha256:4ec0222386a36e8bd67ed2e087f394b5d90c1e29124f74751220c47db864e8fc" -> "sha256:5704e0e36f4935f18930badeab1353b14091ddbf548ef13d66bf89e7463a7a8f" [label=""];
  "sha256:5704e0e36f4935f18930badeab1353b14091ddbf548ef13d66bf89e7463a7a8f" -> "sha256:cd0b744dba51e4e95855510f9573e15eddec95e4e37ae90dfc65982fc2ed0b66" [label=""];
  "sha256:cd0b744dba51e4e95855510f9573e15eddec95e4e37ae90dfc65982fc2ed0b66" -> "sha256:ec049ead0c588bb3834953875c3507e069d681c3be87cf9f6fbee5a0b9140568" [label=""];
  "sha256:ec049ead0c588bb3834953875c3507e069d681c3be87cf9f6fbee5a0b9140568" -> "sha256:e3092038ca41e60665612ad4d173c26b1f01c9177e734dc85c1670f71bb928e5" [label=""];
  "sha256:e3092038ca41e60665612ad4d173c26b1f01c9177e734dc85c1670f71bb928e5" -> "sha256:75f759a0a2d4f3a601e51f9c4b36e61c4adf87415ebe48038b98792dd08610e5" [label=""];
  "sha256:75f759a0a2d4f3a601e51f9c4b36e61c4adf87415ebe48038b98792dd08610e5" -> "sha256:fcf268e5ece6764e336bfa73ed6a139d5f29f178650de8d9ca4301ccf7270913" [label=""];
  "sha256:fcf268e5ece6764e336bfa73ed6a139d5f29f178650de8d9ca4301ccf7270913" -> "sha256:2b34983f097175cbb7deca49d724f172673939ea4abc0c5924c89aa535268f1d" [label=""];
  "sha256:2b34983f097175cbb7deca49d724f172673939ea4abc0c5924c89aa535268f1d" -> "sha256:8163d0bfe4b30aedf8b1a6c5da9f36311719e856efd31da18ac56d73b6af6a35" [label=""];
  "sha256:8163d0bfe4b30aedf8b1a6c5da9f36311719e856efd31da18ac56d73b6af6a35" -> "sha256:dab416fc0052cc6afefd8fb1fb7997283988b99558a9985b1d4c358f45f3b026" [label=""];
}

