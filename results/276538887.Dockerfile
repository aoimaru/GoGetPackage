[app/sources/276538887.Dockerfile]
digraph {
  "sha256:2373ad8d24f0b330ceaae6b44205c4eb9ead90dedd4cf00a6345f2421baf9cc1" [label="docker-image://docker.io/library/tomcat:8-jre8" shape="ellipse"];
  "sha256:2b401ac216be1be7dd878a886e583953c58247916b1ed7614ee546d8581579de" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:7b3d21bcedfbf200cc464f4c08f02baeb49aba8301ff77d94b7acf032243b9a1" [label="/bin/sh -c set -ex     && rm -rf /usr/local/tomcat/webapps/*     && chmod a+x /usr/local/tomcat/bin/*.sh     && wget -qO /usr/local/tomcat/webapps/ROOT.war $WAR_URL" shape="box"];
  "sha256:8fef8d548cdfae4ccbb8d2e13b577601ccdfd8d50c9c9bd278ad1c713af06914" [label="sha256:8fef8d548cdfae4ccbb8d2e13b577601ccdfd8d50c9c9bd278ad1c713af06914" shape="plaintext"];
  "sha256:2373ad8d24f0b330ceaae6b44205c4eb9ead90dedd4cf00a6345f2421baf9cc1" -> "sha256:2b401ac216be1be7dd878a886e583953c58247916b1ed7614ee546d8581579de" [label=""];
  "sha256:2b401ac216be1be7dd878a886e583953c58247916b1ed7614ee546d8581579de" -> "sha256:7b3d21bcedfbf200cc464f4c08f02baeb49aba8301ff77d94b7acf032243b9a1" [label=""];
  "sha256:7b3d21bcedfbf200cc464f4c08f02baeb49aba8301ff77d94b7acf032243b9a1" -> "sha256:8fef8d548cdfae4ccbb8d2e13b577601ccdfd8d50c9c9bd278ad1c713af06914" [label=""];
}

