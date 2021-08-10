[app/sources/468473078.Dockerfile]
digraph {
  "sha256:e31f701531914982d0eb5531d3038abf1574a5aa45790d8c0a98bfb65b8a9517" [label="docker-image://docker.io/oracle/graalvm-ce:1.0.0-rc10" shape="ellipse"];
  "sha256:e3f10a736a766eb402ccaed8273552ecd6ee734ed4d69abf99de63b9a15e89ea" [label="/bin/sh -c yum  install -y java-1.8.0-openjdk-headless     && update-alternatives --set java $JAVA_HOME/bin/java         && mv $JAVA_HOME/jre/lib/security/cacerts $JAVA_HOME/jre/lib/security/cacerts.bak     && ln -s /usr/lib/jvm/jre-1.8.0/lib/security/cacerts $JAVA_HOME/jre/lib/security/cacerts" shape="box"];
  "sha256:9889a1bdf9837509e2805c8e5b4325254c33f7475da1d31fd437dd34bfe12958" [label="sha256:9889a1bdf9837509e2805c8e5b4325254c33f7475da1d31fd437dd34bfe12958" shape="plaintext"];
  "sha256:e31f701531914982d0eb5531d3038abf1574a5aa45790d8c0a98bfb65b8a9517" -> "sha256:e3f10a736a766eb402ccaed8273552ecd6ee734ed4d69abf99de63b9a15e89ea" [label=""];
  "sha256:e3f10a736a766eb402ccaed8273552ecd6ee734ed4d69abf99de63b9a15e89ea" -> "sha256:9889a1bdf9837509e2805c8e5b4325254c33f7475da1d31fd437dd34bfe12958" [label=""];
}

