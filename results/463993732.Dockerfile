[app/sources/463993732.Dockerfile]
digraph {
  "sha256:fabde6cea0568eb42fc92bbcbb9aa723cf4257905cc61d555850746070670f42" [label="docker-image://docker.io/fabric8/java-jboss-openjdk8-jdk:1.3.1" shape="ellipse"];
  "sha256:839407018065ac25db075f70da8b21efcb07fcab8f5947707a957f5fcf525765" [label="local://context" shape="ellipse"];
  "sha256:0f3ce5022e09a13ffa8741468ddc15bde0b710a5cface8b6c725e56e7e36d654" [label="copy{src=/target/inventory-1.0-SNAPSHOT-swarm.jar, dest=/deployments/}" shape="note"];
  "sha256:9a474f88388ca9f00378c883405c9901adfe0d0d75937a93c92c18412db886ed" [label="sha256:9a474f88388ca9f00378c883405c9901adfe0d0d75937a93c92c18412db886ed" shape="plaintext"];
  "sha256:fabde6cea0568eb42fc92bbcbb9aa723cf4257905cc61d555850746070670f42" -> "sha256:0f3ce5022e09a13ffa8741468ddc15bde0b710a5cface8b6c725e56e7e36d654" [label=""];
  "sha256:839407018065ac25db075f70da8b21efcb07fcab8f5947707a957f5fcf525765" -> "sha256:0f3ce5022e09a13ffa8741468ddc15bde0b710a5cface8b6c725e56e7e36d654" [label=""];
  "sha256:0f3ce5022e09a13ffa8741468ddc15bde0b710a5cface8b6c725e56e7e36d654" -> "sha256:9a474f88388ca9f00378c883405c9901adfe0d0d75937a93c92c18412db886ed" [label=""];
}

