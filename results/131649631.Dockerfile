[app/sources/131649631.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:31fd01d2a6a7f99329d37f6ea73e63b7b10f1508f27ccedaeefe6fe5301074e7" [label="/bin/sh -c apt-get install -y python-software-properties" shape="box"];
  "sha256:88e0f3637d82a8e01e5245c2a0e194d5e74607171e523f5d84c2952958661de6" [label="/bin/sh -c add-apt-repository ppa:webupd8team/java -y" shape="box"];
  "sha256:bed11f05b3f68de9d59bc8973cafd1f19b51b9364394dee633bca0df8aa6731c" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:db4096b29111ff42c0b5b49710e209943a947b8ac5d8e97bb445365e53a5cfa1" [label="/bin/sh -c echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections" shape="box"];
  "sha256:8c9287d4c16f7dd411f9fd53702c9002f34346b736524654deae47ca10bb8f0c" [label="/bin/sh -c apt-get install -y oracle-java7-installer" shape="box"];
  "sha256:f57bce664f255fa0783cc38c6a4de17cb2122b5ded86fc54b569d707c2c105f1" [label="sha256:f57bce664f255fa0783cc38c6a4de17cb2122b5ded86fc54b569d707c2c105f1" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:31fd01d2a6a7f99329d37f6ea73e63b7b10f1508f27ccedaeefe6fe5301074e7" [label=""];
  "sha256:31fd01d2a6a7f99329d37f6ea73e63b7b10f1508f27ccedaeefe6fe5301074e7" -> "sha256:88e0f3637d82a8e01e5245c2a0e194d5e74607171e523f5d84c2952958661de6" [label=""];
  "sha256:88e0f3637d82a8e01e5245c2a0e194d5e74607171e523f5d84c2952958661de6" -> "sha256:bed11f05b3f68de9d59bc8973cafd1f19b51b9364394dee633bca0df8aa6731c" [label=""];
  "sha256:bed11f05b3f68de9d59bc8973cafd1f19b51b9364394dee633bca0df8aa6731c" -> "sha256:db4096b29111ff42c0b5b49710e209943a947b8ac5d8e97bb445365e53a5cfa1" [label=""];
  "sha256:db4096b29111ff42c0b5b49710e209943a947b8ac5d8e97bb445365e53a5cfa1" -> "sha256:8c9287d4c16f7dd411f9fd53702c9002f34346b736524654deae47ca10bb8f0c" [label=""];
  "sha256:8c9287d4c16f7dd411f9fd53702c9002f34346b736524654deae47ca10bb8f0c" -> "sha256:f57bce664f255fa0783cc38c6a4de17cb2122b5ded86fc54b569d707c2c105f1" [label=""];
}

