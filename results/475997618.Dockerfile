[app/sources/475997618.Dockerfile]
digraph {
  "sha256:525fc1058d9a8f1e07cf22d6675260c0253e77a02ccdb6035c12885f8cc0eb57" [label="docker-image://docker.io/openshift/base-centos7:latest" shape="ellipse"];
  "sha256:97fd8635ae8f7a451439257e1de5acf8a5a089c4e407f33319f4ba9a380ce1d6" [label="/bin/sh -c yum update -y &&   yum install -y curl &&   yum install -y java-$JAVA_VERSON-openjdk java-$JAVA_VERSON-openjdk-devel &&   yum clean all" shape="box"];
  "sha256:c895cebdbbbbcc8bf6614269ed012da2cb17eba839e51029c854be85385a4391" [label="/bin/sh -c curl -fsSL https://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share   && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn" shape="box"];
  "sha256:d3a8ae238d96c1083df8567b439a2669e24687a2b58d03da1fa011b4d0f9568b" [label="local://context" shape="ellipse"];
  "sha256:4fdc9874d06cd460bf731014fd9a48fd9e4bb082a27d06d0156ae121e628622e" [label="copy{src=/s2i/bin, dest=/}" shape="note"];
  "sha256:ac71e5812b148644cd1babad8ed8323a66941eeea90b86c28e8e4c5b8d5f75e0" [label="/bin/sh -c chown -R 1001:0 ./" shape="box"];
  "sha256:2f2be69e114d76b05a2449bac64c6afeb96fe18f5d32bbb79caa614b96994c18" [label="sha256:2f2be69e114d76b05a2449bac64c6afeb96fe18f5d32bbb79caa614b96994c18" shape="plaintext"];
  "sha256:525fc1058d9a8f1e07cf22d6675260c0253e77a02ccdb6035c12885f8cc0eb57" -> "sha256:97fd8635ae8f7a451439257e1de5acf8a5a089c4e407f33319f4ba9a380ce1d6" [label=""];
  "sha256:97fd8635ae8f7a451439257e1de5acf8a5a089c4e407f33319f4ba9a380ce1d6" -> "sha256:c895cebdbbbbcc8bf6614269ed012da2cb17eba839e51029c854be85385a4391" [label=""];
  "sha256:c895cebdbbbbcc8bf6614269ed012da2cb17eba839e51029c854be85385a4391" -> "sha256:4fdc9874d06cd460bf731014fd9a48fd9e4bb082a27d06d0156ae121e628622e" [label=""];
  "sha256:d3a8ae238d96c1083df8567b439a2669e24687a2b58d03da1fa011b4d0f9568b" -> "sha256:4fdc9874d06cd460bf731014fd9a48fd9e4bb082a27d06d0156ae121e628622e" [label=""];
  "sha256:4fdc9874d06cd460bf731014fd9a48fd9e4bb082a27d06d0156ae121e628622e" -> "sha256:ac71e5812b148644cd1babad8ed8323a66941eeea90b86c28e8e4c5b8d5f75e0" [label=""];
  "sha256:ac71e5812b148644cd1babad8ed8323a66941eeea90b86c28e8e4c5b8d5f75e0" -> "sha256:2f2be69e114d76b05a2449bac64c6afeb96fe18f5d32bbb79caa614b96994c18" [label=""];
}

