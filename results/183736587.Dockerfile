[app/sources/183736587.Dockerfile]
digraph {
  "sha256:4295664049a5c51c4b4135d4df68436163a64dcf1df8222d0066da80d9b78322" [label="local://context" shape="ellipse"];
  "sha256:09b5e8ac60a0b54845b3f8fe2fd1440090214c78af78c72c74a59772d8507385" [label="docker-image://docker.io/airdock/base:jessie@sha256:5549e59fa6942bd6f0c53dc6a37e1362c3bca136f258bcaaae438528b372e750" shape="ellipse"];
  "sha256:ada4653cad8eee45ff26d0112c34c83e4ad3437b7bf46f827a8c58f1da9ac08d" [label="copy{src=/java-dynamic-memory-opts, dest=/srv/java/}" shape="note"];
  "sha256:0b4f7bb5c2dceb2fc6d4fb968cdf63ec32fb875f3949d282a95fd2e71a37dc8a" [label="/bin/sh -c cd /tmp &&     curl -L -O -H \"Cookie: oraclelicense=accept-securebackup-cookie\" -k \"http://download.oracle.com/otn-pub/java/jdk/7u80-b15/jre-7u80-linux-x64.tar.gz\" &&     tar xf jre-7u80-linux-x64.tar.gz -C /srv/java &&     rm -f jre-7u80-linux-x64.tar.gz &&     ln -s /srv/java/jre* /srv/java/jre &&     ln -s /srv/java/jre /srv/java/jvm &&     chown -R java:java /srv/java &&     /root/post-install" shape="box"];
  "sha256:a2249bbb83e90c2ea1149807bfd0fc0acd3e03759eca15b543df548143b98641" [label="sha256:a2249bbb83e90c2ea1149807bfd0fc0acd3e03759eca15b543df548143b98641" shape="plaintext"];
  "sha256:09b5e8ac60a0b54845b3f8fe2fd1440090214c78af78c72c74a59772d8507385" -> "sha256:ada4653cad8eee45ff26d0112c34c83e4ad3437b7bf46f827a8c58f1da9ac08d" [label=""];
  "sha256:4295664049a5c51c4b4135d4df68436163a64dcf1df8222d0066da80d9b78322" -> "sha256:ada4653cad8eee45ff26d0112c34c83e4ad3437b7bf46f827a8c58f1da9ac08d" [label=""];
  "sha256:ada4653cad8eee45ff26d0112c34c83e4ad3437b7bf46f827a8c58f1da9ac08d" -> "sha256:0b4f7bb5c2dceb2fc6d4fb968cdf63ec32fb875f3949d282a95fd2e71a37dc8a" [label=""];
  "sha256:0b4f7bb5c2dceb2fc6d4fb968cdf63ec32fb875f3949d282a95fd2e71a37dc8a" -> "sha256:a2249bbb83e90c2ea1149807bfd0fc0acd3e03759eca15b543df548143b98641" [label=""];
}

