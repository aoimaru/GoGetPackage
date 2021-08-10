[app/sources/178765305.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:50d6cb430aae8e6ff94ab6427c7d46ad06078cfe2177ea2e397e58954b2af593" [label="/bin/sh -c yum update -y && yum install -y wget && yum install -y java-1.7.0-openjdk java-1.7.0-openjdk-devel && yum clean all" shape="box"];
  "sha256:5af0550682289741686a52c7cfd6a963e1cdf262f09b33ffb2a951a072e96ec0" [label="mkdir{path=/root}" shape="note"];
  "sha256:64d2a3d555f9d34bb988e620e4d1cde579ba31f361a9ce86576090a5ea34be8c" [label="sha256:64d2a3d555f9d34bb988e620e4d1cde579ba31f361a9ce86576090a5ea34be8c" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:50d6cb430aae8e6ff94ab6427c7d46ad06078cfe2177ea2e397e58954b2af593" [label=""];
  "sha256:50d6cb430aae8e6ff94ab6427c7d46ad06078cfe2177ea2e397e58954b2af593" -> "sha256:5af0550682289741686a52c7cfd6a963e1cdf262f09b33ffb2a951a072e96ec0" [label=""];
  "sha256:5af0550682289741686a52c7cfd6a963e1cdf262f09b33ffb2a951a072e96ec0" -> "sha256:64d2a3d555f9d34bb988e620e4d1cde579ba31f361a9ce86576090a5ea34be8c" [label=""];
}

