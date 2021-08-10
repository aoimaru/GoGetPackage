[app/sources/174183529.Dockerfile]
digraph {
  "sha256:bd389b51eaec30f59fd93ef4ddea6be1ad6d0b90b01e62437cad4f23df84a00b" [label="docker-image://docker.io/jboss/wildfly:latest" shape="ellipse"];
  "sha256:1883c2e7f10cb7163d5a7e1c4f43e8ff77d8f6feee777ddf5a8cf9df164ecae8" [label="local://context" shape="ellipse"];
  "sha256:e62e1177de158ec154c99272fab4d56c0700838ad422ad89f1f8d7de974fac4e" [label="copy{src=/customization, dest=/opt/jboss/wildfly/customization/}" shape="note"];
  "sha256:f6a7c7124e7bab8afa2b2d2205099c4837a896e3221dfbe1389f703a3ca822c9" [label="sha256:f6a7c7124e7bab8afa2b2d2205099c4837a896e3221dfbe1389f703a3ca822c9" shape="plaintext"];
  "sha256:bd389b51eaec30f59fd93ef4ddea6be1ad6d0b90b01e62437cad4f23df84a00b" -> "sha256:e62e1177de158ec154c99272fab4d56c0700838ad422ad89f1f8d7de974fac4e" [label=""];
  "sha256:1883c2e7f10cb7163d5a7e1c4f43e8ff77d8f6feee777ddf5a8cf9df164ecae8" -> "sha256:e62e1177de158ec154c99272fab4d56c0700838ad422ad89f1f8d7de974fac4e" [label=""];
  "sha256:e62e1177de158ec154c99272fab4d56c0700838ad422ad89f1f8d7de974fac4e" -> "sha256:f6a7c7124e7bab8afa2b2d2205099c4837a896e3221dfbe1389f703a3ca822c9" [label=""];
}

