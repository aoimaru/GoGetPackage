[app/sources/200582357.Dockerfile]
digraph {
  "sha256:d9cb16897ea02ea62763360f7bbf1b213cf9c1ca11760912c519226c27abb9ee" [label="docker-image://docker.io/ppc64le/ubuntu:18.04" shape="ellipse"];
  "sha256:c462864bcfe72e2944f57c05635139ffceeab1c8c3a4785b5a9a1832b1a7fc81" [label="/bin/sh -c apt-get -qqy update &&     apt-get -y --no-install-recommends install         curl         ca-certificates         build-essential &&     apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:cd66704570b378765eba0cfc2a7a995ac331f31a4066fc997c5673883033b19b" [label="/bin/sh -c mkdir -p /opt/maven &&     curl -fsSL http://apache.osuosl.org/maven/maven-3/3.6.0/binaries/apache-maven-3.6.0-bin.tar.gz |         tar -xzC /opt/maven --strip-components=1 &&     curl -O http://repo1.maven.org/maven2/io/takari/aether/takari-local-repository/0.11.2/takari-local-repository-0.11.2.jar &&     mv takari-local-repository-0.11.2.jar ${M2_HOME}/lib/ext &&     curl -O http://repo1.maven.org/maven2/io/takari/takari-filemanager/0.8.3/takari-filemanager-0.8.3.jar &&     mv takari-filemanager-0.8.3.jar ${M2_HOME}/lib/ext" shape="box"];
  "sha256:25e28ca65d536fb4628c9c85d387eaa86c3487726bc4335627e46bac5f2617f4" [label="/bin/sh -c mkdir -p /opt/sbt &&     curl -fsSL https://dl.bintray.com/sbt/native-packages/sbt/0.13.13/sbt-0.13.13.tgz |     tar -xzC /opt/sbt --strip-components=1" shape="box"];
  "sha256:29edd1f4a1f88885a068e61b23f426eb19d04bb0274025fa27742c8a497691f8" [label="/bin/sh -c curl -fsSL https://cmake.org/files/v3.14/cmake-3.14.3.tar.gz     | tar xz &&     cd cmake-3.14.3 &&     ./configure --prefix=/opt/cmake &&     make -j2 &&     make install &&     cd .. &&     rm -r cmake-3.14.3" shape="box"];
  "sha256:476af8dad86ecd106514157fdb99917b98b96db6ce7ce9f96d98ad4d72f78fd8" [label="/bin/sh -c curl -fsSL https://github.com/google/protobuf/releases/download/v3.5.1/protobuf-cpp-3.5.1.tar.gz     | tar xz &&     cd protobuf-3.5.1 &&     ./configure --prefix=/opt/protobuf &&     make -j2 &&     make install &&     cd .. &&     rm -rf protobuf-3.5.1" shape="box"];
  "sha256:f615c05dd088b61750ef401eef5e3aa37b32302c615ef7854edad6b314e79c0e" [label="copy{src=/opt, dest=/opt}" shape="note"];
  "sha256:449263ec7635390886a31289d1e2053bd5e79a05be6ca2f632493930b3ce423e" [label="/bin/sh -c apt-get -qqy update &&     apt-get -y --no-install-recommends install         wget         curl         ca-certificates         software-properties-common         git         build-essential         gnupg-agent         dirmngr         openjdk-8-jdk-headless         libgtk2.0-dev &&     apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* &&     update-java-alternatives --set java-1.8.0-openjdk-ppc64el" shape="box"];
  "sha256:c005119e6dea734a90996e9b1c8d9669f20ee9144a2d06c2d11aaa5380f4e8d2" [label="/bin/sh -c groupadd jenkins -g 1001 && useradd -d ${HOME} -u 1001 -g 1001 -m jenkins" shape="box"];
  "sha256:4fa0c32339e89e8626b4c6510459dceea5a52b34f10da64de28e3f70e83876a9" [label="mkdir{path=/home/jenkins}" shape="note"];
  "sha256:33b1ee7e890ca1c3302318e85303611ba26f0f58bb25f7e9f4b686e782555167" [label="sha256:33b1ee7e890ca1c3302318e85303611ba26f0f58bb25f7e9f4b686e782555167" shape="plaintext"];
  "sha256:d9cb16897ea02ea62763360f7bbf1b213cf9c1ca11760912c519226c27abb9ee" -> "sha256:c462864bcfe72e2944f57c05635139ffceeab1c8c3a4785b5a9a1832b1a7fc81" [label=""];
  "sha256:c462864bcfe72e2944f57c05635139ffceeab1c8c3a4785b5a9a1832b1a7fc81" -> "sha256:cd66704570b378765eba0cfc2a7a995ac331f31a4066fc997c5673883033b19b" [label=""];
  "sha256:cd66704570b378765eba0cfc2a7a995ac331f31a4066fc997c5673883033b19b" -> "sha256:25e28ca65d536fb4628c9c85d387eaa86c3487726bc4335627e46bac5f2617f4" [label=""];
  "sha256:25e28ca65d536fb4628c9c85d387eaa86c3487726bc4335627e46bac5f2617f4" -> "sha256:29edd1f4a1f88885a068e61b23f426eb19d04bb0274025fa27742c8a497691f8" [label=""];
  "sha256:29edd1f4a1f88885a068e61b23f426eb19d04bb0274025fa27742c8a497691f8" -> "sha256:476af8dad86ecd106514157fdb99917b98b96db6ce7ce9f96d98ad4d72f78fd8" [label=""];
  "sha256:d9cb16897ea02ea62763360f7bbf1b213cf9c1ca11760912c519226c27abb9ee" -> "sha256:f615c05dd088b61750ef401eef5e3aa37b32302c615ef7854edad6b314e79c0e" [label=""];
  "sha256:476af8dad86ecd106514157fdb99917b98b96db6ce7ce9f96d98ad4d72f78fd8" -> "sha256:f615c05dd088b61750ef401eef5e3aa37b32302c615ef7854edad6b314e79c0e" [label=""];
  "sha256:f615c05dd088b61750ef401eef5e3aa37b32302c615ef7854edad6b314e79c0e" -> "sha256:449263ec7635390886a31289d1e2053bd5e79a05be6ca2f632493930b3ce423e" [label=""];
  "sha256:449263ec7635390886a31289d1e2053bd5e79a05be6ca2f632493930b3ce423e" -> "sha256:c005119e6dea734a90996e9b1c8d9669f20ee9144a2d06c2d11aaa5380f4e8d2" [label=""];
  "sha256:c005119e6dea734a90996e9b1c8d9669f20ee9144a2d06c2d11aaa5380f4e8d2" -> "sha256:4fa0c32339e89e8626b4c6510459dceea5a52b34f10da64de28e3f70e83876a9" [label=""];
  "sha256:4fa0c32339e89e8626b4c6510459dceea5a52b34f10da64de28e3f70e83876a9" -> "sha256:33b1ee7e890ca1c3302318e85303611ba26f0f58bb25f7e9f4b686e782555167" [label=""];
}

