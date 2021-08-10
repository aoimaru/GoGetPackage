[app/sources/353287266.Dockerfile]
digraph {
  "sha256:ea3e402809785ad1de07bd4aed81e58138e99daeb790b23d9cfec7053f695c27" [label="docker-image://docker.io/fabric8/java-centos-openjdk8-jre:1.0.0" shape="ellipse"];
  "sha256:8df56bbc1d8e048987dea225f08b87136c98dfb695f4e3477df060c01da26c47" [label="/bin/sh -c curl http://archive.apache.org/dist/tomcat/tomcat-6/v${TOMCAT_VERSION}/bin/apache-tomcat-${TOMCAT_VERSION}.tar.gz -o /tmp/catalina.tar.gz  && tar xzf /tmp/catalina.tar.gz -C /opt  && ln -s /opt/apache-tomcat-${TOMCAT_VERSION} /opt/tomcat  && rm /tmp/catalina.tar.gz" shape="box"];
  "sha256:70a1ca778e06095b3b8fad9ff22b6b8654d3ae205e1579812246924367fc5f97" [label="local://context" shape="ellipse"];
  "sha256:64d46e5d4857922d9bfef9e1e4fd30d1ecbd85aee893509d01e4027ca1f6a8f6" [label="copy{src=/tomcat-users.xml, dest=/opt/apache-tomcat-6.0.44/conf/}" shape="note"];
  "sha256:0d9765705193be3613da43ab3649476a46727dea4f11c5f645bc2277b840bbdf" [label="copy{src=/deploy-and-run.sh, dest=/opt/apache-tomcat-6.0.44/bin/}" shape="note"];
  "sha256:ebd4384681b4d3cbd30192cc30120489b550d36c7933c8cd61b3db4b4401e270" [label="/bin/sh -c chmod 755 /opt/apache-tomcat-${TOMCAT_VERSION}/bin/deploy-and-run.sh  && rm -rf /opt/tomcat/webapps/examples /opt/tomcat/webapps/docs" shape="box"];
  "sha256:042336789994073557bbda9e7582fe682735397c1937e94f73468106cb320d06" [label="sha256:042336789994073557bbda9e7582fe682735397c1937e94f73468106cb320d06" shape="plaintext"];
  "sha256:ea3e402809785ad1de07bd4aed81e58138e99daeb790b23d9cfec7053f695c27" -> "sha256:8df56bbc1d8e048987dea225f08b87136c98dfb695f4e3477df060c01da26c47" [label=""];
  "sha256:8df56bbc1d8e048987dea225f08b87136c98dfb695f4e3477df060c01da26c47" -> "sha256:64d46e5d4857922d9bfef9e1e4fd30d1ecbd85aee893509d01e4027ca1f6a8f6" [label=""];
  "sha256:70a1ca778e06095b3b8fad9ff22b6b8654d3ae205e1579812246924367fc5f97" -> "sha256:64d46e5d4857922d9bfef9e1e4fd30d1ecbd85aee893509d01e4027ca1f6a8f6" [label=""];
  "sha256:64d46e5d4857922d9bfef9e1e4fd30d1ecbd85aee893509d01e4027ca1f6a8f6" -> "sha256:0d9765705193be3613da43ab3649476a46727dea4f11c5f645bc2277b840bbdf" [label=""];
  "sha256:70a1ca778e06095b3b8fad9ff22b6b8654d3ae205e1579812246924367fc5f97" -> "sha256:0d9765705193be3613da43ab3649476a46727dea4f11c5f645bc2277b840bbdf" [label=""];
  "sha256:0d9765705193be3613da43ab3649476a46727dea4f11c5f645bc2277b840bbdf" -> "sha256:ebd4384681b4d3cbd30192cc30120489b550d36c7933c8cd61b3db4b4401e270" [label=""];
  "sha256:ebd4384681b4d3cbd30192cc30120489b550d36c7933c8cd61b3db4b4401e270" -> "sha256:042336789994073557bbda9e7582fe682735397c1937e94f73468106cb320d06" [label=""];
}

