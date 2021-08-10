[app/sources/346805840.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:09158028e0f43279b566dc9fb999ded5c9cd220d2a06deffe30836a62e37b55e" [label="/bin/sh -c yum install epel-release -y &&     yum install openssh-clients mosh -y" shape="box"];
  "sha256:673c5d5324daf9b326b836f86b6dd03ba62026ed669461ddbd02737c6ccc2a85" [label="/bin/sh -c echo \"    IdentityFile ~/.ssh/id_rsa\" >> /etc/ssh/ssh_config" shape="box"];
  "sha256:9bdd06da6dbcf841fb30dd24f1cdb159f61ccd21f0bf55677b83726c199a3f11" [label="/bin/sh -c localedef -i en_US -f UTF-8 en_US.UTF-8" shape="box"];
  "sha256:fb2fd185a1bc049563d500e03fba8731c527058bf1db90b572c0b2400c9de6b1" [label="sha256:fb2fd185a1bc049563d500e03fba8731c527058bf1db90b572c0b2400c9de6b1" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:09158028e0f43279b566dc9fb999ded5c9cd220d2a06deffe30836a62e37b55e" [label=""];
  "sha256:09158028e0f43279b566dc9fb999ded5c9cd220d2a06deffe30836a62e37b55e" -> "sha256:673c5d5324daf9b326b836f86b6dd03ba62026ed669461ddbd02737c6ccc2a85" [label=""];
  "sha256:673c5d5324daf9b326b836f86b6dd03ba62026ed669461ddbd02737c6ccc2a85" -> "sha256:9bdd06da6dbcf841fb30dd24f1cdb159f61ccd21f0bf55677b83726c199a3f11" [label=""];
  "sha256:9bdd06da6dbcf841fb30dd24f1cdb159f61ccd21f0bf55677b83726c199a3f11" -> "sha256:fb2fd185a1bc049563d500e03fba8731c527058bf1db90b572c0b2400c9de6b1" [label=""];
}

