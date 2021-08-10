[app/sources/183510928.Dockerfile]
digraph {
  "sha256:5ad99875690ac0b4f488662b0bb90218571313916b40d252b9fbb8aad6207b09" [label="docker-image://docker.io/internavenue/centos-base:centos7" shape="ellipse"];
  "sha256:51c645727f828b8bce7241fa016c709b01c4ca27c688422766af2227811968dc" [label="/bin/sh -c yum install -y   bzip2   git   java-1.8.0-openjdk   java-1.8.0-openjdk-devel   python-setuptools python-dev python-numpy   npm   tar   unzip   R   &&   yum clean all" shape="box"];
  "sha256:1de0132ed307cd02813d65301c9b9a19c2d90858ac3fc03beb14cc3170b9d3a3" [label="/bin/sh -c curl http://mirrors.ukfast.co.uk/sites/ftp.apache.org/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.zip -o apache-maven-3.3.3-bin.zip &&   unzip apache-maven-3.3.3-bin.zip &&   mv apache-maven-3.3.3/ /opt/maven &&   ln -s /opt/maven/bin/mvn /usr/bin/mvn" shape="box"];
  "sha256:d748645a381af80d367374091b870a071e8886b5aae5d4617d3f127a44e9335d" [label="/bin/sh -c easy_install py4j" shape="box"];
  "sha256:b13121f1ea7d1f6d9d472ef74f335b3cb92054e4917e1a96ac0a48efbc4bff3b" [label="local://context" shape="ellipse"];
  "sha256:a5b726d5e747d6bd38ae9af3076a1d774eb1748cff09fd2a9530947485590a4f" [label="copy{src=/scripts, dest=/scripts}" shape="note"];
  "sha256:2fabe873ffe9f63ee9122bf2824522b33fd4d5de8e76eb4eed24479998d7cf95" [label="/bin/sh -c chmod +x /scripts/build.sh" shape="box"];
  "sha256:3fa9d6de0d568a682ea3f0b4a2391bc7edaaf9f826e98651b99c0dfa34bb17c9" [label="/bin/sh -c chmod +x /scripts/start.sh" shape="box"];
  "sha256:826520b8276226ebca1f9740fa6b7e76054e218a8490a3d72db1d4bfe418d6d2" [label="sha256:826520b8276226ebca1f9740fa6b7e76054e218a8490a3d72db1d4bfe418d6d2" shape="plaintext"];
  "sha256:5ad99875690ac0b4f488662b0bb90218571313916b40d252b9fbb8aad6207b09" -> "sha256:51c645727f828b8bce7241fa016c709b01c4ca27c688422766af2227811968dc" [label=""];
  "sha256:51c645727f828b8bce7241fa016c709b01c4ca27c688422766af2227811968dc" -> "sha256:1de0132ed307cd02813d65301c9b9a19c2d90858ac3fc03beb14cc3170b9d3a3" [label=""];
  "sha256:1de0132ed307cd02813d65301c9b9a19c2d90858ac3fc03beb14cc3170b9d3a3" -> "sha256:d748645a381af80d367374091b870a071e8886b5aae5d4617d3f127a44e9335d" [label=""];
  "sha256:d748645a381af80d367374091b870a071e8886b5aae5d4617d3f127a44e9335d" -> "sha256:a5b726d5e747d6bd38ae9af3076a1d774eb1748cff09fd2a9530947485590a4f" [label=""];
  "sha256:b13121f1ea7d1f6d9d472ef74f335b3cb92054e4917e1a96ac0a48efbc4bff3b" -> "sha256:a5b726d5e747d6bd38ae9af3076a1d774eb1748cff09fd2a9530947485590a4f" [label=""];
  "sha256:a5b726d5e747d6bd38ae9af3076a1d774eb1748cff09fd2a9530947485590a4f" -> "sha256:2fabe873ffe9f63ee9122bf2824522b33fd4d5de8e76eb4eed24479998d7cf95" [label=""];
  "sha256:2fabe873ffe9f63ee9122bf2824522b33fd4d5de8e76eb4eed24479998d7cf95" -> "sha256:3fa9d6de0d568a682ea3f0b4a2391bc7edaaf9f826e98651b99c0dfa34bb17c9" [label=""];
  "sha256:3fa9d6de0d568a682ea3f0b4a2391bc7edaaf9f826e98651b99c0dfa34bb17c9" -> "sha256:826520b8276226ebca1f9740fa6b7e76054e218a8490a3d72db1d4bfe418d6d2" [label=""];
}

