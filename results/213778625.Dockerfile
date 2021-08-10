[app/sources/213778625.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:19658e277a951c576ec8233fa290d346585d40dbdf7169b76cec17e506d46a8a" [label="/bin/sh -c yum update -y &&     curl --insecure --junk-session-cookies --location --remote-name --silent --header \"Cookie: oraclelicense=accept-securebackup-cookie\" http://download.oracle.com/otn-pub/java/jdk/8u77-b03/jre-8u77-linux-x64.rpm &&     yum localinstall -y jre-8u77-linux-x64.rpm &&     rm jre-8u77-linux-x64.rpm &&     yum clean all" shape="box"];
  "sha256:6aefbbf8845c028fa9eb108671248297d663838f6f844fd45346f9146eff5f3f" [label="sha256:6aefbbf8845c028fa9eb108671248297d663838f6f844fd45346f9146eff5f3f" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:19658e277a951c576ec8233fa290d346585d40dbdf7169b76cec17e506d46a8a" [label=""];
  "sha256:19658e277a951c576ec8233fa290d346585d40dbdf7169b76cec17e506d46a8a" -> "sha256:6aefbbf8845c028fa9eb108671248297d663838f6f844fd45346f9146eff5f3f" [label=""];
}

