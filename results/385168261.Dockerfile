[app/sources/385168261.Dockerfile]
digraph {
  "sha256:be5b7dab51629822e2f94d95ab243a3733650b049d241e37dce6c97092e50e53" [label="local://context" shape="ellipse"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:088f5a07d0a74362c6eb495fed12e36af1eccaf5cedd15dfee1afabbcba2ed02" [label="/bin/sh -c yum -y update &&     yum -y install tar java-1.7.0-openjdk java-1.7.0-openjdk-devel unzip which bc vi&&     yum clean all" shape="box"];
  "sha256:396f178705673bd8ff27283ecf450e1188d5f2863953185c75dea89b6f845731" [label="http://mirror.cc.columbia.edu/pub/software/apache/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz" shape="ellipse"];
  "sha256:af417a5f123df71cd1957d5182c4cf816ed0d98ca35f26dcd70223069cc05a90" [label="copy{src=/apache-maven-3.0.5-bin.tar.gz, dest=/apache-maven-3.0.5-bin.tar.gz}" shape="note"];
  "sha256:8eb62548a4f72bed5fd7ea519e8e5509d990e4d5bd86fd6845d349665352628f" [label="/bin/sh -c tar xzf apache-maven-3.0.5-bin.tar.gz -C /usr/local &&     rm apache-maven-3.0.5-bin.tar.gz &&     ln -s /usr/local/apache-maven-3.0.5/bin/mvn /usr/local/bin/mvn" shape="box"];
  "sha256:6195b7aafe560e261a645b6be21ef8ad8f3418338ad0ab1eddac40ab9911ca48" [label="http://download.jboss.org/wildfly/8.1.0.CR1/wildfly-8.1.0.CR1.tar.gz" shape="ellipse"];
  "sha256:858e7af5f9f76c6760a36a8e5c1b7183f50d02c023ad3672b4ee564faf83c3f9" [label="copy{src=/wildfly-8.1.0.CR1.tar.gz, dest=/wildfly-8.1.0.CR1.tar.gz}" shape="note"];
  "sha256:db37e1279246185e3c8e04c68416d486f2d2831adea8985b157762e23171b241" [label="/bin/sh -c tar -xf wildfly-8.1.0.CR1.tar.gz &&     rm wildfly-8.1.0.CR1.tar.gz &&     mv wildfly-8.1.0.CR1 wildfly &&     /wildfly/bin/add-user.sh admin passw0rd_  --silent" shape="box"];
  "sha256:b1989ecef375d9d5a25449bac8412f97ea68c9ea723e2f86ff4256fe60fce683" [label="copy{src=/wfmodules, dest=/wildfly/modules/}" shape="note"];
  "sha256:b8058bd9587e712f3b70e9cb3aa36400dc3829ba8e0a3e3bf58dd24fab975605" [label="copy{src=/wfbin/standalone.conf, dest=/wildfly/bin/standalone.conf}" shape="note"];
  "sha256:5b204e4899e05c72957b00ee8eeb646f060adcb00418bebf6ec97a8549f0769e" [label="copy{src=/wfcfg/standalone.xml, dest=/wildfly/standalone/configuration/standalone.xml}" shape="note"];
  "sha256:a422af0dd8a56245dbe1cce253efdc2f67353efdb784ebe3cf6618ff8a2b9781" [label="/bin/sh -c groupadd -r wildfly -g 433 &&     useradd -u 431 -r -g wildfly -d /opt/wildfly -s /sbin/nologin -c \"Wildfly user\" wildfly &&     chown -R wildfly:wildfly /wildfly &&     chown -R wildfly:wildfly /opt/wildfly &&     chown -R wildfly:wildfly /tmp/src" shape="box"];
  "sha256:859dc5b7a6c03198ac52a42deb5c22f8bd70ceb1030e008bb758fd1064ca78a4" [label="sha256:859dc5b7a6c03198ac52a42deb5c22f8bd70ceb1030e008bb758fd1064ca78a4" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:088f5a07d0a74362c6eb495fed12e36af1eccaf5cedd15dfee1afabbcba2ed02" [label=""];
  "sha256:088f5a07d0a74362c6eb495fed12e36af1eccaf5cedd15dfee1afabbcba2ed02" -> "sha256:af417a5f123df71cd1957d5182c4cf816ed0d98ca35f26dcd70223069cc05a90" [label=""];
  "sha256:396f178705673bd8ff27283ecf450e1188d5f2863953185c75dea89b6f845731" -> "sha256:af417a5f123df71cd1957d5182c4cf816ed0d98ca35f26dcd70223069cc05a90" [label=""];
  "sha256:af417a5f123df71cd1957d5182c4cf816ed0d98ca35f26dcd70223069cc05a90" -> "sha256:8eb62548a4f72bed5fd7ea519e8e5509d990e4d5bd86fd6845d349665352628f" [label=""];
  "sha256:8eb62548a4f72bed5fd7ea519e8e5509d990e4d5bd86fd6845d349665352628f" -> "sha256:858e7af5f9f76c6760a36a8e5c1b7183f50d02c023ad3672b4ee564faf83c3f9" [label=""];
  "sha256:6195b7aafe560e261a645b6be21ef8ad8f3418338ad0ab1eddac40ab9911ca48" -> "sha256:858e7af5f9f76c6760a36a8e5c1b7183f50d02c023ad3672b4ee564faf83c3f9" [label=""];
  "sha256:858e7af5f9f76c6760a36a8e5c1b7183f50d02c023ad3672b4ee564faf83c3f9" -> "sha256:db37e1279246185e3c8e04c68416d486f2d2831adea8985b157762e23171b241" [label=""];
  "sha256:db37e1279246185e3c8e04c68416d486f2d2831adea8985b157762e23171b241" -> "sha256:b1989ecef375d9d5a25449bac8412f97ea68c9ea723e2f86ff4256fe60fce683" [label=""];
  "sha256:be5b7dab51629822e2f94d95ab243a3733650b049d241e37dce6c97092e50e53" -> "sha256:b1989ecef375d9d5a25449bac8412f97ea68c9ea723e2f86ff4256fe60fce683" [label=""];
  "sha256:b1989ecef375d9d5a25449bac8412f97ea68c9ea723e2f86ff4256fe60fce683" -> "sha256:b8058bd9587e712f3b70e9cb3aa36400dc3829ba8e0a3e3bf58dd24fab975605" [label=""];
  "sha256:be5b7dab51629822e2f94d95ab243a3733650b049d241e37dce6c97092e50e53" -> "sha256:b8058bd9587e712f3b70e9cb3aa36400dc3829ba8e0a3e3bf58dd24fab975605" [label=""];
  "sha256:b8058bd9587e712f3b70e9cb3aa36400dc3829ba8e0a3e3bf58dd24fab975605" -> "sha256:5b204e4899e05c72957b00ee8eeb646f060adcb00418bebf6ec97a8549f0769e" [label=""];
  "sha256:be5b7dab51629822e2f94d95ab243a3733650b049d241e37dce6c97092e50e53" -> "sha256:5b204e4899e05c72957b00ee8eeb646f060adcb00418bebf6ec97a8549f0769e" [label=""];
  "sha256:5b204e4899e05c72957b00ee8eeb646f060adcb00418bebf6ec97a8549f0769e" -> "sha256:a422af0dd8a56245dbe1cce253efdc2f67353efdb784ebe3cf6618ff8a2b9781" [label=""];
  "sha256:a422af0dd8a56245dbe1cce253efdc2f67353efdb784ebe3cf6618ff8a2b9781" -> "sha256:859dc5b7a6c03198ac52a42deb5c22f8bd70ceb1030e008bb758fd1064ca78a4" [label=""];
}

