[app/sources/169633912.Dockerfile]
digraph {
  "sha256:935b762bf00c2c58fb1e6ab3309d05b4edc266ac717ef674d51def0a655e71e9" [label="docker-image://docker.io/jboss/wildfly:8.2.0.Final" shape="ellipse"];
  "sha256:a9cb3799e54cadf51fbe267724380ca28059d69397252a7b6e829e456cc71e2c" [label="/bin/sh -c /opt/jboss/wildfly/bin/add-user.sh -up mgmt-users.properties admin Admin#70365 --silent" shape="box"];
  "sha256:2b97f3e83f529f2f2ea59d644dcf14cf4d1aa88d7916595f7ae626ea6d8c0c86" [label="sha256:2b97f3e83f529f2f2ea59d644dcf14cf4d1aa88d7916595f7ae626ea6d8c0c86" shape="plaintext"];
  "sha256:935b762bf00c2c58fb1e6ab3309d05b4edc266ac717ef674d51def0a655e71e9" -> "sha256:a9cb3799e54cadf51fbe267724380ca28059d69397252a7b6e829e456cc71e2c" [label=""];
  "sha256:a9cb3799e54cadf51fbe267724380ca28059d69397252a7b6e829e456cc71e2c" -> "sha256:2b97f3e83f529f2f2ea59d644dcf14cf4d1aa88d7916595f7ae626ea6d8c0c86" [label=""];
}

