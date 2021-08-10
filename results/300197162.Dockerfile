[app/sources/300197162.Dockerfile]
digraph {
  "sha256:525fc1058d9a8f1e07cf22d6675260c0253e77a02ccdb6035c12885f8cc0eb57" [label="docker-image://docker.io/openshift/base-centos7:latest" shape="ellipse"];
  "sha256:e23ca9f5f2a2d56285cc891f4eb8008afec02cf3a819d338ca229e17cee1d2f9" [label="/bin/sh -c INSTALL_PKGS=\"tar unzip bc which lsof $JAVA\" &&     yum install -y --enablerepo=centosplus $INSTALL_PKGS &&     rpm -V $INSTALL_PKGS &&     yum clean all -y &&     (curl -v https://www.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz |     tar -zx -C /usr/local) &&     ln -sf /usr/local/apache-maven-$MAVEN_VERSION/bin/mvn /usr/local/bin/mvn &&     mkdir -p $HOME/.m2 &&     mkdir -p /tomcat &&     (curl -v https://www.apache.org/dist/tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz | tar -zx --strip-components=1 -C /tomcat) &&     mkdir -p /opt/s2i/destination" shape="box"];
  "sha256:6da49e221a8057c3ecb867cc4b0ca3c034d2abf9d432287dfae8c060979fd7bc" [label="local://context" shape="ellipse"];
  "sha256:9c1ea98b9ff856e72f50d1eb3928e6b21167bedd08cf75cb367803701e81d4a7" [label="copy{src=/contrib/settings.xml, dest=/.m2/}" shape="note"];
  "sha256:91de39f0266d81d3fc296aa729af4af7fb575636f02eaa051702d0848e464224" [label="copy{src=/s2i/bin, dest=/}" shape="note"];
  "sha256:45c8886bf8f1f856601818fd2341db82a1098e001f8c72554fb5902bbefb7c55" [label="/bin/sh -c chown -R 1001:0 /tomcat && chown -R 1001:0 $HOME &&     chmod -R ug+rwx /tomcat &&     chmod -R g+rw /opt/s2i/destination" shape="box"];
  "sha256:f0afc84ec61d09c76962135a55c05b08b89963731354cdd150e256fac3281c82" [label="sha256:f0afc84ec61d09c76962135a55c05b08b89963731354cdd150e256fac3281c82" shape="plaintext"];
  "sha256:525fc1058d9a8f1e07cf22d6675260c0253e77a02ccdb6035c12885f8cc0eb57" -> "sha256:e23ca9f5f2a2d56285cc891f4eb8008afec02cf3a819d338ca229e17cee1d2f9" [label=""];
  "sha256:e23ca9f5f2a2d56285cc891f4eb8008afec02cf3a819d338ca229e17cee1d2f9" -> "sha256:9c1ea98b9ff856e72f50d1eb3928e6b21167bedd08cf75cb367803701e81d4a7" [label=""];
  "sha256:6da49e221a8057c3ecb867cc4b0ca3c034d2abf9d432287dfae8c060979fd7bc" -> "sha256:9c1ea98b9ff856e72f50d1eb3928e6b21167bedd08cf75cb367803701e81d4a7" [label=""];
  "sha256:9c1ea98b9ff856e72f50d1eb3928e6b21167bedd08cf75cb367803701e81d4a7" -> "sha256:91de39f0266d81d3fc296aa729af4af7fb575636f02eaa051702d0848e464224" [label=""];
  "sha256:6da49e221a8057c3ecb867cc4b0ca3c034d2abf9d432287dfae8c060979fd7bc" -> "sha256:91de39f0266d81d3fc296aa729af4af7fb575636f02eaa051702d0848e464224" [label=""];
  "sha256:91de39f0266d81d3fc296aa729af4af7fb575636f02eaa051702d0848e464224" -> "sha256:45c8886bf8f1f856601818fd2341db82a1098e001f8c72554fb5902bbefb7c55" [label=""];
  "sha256:45c8886bf8f1f856601818fd2341db82a1098e001f8c72554fb5902bbefb7c55" -> "sha256:f0afc84ec61d09c76962135a55c05b08b89963731354cdd150e256fac3281c82" [label=""];
}

