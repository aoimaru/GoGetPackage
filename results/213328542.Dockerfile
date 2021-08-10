[app/sources/213328542.Dockerfile]
digraph {
  "sha256:2373ad8d24f0b330ceaae6b44205c4eb9ead90dedd4cf00a6345f2421baf9cc1" [label="docker-image://docker.io/library/tomcat:8-jre8" shape="ellipse"];
  "sha256:2b401ac216be1be7dd878a886e583953c58247916b1ed7614ee546d8581579de" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:c7cae38f55aef1367a43ec9d4d4408abaf900a191d28ad934447e39c4f3aa0c2" [label="/bin/sh -c set -ex     && rm -rf /usr/local/tomcat/webapps/*     && chmod a+x /usr/local/tomcat/bin/*.sh     && wget -qO /usr/local/tomcat/webapps/ROOT.war $WAR_URL" shape="box"];
  "sha256:484f2ee68a98f2c9012014c070707fabad2cb68ca1727ed3c438967191dc9260" [label="sha256:484f2ee68a98f2c9012014c070707fabad2cb68ca1727ed3c438967191dc9260" shape="plaintext"];
  "sha256:2373ad8d24f0b330ceaae6b44205c4eb9ead90dedd4cf00a6345f2421baf9cc1" -> "sha256:2b401ac216be1be7dd878a886e583953c58247916b1ed7614ee546d8581579de" [label=""];
  "sha256:2b401ac216be1be7dd878a886e583953c58247916b1ed7614ee546d8581579de" -> "sha256:c7cae38f55aef1367a43ec9d4d4408abaf900a191d28ad934447e39c4f3aa0c2" [label=""];
  "sha256:c7cae38f55aef1367a43ec9d4d4408abaf900a191d28ad934447e39c4f3aa0c2" -> "sha256:484f2ee68a98f2c9012014c070707fabad2cb68ca1727ed3c438967191dc9260" [label=""];
}

