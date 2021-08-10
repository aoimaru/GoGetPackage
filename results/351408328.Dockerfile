[app/sources/351408328.Dockerfile]
digraph {
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:aed7a28d5881e2bdb93406782d0c944c34205fa543f8b7d274f091b346587d01" [label="/bin/sh -c yum -q -y upgrade && yum -q -y install   autoconf   automake   bc   binutils-devel   gcc   git   m4   make   redhat-lsb   tar   unzip   which   java-1.8.0-openjdk   java-1.8.0-openjdk-devel && yum -q clean all" shape="box"];
  "sha256:71f982333d457b6d49b1ce986f3c795857c047cd92bf5ba40da14732a71aa019" [label="sha256:71f982333d457b6d49b1ce986f3c795857c047cd92bf5ba40da14732a71aa019" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:aed7a28d5881e2bdb93406782d0c944c34205fa543f8b7d274f091b346587d01" [label=""];
  "sha256:aed7a28d5881e2bdb93406782d0c944c34205fa543f8b7d274f091b346587d01" -> "sha256:71f982333d457b6d49b1ce986f3c795857c047cd92bf5ba40da14732a71aa019" [label=""];
}

