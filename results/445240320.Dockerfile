[app/sources/445240320.Dockerfile]
digraph {
  "sha256:bd389b51eaec30f59fd93ef4ddea6be1ad6d0b90b01e62437cad4f23df84a00b" [label="docker-image://docker.io/jboss/wildfly:latest" shape="ellipse"];
  "sha256:0b26fec181fc765ad0c0f404f465a2ee2f381409d2a658a35bbd108b29fd659a" [label="/bin/sh -c sed -i.bak 's/<server name=\"server-one\" group=\"main-server-group\">/<server name=\"server-one\" group=\"main-server-group\" auto-start=\"false\">/' $JBOSS_HOME/domain/configuration/host.xml     && sed -i.bak 's/<http-interface security-realm=\"ManagementRealm\">/<http-interface security-realm=\"ManagementRealm\" allowed-origins=\"http:\\/\\/localhost:8888 http:\\/\\/localhost:3000 http:\\/\\/localhost:9090\">/' $JBOSS_HOME/domain/configuration/host.xml     && sed -i.bak 's/<server name=\"server-two\" group=\"main-server-group\" auto-start=\"true\">/<server name=\"server-two\" group=\"main-server-group\" auto-start=\"false\">/' $JBOSS_HOME/domain/configuration/host.xml     && $JBOSS_HOME/bin/add-user.sh -u admin -p admin --silent" shape="box"];
  "sha256:8bb2d6bfc3819586a4e4949e0990d3e160e0d7761c567748d63b4b85b435fdf8" [label="sha256:8bb2d6bfc3819586a4e4949e0990d3e160e0d7761c567748d63b4b85b435fdf8" shape="plaintext"];
  "sha256:bd389b51eaec30f59fd93ef4ddea6be1ad6d0b90b01e62437cad4f23df84a00b" -> "sha256:0b26fec181fc765ad0c0f404f465a2ee2f381409d2a658a35bbd108b29fd659a" [label=""];
  "sha256:0b26fec181fc765ad0c0f404f465a2ee2f381409d2a658a35bbd108b29fd659a" -> "sha256:8bb2d6bfc3819586a4e4949e0990d3e160e0d7761c567748d63b4b85b435fdf8" [label=""];
}

