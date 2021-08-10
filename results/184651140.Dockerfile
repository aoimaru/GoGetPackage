[app/sources/184651140.Dockerfile]
digraph {
  "sha256:6ef698f6cf3c06bf9e2de1cd9c4b93f5aba16e6535ec50fcde38e750652bf914" [label="docker-image://docker.io/library/tomcat:9-jre8@sha256:4ec7984f3e609ca49df96f2738d2de74bd311fa4122c558b7a615d6a0b07dc60" shape="ellipse"];
  "sha256:d54b5a7564a4f58e0306ed0b5a98bda58acde4196d53619779f7b91cdb41ba6e" [label="local://context" shape="ellipse"];
  "sha256:b66b5899d2be2f7f2c6b94799dff41043b0282a2a01fa92b6ea2a54829a7c841" [label="copy{src=/app.war, dest=/usr/local/tomcat/webapps/}" shape="note"];
  "sha256:16bbfd549d2743e9826622b550ff1918519e49a925cf7890b984c5cdd8511ec4" [label="https://repo1.maven.org/maven2/org/hsqldb/hsqldb/2.4.1/hsqldb-2.4.1.jar" shape="ellipse"];
  "sha256:6cd02c3637a8d660d88016cca1980646361be02aed420ff68f0dc86e76855e84" [label="copy{src=/hsqldb-2.4.1.jar, dest=/usr/local/tomcat/lib/hsqldb-2.4.1.jar}" shape="note"];
  "sha256:32e20868d6562535705981e70717ac381848a0959eba6fdbe6c3dd8b79eb103b" [label="sha256:32e20868d6562535705981e70717ac381848a0959eba6fdbe6c3dd8b79eb103b" shape="plaintext"];
  "sha256:6ef698f6cf3c06bf9e2de1cd9c4b93f5aba16e6535ec50fcde38e750652bf914" -> "sha256:b66b5899d2be2f7f2c6b94799dff41043b0282a2a01fa92b6ea2a54829a7c841" [label=""];
  "sha256:d54b5a7564a4f58e0306ed0b5a98bda58acde4196d53619779f7b91cdb41ba6e" -> "sha256:b66b5899d2be2f7f2c6b94799dff41043b0282a2a01fa92b6ea2a54829a7c841" [label=""];
  "sha256:b66b5899d2be2f7f2c6b94799dff41043b0282a2a01fa92b6ea2a54829a7c841" -> "sha256:6cd02c3637a8d660d88016cca1980646361be02aed420ff68f0dc86e76855e84" [label=""];
  "sha256:16bbfd549d2743e9826622b550ff1918519e49a925cf7890b984c5cdd8511ec4" -> "sha256:6cd02c3637a8d660d88016cca1980646361be02aed420ff68f0dc86e76855e84" [label=""];
  "sha256:6cd02c3637a8d660d88016cca1980646361be02aed420ff68f0dc86e76855e84" -> "sha256:32e20868d6562535705981e70717ac381848a0959eba6fdbe6c3dd8b79eb103b" [label=""];
}

