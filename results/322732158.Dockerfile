[app/sources/322732158.Dockerfile]
digraph {
  "sha256:f5a5edb6dc48053475846d1bb3576add106c9df1a4f090751ebf7e511dc4dc49" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine@sha256:94792824df2df33402f201713f932b58cb9de94a0cd524164a0f2283343547b3" shape="ellipse"];
  "sha256:94d9ef64711ade6da5e8d7b4009f9b8bd2b3e16e35496652f54ffb4ed62ad874" [label="local://context" shape="ellipse"];
  "sha256:5f5907ad6d7dc1295bd44c9ac983c4aec1ddda4a45ddb27a9f12e98fbec49d4f" [label="copy{src=/target/security-rabbit-mq-1.0-SNAPSHOT.jar, dest=/app.jar}" shape="note"];
  "sha256:f2525fb9fd53fe8e24644f02b28e97d01212296dbeb45a35a2c66928a927d675" [label="sha256:f2525fb9fd53fe8e24644f02b28e97d01212296dbeb45a35a2c66928a927d675" shape="plaintext"];
  "sha256:f5a5edb6dc48053475846d1bb3576add106c9df1a4f090751ebf7e511dc4dc49" -> "sha256:5f5907ad6d7dc1295bd44c9ac983c4aec1ddda4a45ddb27a9f12e98fbec49d4f" [label=""];
  "sha256:94d9ef64711ade6da5e8d7b4009f9b8bd2b3e16e35496652f54ffb4ed62ad874" -> "sha256:5f5907ad6d7dc1295bd44c9ac983c4aec1ddda4a45ddb27a9f12e98fbec49d4f" [label=""];
  "sha256:5f5907ad6d7dc1295bd44c9ac983c4aec1ddda4a45ddb27a9f12e98fbec49d4f" -> "sha256:f2525fb9fd53fe8e24644f02b28e97d01212296dbeb45a35a2c66928a927d675" [label=""];
}

