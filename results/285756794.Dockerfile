[app/sources/285756794.Dockerfile]
digraph {
  "sha256:fabde6cea0568eb42fc92bbcbb9aa723cf4257905cc61d555850746070670f42" [label="docker-image://docker.io/fabric8/java-jboss-openjdk8-jdk:1.3.1" shape="ellipse"];
  "sha256:de19fb893d91677bc2e36950f1ac5b7f08e6b19ded5feb422ca0675a31b74c95" [label="local://context" shape="ellipse"];
  "sha256:76451b1e1157d01de42c608fbeacb7ddd98a75811b38333eb16a31111ab30a1a" [label="copy{src=/target/preference-swarm.jar, dest=/deployments/}" shape="note"];
  "sha256:fe27a045854a74c7280a02bcffde141bebb53c8504599bdb9d6733cefe803f33" [label="sha256:fe27a045854a74c7280a02bcffde141bebb53c8504599bdb9d6733cefe803f33" shape="plaintext"];
  "sha256:fabde6cea0568eb42fc92bbcbb9aa723cf4257905cc61d555850746070670f42" -> "sha256:76451b1e1157d01de42c608fbeacb7ddd98a75811b38333eb16a31111ab30a1a" [label=""];
  "sha256:de19fb893d91677bc2e36950f1ac5b7f08e6b19ded5feb422ca0675a31b74c95" -> "sha256:76451b1e1157d01de42c608fbeacb7ddd98a75811b38333eb16a31111ab30a1a" [label=""];
  "sha256:76451b1e1157d01de42c608fbeacb7ddd98a75811b38333eb16a31111ab30a1a" -> "sha256:fe27a045854a74c7280a02bcffde141bebb53c8504599bdb9d6733cefe803f33" [label=""];
}

