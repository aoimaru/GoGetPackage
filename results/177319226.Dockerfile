[app/sources/177319226.Dockerfile]
digraph {
  "sha256:b03464427343eaa2bcf3d0cd118c5532f4cf19949aa455627c77f6d3705e30b6" [label="docker-image://docker.io/oracle/fmw-infrastructure:12.2.1.3" shape="ellipse"];
  "sha256:8adc8b0b397128d5014c9b4e224a1c9b8c64bd1e2bad9b030d9ea8634332ef72" [label="local://context" shape="ellipse"];
  "sha256:4c606c04768d4f58ceefa28b521c2d1f7f04814c292c8af5f5a41d258f345097" [label="copy{src=/sites-container-scripts/*, dest=/u01/oracle/sites-container-scripts/}" shape="note"];
  "sha256:551af9ecfaa9ea7bb72f2f36919150490c23bf9f9a89b7bbd1557b4e6942fee0" [label="copy{src=/wcs-wls-docker-install, dest=/u01/wcs-wls-docker-install}" shape="note"];
  "sha256:b6f2abf08764183df25ae6a0d2763dbb93a3bca77b69c683eaea4c567b685e77" [label="copy{src=/V886462-01.zip, dest=/u01/},copy{src=/install.file, dest=/u01/},copy{src=/oraInst.loc, dest=/u01/}" shape="note"];
  "sha256:f461901859d7801458c89b7690085b70d1d9b448a123012ec24b312ccff03859" [label="/bin/sh -c yum install -y hostname && \trm -rf /var/cache/yum/* && \tmkdir -p /u01/oracle/logs && \tchmod a+xr /u01 && \tchown oracle:oracle -R /u01 && \tchmod a+xr -R /u01/oracle/*.* && \tchmod a+xr $SITES_CONTAINER_SCRIPTS/*.*" shape="box"];
  "sha256:422fb9343f4c68f866d8bd3abab8461a21de4adc78055764522a441119e8980e" [label="/bin/sh -c cd /u01 && \t$JAVA_HOME/bin/jar xf /u01/$SITES_PKG && \tcd - && \t$JAVA_HOME/bin/java -jar /u01/$SITES_JAR -silent -responseFile /u01/install.file -invPtrLoc /u01/oraInst.loc -jreLoc $JAVA_HOME -ignoreSysPrereqs -force -novalidation ORACLE_HOME=$ORACLE_HOME INSTALL_TYPE=\"WebCenter Sites - With Examples\" && \trm -rf /u01/fmw_* /u01/oraInst.loc /u01/install.file" shape="box"];
  "sha256:ccb51b8efc7f1a165c1ddc64c6609a78437b43a34507ab414387cf5116abc285" [label="mkdir{path=/u01/oracle}" shape="note"];
  "sha256:a5a5979e95f18c034f54350a77d84e5097f028632556712b6646f8c5d42bccce" [label="sha256:a5a5979e95f18c034f54350a77d84e5097f028632556712b6646f8c5d42bccce" shape="plaintext"];
  "sha256:b03464427343eaa2bcf3d0cd118c5532f4cf19949aa455627c77f6d3705e30b6" -> "sha256:4c606c04768d4f58ceefa28b521c2d1f7f04814c292c8af5f5a41d258f345097" [label=""];
  "sha256:8adc8b0b397128d5014c9b4e224a1c9b8c64bd1e2bad9b030d9ea8634332ef72" -> "sha256:4c606c04768d4f58ceefa28b521c2d1f7f04814c292c8af5f5a41d258f345097" [label=""];
  "sha256:4c606c04768d4f58ceefa28b521c2d1f7f04814c292c8af5f5a41d258f345097" -> "sha256:551af9ecfaa9ea7bb72f2f36919150490c23bf9f9a89b7bbd1557b4e6942fee0" [label=""];
  "sha256:8adc8b0b397128d5014c9b4e224a1c9b8c64bd1e2bad9b030d9ea8634332ef72" -> "sha256:551af9ecfaa9ea7bb72f2f36919150490c23bf9f9a89b7bbd1557b4e6942fee0" [label=""];
  "sha256:551af9ecfaa9ea7bb72f2f36919150490c23bf9f9a89b7bbd1557b4e6942fee0" -> "sha256:b6f2abf08764183df25ae6a0d2763dbb93a3bca77b69c683eaea4c567b685e77" [label=""];
  "sha256:8adc8b0b397128d5014c9b4e224a1c9b8c64bd1e2bad9b030d9ea8634332ef72" -> "sha256:b6f2abf08764183df25ae6a0d2763dbb93a3bca77b69c683eaea4c567b685e77" [label=""];
  "sha256:b6f2abf08764183df25ae6a0d2763dbb93a3bca77b69c683eaea4c567b685e77" -> "sha256:f461901859d7801458c89b7690085b70d1d9b448a123012ec24b312ccff03859" [label=""];
  "sha256:f461901859d7801458c89b7690085b70d1d9b448a123012ec24b312ccff03859" -> "sha256:422fb9343f4c68f866d8bd3abab8461a21de4adc78055764522a441119e8980e" [label=""];
  "sha256:422fb9343f4c68f866d8bd3abab8461a21de4adc78055764522a441119e8980e" -> "sha256:ccb51b8efc7f1a165c1ddc64c6609a78437b43a34507ab414387cf5116abc285" [label=""];
  "sha256:ccb51b8efc7f1a165c1ddc64c6609a78437b43a34507ab414387cf5116abc285" -> "sha256:a5a5979e95f18c034f54350a77d84e5097f028632556712b6646f8c5d42bccce" [label=""];
}

