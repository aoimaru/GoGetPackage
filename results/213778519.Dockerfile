[app/sources/213778519.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:f7850bc439cb504dc9aa13ce8c6b29032c7803d08b48f1c1c28ef1bbc13755ac" [label="/bin/sh -c yum update -y &&     curl --insecure --junk-session-cookies --location --remote-name --silent --header \"Cookie: oraclelicense=accept-securebackup-cookie\" http://download.oracle.com/otn-pub/java/jdk/8u172-b11/a58eab1ec242421181065cdc37240b08/server-jre-8u172-linux-x64.tar.gz  &&     mkdir -p /usr/java &&     gunzip server-jre-8u172-linux-x64.tar.gz &&     tar xf server-jre-8u172-linux-x64.tar -C /usr/java &&     alternatives --install /usr/bin/java java /usr/java/jdk1.8.0_172/bin/java 1 &&     alternatives --install /usr/bin/jar  jar  /usr/java/jdk1.8.0_172/bin/jar  1 &&     rm server-jre-8u172-linux-x64.tar &&     yum clean all" shape="box"];
  "sha256:a00630088d0a3c80f78786be7243121bfdbcc25c07f050fd3fb8d7b88d1ccd1b" [label="sha256:a00630088d0a3c80f78786be7243121bfdbcc25c07f050fd3fb8d7b88d1ccd1b" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:f7850bc439cb504dc9aa13ce8c6b29032c7803d08b48f1c1c28ef1bbc13755ac" [label=""];
  "sha256:f7850bc439cb504dc9aa13ce8c6b29032c7803d08b48f1c1c28ef1bbc13755ac" -> "sha256:a00630088d0a3c80f78786be7243121bfdbcc25c07f050fd3fb8d7b88d1ccd1b" [label=""];
}

