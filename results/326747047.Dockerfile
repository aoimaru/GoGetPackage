[app/sources/326747047.Dockerfile]
digraph {
  "sha256:3d02ce3a65da205f60dc2a5427c0d25d26c9592e1f7748e85965884e800e26c2" [label="local://context" shape="ellipse"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine" shape="ellipse"];
  "sha256:eca49378736b5b9db8a2010de1ceaf8504f517a71227a736f411907a2082598a" [label="/bin/sh -c wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip &&     unzip sonar-scanner-cli-${SONAR_SCANNER_VERSION} &&     rm -rf sonar-scanner-cli-${SONAR_SCANNER_VERSION}.zip &&     mv sonar-scanner-${SONAR_SCANNER_VERSION} /usr/lib/sonar-scanner" shape="box"];
  "sha256:7676ee72dd30e0096bf083753b5225a8482ea57eecbf152880deabed0eabc201" [label="/bin/sh -c wget http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.zip &&     unzip apache-maven-$MAVEN_VERSION-bin.zip &&     rm -rf apache-maven-$MAVEN_VERSION-bin.zip &&     mv apache-maven-$MAVEN_VERSION /usr/lib/mvn" shape="box"];
  "sha256:17205bba355e8600cbb77f6f1829cabf03163409ee2dfadc3b0f9b3bebfb053b" [label="copy{src=/sonar-scanner-ext.sh, dest=/usr/lib}" shape="note"];
  "sha256:e97b07cf520b82687d05bff4ec9aab7a6cad16ec957a073a789160e5e3a820cd" [label="/bin/sh -c ln -s /usr/lib/sonar-scanner-ext.sh /bin/sonar-scanner-ext" shape="box"];
  "sha256:2a38208db2ff9e6f30fcb872b02dc33547a0d89da7e503178adf0b5af2a4c910" [label="sha256:2a38208db2ff9e6f30fcb872b02dc33547a0d89da7e503178adf0b5af2a4c910" shape="plaintext"];
  "sha256:d680c6a82813d080081fbc3c024d21ddfa7ff995981cc7b4bfafe55edf80a319" -> "sha256:eca49378736b5b9db8a2010de1ceaf8504f517a71227a736f411907a2082598a" [label=""];
  "sha256:eca49378736b5b9db8a2010de1ceaf8504f517a71227a736f411907a2082598a" -> "sha256:7676ee72dd30e0096bf083753b5225a8482ea57eecbf152880deabed0eabc201" [label=""];
  "sha256:7676ee72dd30e0096bf083753b5225a8482ea57eecbf152880deabed0eabc201" -> "sha256:17205bba355e8600cbb77f6f1829cabf03163409ee2dfadc3b0f9b3bebfb053b" [label=""];
  "sha256:3d02ce3a65da205f60dc2a5427c0d25d26c9592e1f7748e85965884e800e26c2" -> "sha256:17205bba355e8600cbb77f6f1829cabf03163409ee2dfadc3b0f9b3bebfb053b" [label=""];
  "sha256:17205bba355e8600cbb77f6f1829cabf03163409ee2dfadc3b0f9b3bebfb053b" -> "sha256:e97b07cf520b82687d05bff4ec9aab7a6cad16ec957a073a789160e5e3a820cd" [label=""];
  "sha256:e97b07cf520b82687d05bff4ec9aab7a6cad16ec957a073a789160e5e3a820cd" -> "sha256:2a38208db2ff9e6f30fcb872b02dc33547a0d89da7e503178adf0b5af2a4c910" [label=""];
}

