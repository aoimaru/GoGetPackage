[app/sources/340770291.Dockerfile]
digraph {
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" [label="docker-image://docker.io/library/debian:stretch" shape="ellipse"];
  "sha256:b525a8c997e9ac55168d5650a0f5084d8aa653190c6c976866852a5954d14fc6" [label="/bin/sh -c export DEBIAN_FRONTEND=noninteractive ;     apt-get update &&     apt-get -qq -y upgrade &&     apt-get -qq -y install --no-install-recommends openjdk-8-jdk-headless wget unzip > /dev/null &&     apt-get -qq autoclean #&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:aa7398936f6ccab5871d7a6fca4c1495a4995187b2d253a95eaf2207ae7f6708" [label="/bin/sh -c wget -q https://github.com/checkstyle/checkstyle/releases/download/checkstyle-8.19/checkstyle-8.19-all.jar -O checkstyle-8.19-all.jar &&     sha256sum checkstyle-8.19-all.jar | grep d35bd180c22a8304be1c8e7ab44832300bda14da1bb70a1c29f8c5946424fd80 &&     mv checkstyle-8.19-all.jar /opt/checkstyle.jar &&     chgrp -R 0   /opt/checkstyle.jar &&     chmod -R g=u /opt/checkstyle.jar" shape="box"];
  "sha256:0d2050a88cdebaf2b233d7a1534b98398320a7eaa9e2891b771f0267ebab90ec" [label="local://context" shape="ellipse"];
  "sha256:e2768c27642cd56a41bde4b21e6b473f7979b61a5b5a09878dd8c065b6be88c3" [label="copy{src=/imports, dest=/opt/imports/}" shape="note"];
  "sha256:28543dc532b85f326a4e7f13878dc89eaa82913545543f989cc9dc6e7b493e34" [label="/bin/sh -c chmod +x     /opt/imports/bin/*.sh &&     mkdir                     /home/jenkins &&     chgrp -R 0   /opt/imports /home/jenkins /etc/passwd &&     chmod -R g=u /opt/imports /home/jenkins /etc/passwd" shape="box"];
  "sha256:f0590d740c6b6ffad56ffababc04a9f7ab5fa43e9efc7e75f0313c1f59934e9a" [label="mkdir{path=/home/jenkins}" shape="note"];
  "sha256:58741259fae3b9f527255461598c82cf2983ad60bed42cf778058eef568f2c56" [label="sha256:58741259fae3b9f527255461598c82cf2983ad60bed42cf778058eef568f2c56" shape="plaintext"];
  "sha256:931a1c72c3e0943f8ae3bad2d6c2c0d04efc9031392f7574cafc331814fa690d" -> "sha256:b525a8c997e9ac55168d5650a0f5084d8aa653190c6c976866852a5954d14fc6" [label=""];
  "sha256:b525a8c997e9ac55168d5650a0f5084d8aa653190c6c976866852a5954d14fc6" -> "sha256:aa7398936f6ccab5871d7a6fca4c1495a4995187b2d253a95eaf2207ae7f6708" [label=""];
  "sha256:aa7398936f6ccab5871d7a6fca4c1495a4995187b2d253a95eaf2207ae7f6708" -> "sha256:e2768c27642cd56a41bde4b21e6b473f7979b61a5b5a09878dd8c065b6be88c3" [label=""];
  "sha256:0d2050a88cdebaf2b233d7a1534b98398320a7eaa9e2891b771f0267ebab90ec" -> "sha256:e2768c27642cd56a41bde4b21e6b473f7979b61a5b5a09878dd8c065b6be88c3" [label=""];
  "sha256:e2768c27642cd56a41bde4b21e6b473f7979b61a5b5a09878dd8c065b6be88c3" -> "sha256:28543dc532b85f326a4e7f13878dc89eaa82913545543f989cc9dc6e7b493e34" [label=""];
  "sha256:28543dc532b85f326a4e7f13878dc89eaa82913545543f989cc9dc6e7b493e34" -> "sha256:f0590d740c6b6ffad56ffababc04a9f7ab5fa43e9efc7e75f0313c1f59934e9a" [label=""];
  "sha256:f0590d740c6b6ffad56ffababc04a9f7ab5fa43e9efc7e75f0313c1f59934e9a" -> "sha256:58741259fae3b9f527255461598c82cf2983ad60bed42cf778058eef568f2c56" [label=""];
}

