[app/sources/213778505.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:268bb6f67f5c700bc0dd94be9027042f76e77cf6bc0555740b597d8deafc60e5" [label="/bin/sh -c yum update -y &&     curl --insecure --junk-session-cookies --location --remote-name --silent --header \"Cookie: oraclelicense=accept-securebackup-cookie\" http://download.oracle.com/otn-pub/java/jdk/8u162-b12/0da788060d494f5095bf8624735fa2f1/jre-8u162-linux-x64.rpm &&     yum localinstall -y jre-8u162-linux-x64.rpm &&     rm jre-8u162-linux-x64.rpm &&     yum clean all" shape="box"];
  "sha256:80e0cb9ab45ba9bdf5ce8b961b0c9cc47f67a64510399e77f932156338a12c90" [label="sha256:80e0cb9ab45ba9bdf5ce8b961b0c9cc47f67a64510399e77f932156338a12c90" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:268bb6f67f5c700bc0dd94be9027042f76e77cf6bc0555740b597d8deafc60e5" [label=""];
  "sha256:268bb6f67f5c700bc0dd94be9027042f76e77cf6bc0555740b597d8deafc60e5" -> "sha256:80e0cb9ab45ba9bdf5ce8b961b0c9cc47f67a64510399e77f932156338a12c90" [label=""];
}

