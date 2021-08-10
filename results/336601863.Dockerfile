[app/sources/336601863.Dockerfile]
digraph {
  "sha256:5098f1aec0cbb62d046dd8fbd428e7f91706590b96350dce6cacc4f0a9cf5c42" [label="docker-image://docker.io/library/tomcat:7-jre8" shape="ellipse"];
  "sha256:08518b18d4d4a65d5e0a40bb1a162a548bcff8eac6f11f33ba9572bc4fd05f0c" [label="local://context" shape="ellipse"];
  "sha256:a9d5e090e9f0d42154accbaf8d94ab02663623e7c921dae9f776b40a26d02e7b" [label="copy{src=/tomcat/tomcat-users.xml, dest=/conf/}" shape="note"];
  "sha256:648699aa074821d992a2f7f5d9c8f902ce4d1906384a3acf642032a5a9074a89" [label="copy{src=/tomcat/run.sh, dest=/bin/run.sh}" shape="note"];
  "sha256:f188c02d3b995b4e6fe5e280a0e2889d400cd7c198ff2dd190b077b981abc620" [label="/bin/sh -c chmod +x $CATALINA_HOME/bin/run.sh" shape="box"];
  "sha256:c772f592c65eed27c6f159a8e0e6ad9b19012c1485b57f39315f727fab09d51f" [label="copy{src=/tomcat/mysql-connector-java-5.1.36-bin.jar, dest=/lib/}" shape="note"];
  "sha256:70ad1aca15d1af7ceffc70a5ddb8e57575f00c11401b9c068146d85827fc3439" [label="mkdir{path=/webapps}" shape="note"];
  "sha256:9127094bbfa9b57695d09b5959756129fb5c50807462558e116d436d2de88f95" [label="docker-image://docker.io/library/maven:latest" shape="ellipse"];
  "sha256:8a673fec9d601782dfc7d4346668fbb96e2a903df339a1d74276e17731fbcd79" [label="mkdir{path=/usr/src/signup}" shape="note"];
  "sha256:eb50226d21de13de299dc76fc66c79a0fd48c3d107586a6bcaa6863985b4ee41" [label="copy{src=/app/pom.xml, dest=/usr/src/signup/}" shape="note"];
  "sha256:f0bf2323f97acd8bc5bf599056cac17c0c2d5fb3e2f944a74f9ea5a14e4d4dc9" [label="/bin/sh -c mvn -B -f pom.xml -s /usr/share/maven/ref/settings-docker.xml dependency:resolve" shape="box"];
  "sha256:8c28158782d835e9681ee252a84c6a44b92ef211f0825c926f92b014f2ecf36d" [label="copy{src=/app, dest=/usr/src/signup/}" shape="note"];
  "sha256:57335d22129b5d14922c04b826f764e845e5bcbeacd0d9e764c2ac802c26790e" [label="/bin/sh -c mvn -B -s /usr/share/maven/ref/settings-docker.xml package -DskipTes" shape="box"];
  "sha256:dec3e19395f3af4b93e5d715dbf4da4a126ea566be4b2a0131650ecf32e73243" [label="copy{src=/usr/src/signup/target/Signup.war, dest=/webapps/}" shape="note"];
  "sha256:7e70a67f8bca2ad7a146da0ce1c12ee5828e8e399f9a1d066edfe274b96899b0" [label="sha256:7e70a67f8bca2ad7a146da0ce1c12ee5828e8e399f9a1d066edfe274b96899b0" shape="plaintext"];
  "sha256:5098f1aec0cbb62d046dd8fbd428e7f91706590b96350dce6cacc4f0a9cf5c42" -> "sha256:a9d5e090e9f0d42154accbaf8d94ab02663623e7c921dae9f776b40a26d02e7b" [label=""];
  "sha256:08518b18d4d4a65d5e0a40bb1a162a548bcff8eac6f11f33ba9572bc4fd05f0c" -> "sha256:a9d5e090e9f0d42154accbaf8d94ab02663623e7c921dae9f776b40a26d02e7b" [label=""];
  "sha256:a9d5e090e9f0d42154accbaf8d94ab02663623e7c921dae9f776b40a26d02e7b" -> "sha256:648699aa074821d992a2f7f5d9c8f902ce4d1906384a3acf642032a5a9074a89" [label=""];
  "sha256:08518b18d4d4a65d5e0a40bb1a162a548bcff8eac6f11f33ba9572bc4fd05f0c" -> "sha256:648699aa074821d992a2f7f5d9c8f902ce4d1906384a3acf642032a5a9074a89" [label=""];
  "sha256:648699aa074821d992a2f7f5d9c8f902ce4d1906384a3acf642032a5a9074a89" -> "sha256:f188c02d3b995b4e6fe5e280a0e2889d400cd7c198ff2dd190b077b981abc620" [label=""];
  "sha256:f188c02d3b995b4e6fe5e280a0e2889d400cd7c198ff2dd190b077b981abc620" -> "sha256:c772f592c65eed27c6f159a8e0e6ad9b19012c1485b57f39315f727fab09d51f" [label=""];
  "sha256:08518b18d4d4a65d5e0a40bb1a162a548bcff8eac6f11f33ba9572bc4fd05f0c" -> "sha256:c772f592c65eed27c6f159a8e0e6ad9b19012c1485b57f39315f727fab09d51f" [label=""];
  "sha256:c772f592c65eed27c6f159a8e0e6ad9b19012c1485b57f39315f727fab09d51f" -> "sha256:70ad1aca15d1af7ceffc70a5ddb8e57575f00c11401b9c068146d85827fc3439" [label=""];
  "sha256:9127094bbfa9b57695d09b5959756129fb5c50807462558e116d436d2de88f95" -> "sha256:8a673fec9d601782dfc7d4346668fbb96e2a903df339a1d74276e17731fbcd79" [label=""];
  "sha256:8a673fec9d601782dfc7d4346668fbb96e2a903df339a1d74276e17731fbcd79" -> "sha256:eb50226d21de13de299dc76fc66c79a0fd48c3d107586a6bcaa6863985b4ee41" [label=""];
  "sha256:08518b18d4d4a65d5e0a40bb1a162a548bcff8eac6f11f33ba9572bc4fd05f0c" -> "sha256:eb50226d21de13de299dc76fc66c79a0fd48c3d107586a6bcaa6863985b4ee41" [label=""];
  "sha256:eb50226d21de13de299dc76fc66c79a0fd48c3d107586a6bcaa6863985b4ee41" -> "sha256:f0bf2323f97acd8bc5bf599056cac17c0c2d5fb3e2f944a74f9ea5a14e4d4dc9" [label=""];
  "sha256:f0bf2323f97acd8bc5bf599056cac17c0c2d5fb3e2f944a74f9ea5a14e4d4dc9" -> "sha256:8c28158782d835e9681ee252a84c6a44b92ef211f0825c926f92b014f2ecf36d" [label=""];
  "sha256:08518b18d4d4a65d5e0a40bb1a162a548bcff8eac6f11f33ba9572bc4fd05f0c" -> "sha256:8c28158782d835e9681ee252a84c6a44b92ef211f0825c926f92b014f2ecf36d" [label=""];
  "sha256:8c28158782d835e9681ee252a84c6a44b92ef211f0825c926f92b014f2ecf36d" -> "sha256:57335d22129b5d14922c04b826f764e845e5bcbeacd0d9e764c2ac802c26790e" [label=""];
  "sha256:70ad1aca15d1af7ceffc70a5ddb8e57575f00c11401b9c068146d85827fc3439" -> "sha256:dec3e19395f3af4b93e5d715dbf4da4a126ea566be4b2a0131650ecf32e73243" [label=""];
  "sha256:57335d22129b5d14922c04b826f764e845e5bcbeacd0d9e764c2ac802c26790e" -> "sha256:dec3e19395f3af4b93e5d715dbf4da4a126ea566be4b2a0131650ecf32e73243" [label=""];
  "sha256:dec3e19395f3af4b93e5d715dbf4da4a126ea566be4b2a0131650ecf32e73243" -> "sha256:7e70a67f8bca2ad7a146da0ce1c12ee5828e8e399f9a1d066edfe274b96899b0" [label=""];
}

