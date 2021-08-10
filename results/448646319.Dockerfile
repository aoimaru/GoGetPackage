[app/sources/448646319.Dockerfile]
digraph {
  "sha256:194ef7ebe9747860308ed5e9114d1ac0b46e4fbd4b2f21fad283076f3eb71398" [label="docker-image://docker.io/consol/tomcat-7.0:latest" shape="ellipse"];
  "sha256:8ed0a7f5978edc0118c821f3e1fca26511760c1e7ccdd0537784c1bac74d0c80" [label="/bin/sh -c wget http://kunagi.org/releases/${KUNAGI_VERSION}/kunagi.war --directory-prefix=kunagi" shape="box"];
  "sha256:4312ae7edbf021cab6c0266fd2de8d3a1de69d380b2e6af2dfb29b3fea3e44ff" [label="sha256:4312ae7edbf021cab6c0266fd2de8d3a1de69d380b2e6af2dfb29b3fea3e44ff" shape="plaintext"];
  "sha256:194ef7ebe9747860308ed5e9114d1ac0b46e4fbd4b2f21fad283076f3eb71398" -> "sha256:8ed0a7f5978edc0118c821f3e1fca26511760c1e7ccdd0537784c1bac74d0c80" [label=""];
  "sha256:8ed0a7f5978edc0118c821f3e1fca26511760c1e7ccdd0537784c1bac74d0c80" -> "sha256:4312ae7edbf021cab6c0266fd2de8d3a1de69d380b2e6af2dfb29b3fea3e44ff" [label=""];
}

