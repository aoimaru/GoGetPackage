[app/sources/299142626.Dockerfile]
digraph {
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" [label="docker-image://docker.io/library/openjdk:8" shape="ellipse"];
  "sha256:49612000dfa6ebb59433a6eb89692aa69faa7390d2ed02c03b91c9b175c0c157" [label="local://context" shape="ellipse"];
  "sha256:e1de05788bec2d593fc1e4addb0043bcef7197470c66f9f6095c405b3bb01e0e" [label="docker-image://docker.io/library/maven:3.5.3-jdk-8" shape="ellipse"];
  "sha256:662b988ba0881fc418c7584ebed456a1ad8cf80e62303fddab02c6ff5ed5fa08" [label="copy{src=/main, dest=/usr/jh/main}" shape="note"];
  "sha256:a143276033dba85ea4ebc7d5099a2bc67568c4f57b708c6cf67cf4efc1b9736d" [label="copy{src=/common, dest=/usr/jh/common}" shape="note"];
  "sha256:dd0a5fd8ea787cffb8017d2995c340e08ce43f36c05d7728b890efaa9a6de3b6" [label="copy{src=/pom.xml, dest=/usr/jh}" shape="note"];
  "sha256:ac22173d1f63c62b860134454b4e6485fbe612a99bfbfa139f7fdb43381c2a35" [label="/bin/sh -c mvn -f /usr/jh/pom.xml clean package" shape="box"];
  "sha256:e6041a3a057770780035b7e7d919cf9728d1606e0b3e6a63f862bfe626672780" [label="copy{src=/usr/jh/main/target/main-1.0.0.jar, dest=/usr/jh/jh.jar}" shape="note"];
  "sha256:1f9159b988c1bc44dd240c56f3ccc91d07114a51652f831ead6508d932d08877" [label="sha256:1f9159b988c1bc44dd240c56f3ccc91d07114a51652f831ead6508d932d08877" shape="plaintext"];
  "sha256:e1de05788bec2d593fc1e4addb0043bcef7197470c66f9f6095c405b3bb01e0e" -> "sha256:662b988ba0881fc418c7584ebed456a1ad8cf80e62303fddab02c6ff5ed5fa08" [label=""];
  "sha256:49612000dfa6ebb59433a6eb89692aa69faa7390d2ed02c03b91c9b175c0c157" -> "sha256:662b988ba0881fc418c7584ebed456a1ad8cf80e62303fddab02c6ff5ed5fa08" [label=""];
  "sha256:662b988ba0881fc418c7584ebed456a1ad8cf80e62303fddab02c6ff5ed5fa08" -> "sha256:a143276033dba85ea4ebc7d5099a2bc67568c4f57b708c6cf67cf4efc1b9736d" [label=""];
  "sha256:49612000dfa6ebb59433a6eb89692aa69faa7390d2ed02c03b91c9b175c0c157" -> "sha256:a143276033dba85ea4ebc7d5099a2bc67568c4f57b708c6cf67cf4efc1b9736d" [label=""];
  "sha256:a143276033dba85ea4ebc7d5099a2bc67568c4f57b708c6cf67cf4efc1b9736d" -> "sha256:dd0a5fd8ea787cffb8017d2995c340e08ce43f36c05d7728b890efaa9a6de3b6" [label=""];
  "sha256:49612000dfa6ebb59433a6eb89692aa69faa7390d2ed02c03b91c9b175c0c157" -> "sha256:dd0a5fd8ea787cffb8017d2995c340e08ce43f36c05d7728b890efaa9a6de3b6" [label=""];
  "sha256:dd0a5fd8ea787cffb8017d2995c340e08ce43f36c05d7728b890efaa9a6de3b6" -> "sha256:ac22173d1f63c62b860134454b4e6485fbe612a99bfbfa139f7fdb43381c2a35" [label=""];
  "sha256:0fa0e74dbbf8924b05e017994463082115ee340cd518a160dd887221b3c2a25f" -> "sha256:e6041a3a057770780035b7e7d919cf9728d1606e0b3e6a63f862bfe626672780" [label=""];
  "sha256:ac22173d1f63c62b860134454b4e6485fbe612a99bfbfa139f7fdb43381c2a35" -> "sha256:e6041a3a057770780035b7e7d919cf9728d1606e0b3e6a63f862bfe626672780" [label=""];
  "sha256:e6041a3a057770780035b7e7d919cf9728d1606e0b3e6a63f862bfe626672780" -> "sha256:1f9159b988c1bc44dd240c56f3ccc91d07114a51652f831ead6508d932d08877" [label=""];
}

