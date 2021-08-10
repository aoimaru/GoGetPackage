[app/sources/212922319.Dockerfile]
digraph {
  "sha256:d20809d897d167c45482faeb580825a031a58345925271a9325735f624c517c1" [label="local://context" shape="ellipse"];
  "sha256:bee8c2650a55c09f582056b1848fad0ac6dd038f345199cd8c6cf5eef206e605" [label="docker-image://docker.io/jeanblanchard/java:jdk-8" shape="ellipse"];
  "sha256:37c50b752f31b1f0e21276a45eeb0ce3beb9143003326fd5698c2c5283d4334e" [label="/bin/sh -c apk add --update         linux-headers build-base autoconf automake libtool apr-util apr-util-dev git cmake ninja go" shape="box"];
  "sha256:9ad58f53019f6ae57f36ee88c1cb63315252b6faff82e83a4d593a622e2a5e82" [label="/bin/sh -c cd /usr/share ;         wget http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz -O - | tar xzf - ;        mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven ;        ln -s /usr/share/maven/bin/mvn /usr/bin/mvn" shape="box"];
  "sha256:f3e810ac8cc9e2daf85c89ee4c6238ff8e4319b3cf190acfe440072cb23f54ff" [label="copy{src=/compile.sh, dest=/compile.sh}" shape="note"];
  "sha256:d1ba370e14f7f876c9466150670f025c7057bc939008a8304e42ea5ea375ba22" [label="sha256:d1ba370e14f7f876c9466150670f025c7057bc939008a8304e42ea5ea375ba22" shape="plaintext"];
  "sha256:bee8c2650a55c09f582056b1848fad0ac6dd038f345199cd8c6cf5eef206e605" -> "sha256:37c50b752f31b1f0e21276a45eeb0ce3beb9143003326fd5698c2c5283d4334e" [label=""];
  "sha256:37c50b752f31b1f0e21276a45eeb0ce3beb9143003326fd5698c2c5283d4334e" -> "sha256:9ad58f53019f6ae57f36ee88c1cb63315252b6faff82e83a4d593a622e2a5e82" [label=""];
  "sha256:9ad58f53019f6ae57f36ee88c1cb63315252b6faff82e83a4d593a622e2a5e82" -> "sha256:f3e810ac8cc9e2daf85c89ee4c6238ff8e4319b3cf190acfe440072cb23f54ff" [label=""];
  "sha256:d20809d897d167c45482faeb580825a031a58345925271a9325735f624c517c1" -> "sha256:f3e810ac8cc9e2daf85c89ee4c6238ff8e4319b3cf190acfe440072cb23f54ff" [label=""];
  "sha256:f3e810ac8cc9e2daf85c89ee4c6238ff8e4319b3cf190acfe440072cb23f54ff" -> "sha256:d1ba370e14f7f876c9466150670f025c7057bc939008a8304e42ea5ea375ba22" [label=""];
}

