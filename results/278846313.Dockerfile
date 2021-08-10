[app/sources/278846313.Dockerfile]
digraph {
  "sha256:75e69f95dfb132dc937c9c92a9b73b5d7ad374411150afedeeb6f1498655cf52" [label="https://oss.sonatype.org/content/repositories/public/com/builtamont/cassandra-migration/0.9/cassandra-migration-0.9-jar-with-dependencies.jar" shape="ellipse"];
  "sha256:f708e9c8621dbb2f8138caa3e35cfa28629923819d42c733387c63f24f54c911" [label="docker-image://docker.io/library/python:2.7-alpine3.6@sha256:9c8758c13735d511eb530d4319a51dd0f030c6a14d8686c6890e2d7960dc6757" shape="ellipse"];
  "sha256:64dd02f72f67f1dc54909f0592d3305ac70076f4c33276516b0dc86dd00c413c" [label="/bin/sh -c { \t\techo '#!/bin/sh'; \t\techo 'set -e'; \t\techo; \t\techo 'dirname \"$(dirname \"$(readlink -f \"$(which javac || which java)\")\")\"'; \t} > /usr/local/bin/docker-java-home \t&& chmod +x /usr/local/bin/docker-java-home" shape="box"];
  "sha256:8b03a00f6f5f9c566e5e5df0fc97851834a96bd07aa634b0fd3d0804eebd6e46" [label="/bin/sh -c set -x \t&& apk add --no-cache \t\topenjdk8-jre=\"$JAVA_ALPINE_VERSION\" \t&& [ \"$JAVA_HOME\" = \"$(docker-java-home)\" ]" shape="box"];
  "sha256:beca3518f31cd9e08c938612a97b6b6226538458d376d42a9d6282baf9fadfb3" [label="/bin/sh -c apk add --no-cache mysql-client" shape="box"];
  "sha256:e1c0c5b7e86a2a5e95236657274dce79c22bfe069f9f86f68aa21f24d76c649a" [label="/bin/sh -c apk update && apk add git" shape="box"];
  "sha256:e775eb59abcd449829b2296f4ff422c23bb942f945d7eb336ecb47eaf542bd14" [label="/bin/sh -c git clone https://github.com/intuit/wasabi.git" shape="box"];
  "sha256:1b4a8c914ef47163fd8e77f5726ad389978e674472e3a21aa91b1724baeef94e" [label="/bin/sh -c pip install cqlsh==5.0.3 &&     cp /usr/local/bin/cqlsh /usr/local/bin/cqlsh4 &&     sed -i '/DEFAULT_PROTOCOL_VERSION = 4/c\\DEFAULT_PROTOCOL_VERSION = 3' /usr/local/bin/cqlsh" shape="box"];
  "sha256:f08dd2177bef1b7c29767ddb8bd424badf9bc3ad784f2f22d4d7a585bc0a8d06" [label="copy{src=/cassandra-migration-0.9-jar-with-dependencies.jar, dest=/wasabi/cassandra-migration.jar}" shape="note"];
  "sha256:33ae948007d531e2ef48a002164ffa3f0442909046917a344197be6a0218e90f" [label="/bin/sh -c cp -R /wasabi/modules/repository-datastax/src/main/resources/com/intuit/wasabi/repository/impl/cassandra/migration /wasabi/mutation" shape="box"];
  "sha256:e22114a0cea162a10ddc5eb5bdb419bc7c66f3de13157cd7f7a6aec48823599b" [label="/bin/sh -c cp /wasabi/bin/docker/schema_migration.sh /wasabi/schema_migration.sh" shape="box"];
  "sha256:3190ed2fecccff4a3edd65f4fb3f312d6361a358d618e789960d9871b9ee4f0d" [label="/bin/sh -c cp /wasabi/bin/docker/create_keyspace.sh /wasabi/create_keyspace.sh" shape="box"];
  "sha256:8967129697c156845f676d5921f698b8e815803ba71bc9865b0dbaf004846552" [label="local://context" shape="ellipse"];
  "sha256:06adfb05c565ff358223f9cba997bf3a8080acbfa3391a06edaccf9867089bac" [label="copy{src=/init_script.sh, dest=/init_script.sh}" shape="note"];
  "sha256:1bf1747907b9857ea28b324fa030380867f377c62b5f10dbac791460625b48df" [label="/bin/sh -c chmod +x /init_script.sh" shape="box"];
  "sha256:4e8226dfb724ce1b0e40f13990ac0eb3315b300b39d9f537db17972e6688430f" [label="sha256:4e8226dfb724ce1b0e40f13990ac0eb3315b300b39d9f537db17972e6688430f" shape="plaintext"];
  "sha256:f708e9c8621dbb2f8138caa3e35cfa28629923819d42c733387c63f24f54c911" -> "sha256:64dd02f72f67f1dc54909f0592d3305ac70076f4c33276516b0dc86dd00c413c" [label=""];
  "sha256:64dd02f72f67f1dc54909f0592d3305ac70076f4c33276516b0dc86dd00c413c" -> "sha256:8b03a00f6f5f9c566e5e5df0fc97851834a96bd07aa634b0fd3d0804eebd6e46" [label=""];
  "sha256:8b03a00f6f5f9c566e5e5df0fc97851834a96bd07aa634b0fd3d0804eebd6e46" -> "sha256:beca3518f31cd9e08c938612a97b6b6226538458d376d42a9d6282baf9fadfb3" [label=""];
  "sha256:beca3518f31cd9e08c938612a97b6b6226538458d376d42a9d6282baf9fadfb3" -> "sha256:e1c0c5b7e86a2a5e95236657274dce79c22bfe069f9f86f68aa21f24d76c649a" [label=""];
  "sha256:e1c0c5b7e86a2a5e95236657274dce79c22bfe069f9f86f68aa21f24d76c649a" -> "sha256:e775eb59abcd449829b2296f4ff422c23bb942f945d7eb336ecb47eaf542bd14" [label=""];
  "sha256:e775eb59abcd449829b2296f4ff422c23bb942f945d7eb336ecb47eaf542bd14" -> "sha256:1b4a8c914ef47163fd8e77f5726ad389978e674472e3a21aa91b1724baeef94e" [label=""];
  "sha256:1b4a8c914ef47163fd8e77f5726ad389978e674472e3a21aa91b1724baeef94e" -> "sha256:f08dd2177bef1b7c29767ddb8bd424badf9bc3ad784f2f22d4d7a585bc0a8d06" [label=""];
  "sha256:75e69f95dfb132dc937c9c92a9b73b5d7ad374411150afedeeb6f1498655cf52" -> "sha256:f08dd2177bef1b7c29767ddb8bd424badf9bc3ad784f2f22d4d7a585bc0a8d06" [label=""];
  "sha256:f08dd2177bef1b7c29767ddb8bd424badf9bc3ad784f2f22d4d7a585bc0a8d06" -> "sha256:33ae948007d531e2ef48a002164ffa3f0442909046917a344197be6a0218e90f" [label=""];
  "sha256:33ae948007d531e2ef48a002164ffa3f0442909046917a344197be6a0218e90f" -> "sha256:e22114a0cea162a10ddc5eb5bdb419bc7c66f3de13157cd7f7a6aec48823599b" [label=""];
  "sha256:e22114a0cea162a10ddc5eb5bdb419bc7c66f3de13157cd7f7a6aec48823599b" -> "sha256:3190ed2fecccff4a3edd65f4fb3f312d6361a358d618e789960d9871b9ee4f0d" [label=""];
  "sha256:3190ed2fecccff4a3edd65f4fb3f312d6361a358d618e789960d9871b9ee4f0d" -> "sha256:06adfb05c565ff358223f9cba997bf3a8080acbfa3391a06edaccf9867089bac" [label=""];
  "sha256:8967129697c156845f676d5921f698b8e815803ba71bc9865b0dbaf004846552" -> "sha256:06adfb05c565ff358223f9cba997bf3a8080acbfa3391a06edaccf9867089bac" [label=""];
  "sha256:06adfb05c565ff358223f9cba997bf3a8080acbfa3391a06edaccf9867089bac" -> "sha256:1bf1747907b9857ea28b324fa030380867f377c62b5f10dbac791460625b48df" [label=""];
  "sha256:1bf1747907b9857ea28b324fa030380867f377c62b5f10dbac791460625b48df" -> "sha256:4e8226dfb724ce1b0e40f13990ac0eb3315b300b39d9f537db17972e6688430f" [label=""];
}

