[app/sources/161745382.Dockerfile]
digraph {
  "sha256:bd389b51eaec30f59fd93ef4ddea6be1ad6d0b90b01e62437cad4f23df84a00b" [label="docker-image://docker.io/jboss/wildfly:latest" shape="ellipse"];
  "sha256:5cb1cf7f02a15ebecfc5efe4541b08767000c64d817e822e16f87dfba39047bb" [label="/bin/sh -c sed -i 's|named-formatter name=\"COLOR-PATTERN\"|named-formatter name=\"PATTERN\"|' /opt/wildfly/standalone/configuration/standalone.xml" shape="box"];
  "sha256:bb1b6031694c196e67445995708f8eb8d886756173a395f896675b6195be1f78" [label="sha256:bb1b6031694c196e67445995708f8eb8d886756173a395f896675b6195be1f78" shape="plaintext"];
  "sha256:bd389b51eaec30f59fd93ef4ddea6be1ad6d0b90b01e62437cad4f23df84a00b" -> "sha256:5cb1cf7f02a15ebecfc5efe4541b08767000c64d817e822e16f87dfba39047bb" [label=""];
  "sha256:5cb1cf7f02a15ebecfc5efe4541b08767000c64d817e822e16f87dfba39047bb" -> "sha256:bb1b6031694c196e67445995708f8eb8d886756173a395f896675b6195be1f78" [label=""];
}

