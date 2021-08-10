[app/sources/283360655.Dockerfile]
digraph {
  "sha256:9cd7f0c26f2436f2158b6c629cab2679cb97af7e5c8bb44aa7246897bce9419f" [label="docker-image://docker.io/library/debian:stable-slim@sha256:a85c2c0e634946e92a6f4a9a4f6ce5f19ce7c11885bc198f04ab3ae8dacbaffa" shape="ellipse"];
  "sha256:c8973efa6882fd3568e9131e68c24814d8130dc8c14c891ef0b68bb82933467c" [label="docker-image://docker.io/library/openjdk:11-jdk-slim@sha256:dcd9a1af039074555b363cd2e1de3cc2f2401871b84adbedb63a579310473149" shape="ellipse"];
  "sha256:933408101229e8127f3ac3efe9c8b4109836af2a7aa2698c27f4911bbd626459" [label="/bin/sh -c jlink --compress=2           --no-header-files           --no-man-pages           --strip-debug           --add-modules java.base,java.compiler,java.desktop,java.instrument,java.management.rmi,java.prefs,java.security.jgss,java.security.sasl,java.sql,jdk.security.auth,jdk.unsupported,java.datatransfer,java.logging,java.naming,java.rmi,java.scripting,java.sql.rowset,java.transaction.xa,java.xml,java.xml.crypto,jdk.xml.dom,jdk.crypto.ec,jdk.crypto.cryptoki           --output /opt/jdk    && apt-get update && apt-get install -y binutils    && strip -p --strip-unneeded /opt/jdk/lib/server/libjvm.so" shape="box"];
  "sha256:6a2c652e6bf8a40109823d8dce8e72b228fde4222b7d16ce498cf901f039fa5a" [label="copy{src=/opt/jdk, dest=/opt/jdk}" shape="note"];
  "sha256:563e24d208c357520d13b3d21ebfcf95c52fc50faa6abdebbe92e66cbc81b2cd" [label="/bin/sh -c adduser --home \"/home/forgerock\" -uid 11111 --gid 0 forgerock --disabled-password --gecos \"forgerock user\" &&    apt-get update &&    apt-get install -y ca-certificates  &&    rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8a7b5e847f8ec55119697ce340e294ea54a6360dda3b202572b3dc3ec3573589" [label="sha256:8a7b5e847f8ec55119697ce340e294ea54a6360dda3b202572b3dc3ec3573589" shape="plaintext"];
  "sha256:c8973efa6882fd3568e9131e68c24814d8130dc8c14c891ef0b68bb82933467c" -> "sha256:933408101229e8127f3ac3efe9c8b4109836af2a7aa2698c27f4911bbd626459" [label=""];
  "sha256:9cd7f0c26f2436f2158b6c629cab2679cb97af7e5c8bb44aa7246897bce9419f" -> "sha256:6a2c652e6bf8a40109823d8dce8e72b228fde4222b7d16ce498cf901f039fa5a" [label=""];
  "sha256:933408101229e8127f3ac3efe9c8b4109836af2a7aa2698c27f4911bbd626459" -> "sha256:6a2c652e6bf8a40109823d8dce8e72b228fde4222b7d16ce498cf901f039fa5a" [label=""];
  "sha256:6a2c652e6bf8a40109823d8dce8e72b228fde4222b7d16ce498cf901f039fa5a" -> "sha256:563e24d208c357520d13b3d21ebfcf95c52fc50faa6abdebbe92e66cbc81b2cd" [label=""];
  "sha256:563e24d208c357520d13b3d21ebfcf95c52fc50faa6abdebbe92e66cbc81b2cd" -> "sha256:8a7b5e847f8ec55119697ce340e294ea54a6360dda3b202572b3dc3ec3573589" [label=""];
}

