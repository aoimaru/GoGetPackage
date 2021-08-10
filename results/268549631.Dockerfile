[app/sources/268549631.Dockerfile]
digraph {
  "sha256:f0ddc1b924dedced32b58464d5ef44e1c554a934cef53f7ab81c6f1c436572c3" [label="docker-image://docker.io/jolokia/java-jolokia:7" shape="ellipse"];
  "sha256:909b4cccd020107922d093871f9b709aff8f4e2e993a24c3bcbb2f356e6e035a" [label="/bin/sh -c wget http://archive.apache.org/dist/tomcat/tomcat-7/v${TOMCAT_VERSION}/bin/${TC}.tar.gz" shape="box"];
  "sha256:a49a8185558c1718b7302c401237c3259788887d8e7293ed02b4e009613277c5" [label="/bin/sh -c tar xzf ${TC}.tar.gz -C /opt" shape="box"];
  "sha256:ee44bdfd6f636ebaee246cb23c35120edc4496f98479593f1fc398cbab30d37e" [label="sha256:ee44bdfd6f636ebaee246cb23c35120edc4496f98479593f1fc398cbab30d37e" shape="plaintext"];
  "sha256:f0ddc1b924dedced32b58464d5ef44e1c554a934cef53f7ab81c6f1c436572c3" -> "sha256:909b4cccd020107922d093871f9b709aff8f4e2e993a24c3bcbb2f356e6e035a" [label=""];
  "sha256:909b4cccd020107922d093871f9b709aff8f4e2e993a24c3bcbb2f356e6e035a" -> "sha256:a49a8185558c1718b7302c401237c3259788887d8e7293ed02b4e009613277c5" [label=""];
  "sha256:a49a8185558c1718b7302c401237c3259788887d8e7293ed02b4e009613277c5" -> "sha256:ee44bdfd6f636ebaee246cb23c35120edc4496f98479593f1fc398cbab30d37e" [label=""];
}

