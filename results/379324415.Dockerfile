[app/sources/379324415.Dockerfile]
digraph {
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:518b1949d3460fe71f2fafafbc4c3bd65344df0be9cfc71e859b7a4551d841a7" [label="/bin/sh -c yum install -y         tar         wget         java-1.8.0-openjdk         java-1.8.0-openjdk-devel     && cd /usr/src     && wget http://apache.cs.utah.edu/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.tar.gz     && tar xzvf apache-maven-3.2.5-bin.tar.gz     && rm apache-maven-3.2.5-bin.tar.gz     && mv apache-maven-3.2.5 /opt/maven     && ln -s /opt/maven/bin/mvn /usr/bin/mvn     && yum install -y         asciidoc         rpm-build         rpm2cpio         tar         unzip         xmlto         zip         rpmlint     && cd /root     && curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -     && yum install -y         gcc-c++         make         nodejs     && yum remove -y         wget     && yum clean all" shape="box"];
  "sha256:b5912b84fa49672adcbe4505f42247bf6a078f34c4f3810ea7ad5848f1d9bb6a" [label="mkdir{path=/root}" shape="note"];
  "sha256:dc2a15ca5e41391154cd70e11991b92307ae91176956cf704c9595940c54f885" [label="sha256:dc2a15ca5e41391154cd70e11991b92307ae91176956cf704c9595940c54f885" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:518b1949d3460fe71f2fafafbc4c3bd65344df0be9cfc71e859b7a4551d841a7" [label=""];
  "sha256:518b1949d3460fe71f2fafafbc4c3bd65344df0be9cfc71e859b7a4551d841a7" -> "sha256:b5912b84fa49672adcbe4505f42247bf6a078f34c4f3810ea7ad5848f1d9bb6a" [label=""];
  "sha256:b5912b84fa49672adcbe4505f42247bf6a078f34c4f3810ea7ad5848f1d9bb6a" -> "sha256:dc2a15ca5e41391154cd70e11991b92307ae91176956cf704c9595940c54f885" [label=""];
}

