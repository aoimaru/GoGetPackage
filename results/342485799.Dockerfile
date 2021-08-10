[app/sources/342485799.Dockerfile]
digraph {
  "sha256:f5a5edb6dc48053475846d1bb3576add106c9df1a4f090751ebf7e511dc4dc49" [label="docker-image://docker.io/library/openjdk:8-jdk-alpine@sha256:94792824df2df33402f201713f932b58cb9de94a0cd524164a0f2283343547b3" shape="ellipse"];
  "sha256:b7218440024583be5b883ff9a2f901cc176645a3e3e1e87ac87d67b952a345bb" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:67371c20d17014acbe0f659c5985924409492d55efdf1a6d7a347cad05e22406" [label="local://context" shape="ellipse"];
  "sha256:a9fb0cc9d752341f82daf0bd23a9f622305cfb4dc3565363b8ab5590233697de" [label="copy{src=/target/eureka-server-0.0.1-SNAPSHOT.jar, dest=/app/app.jar}" shape="note"];
  "sha256:256dae796a8009683d6446c9b1776ff6e9079749f0773657f5ecee3e815eb976" [label="sha256:256dae796a8009683d6446c9b1776ff6e9079749f0773657f5ecee3e815eb976" shape="plaintext"];
  "sha256:f5a5edb6dc48053475846d1bb3576add106c9df1a4f090751ebf7e511dc4dc49" -> "sha256:b7218440024583be5b883ff9a2f901cc176645a3e3e1e87ac87d67b952a345bb" [label=""];
  "sha256:b7218440024583be5b883ff9a2f901cc176645a3e3e1e87ac87d67b952a345bb" -> "sha256:a9fb0cc9d752341f82daf0bd23a9f622305cfb4dc3565363b8ab5590233697de" [label=""];
  "sha256:67371c20d17014acbe0f659c5985924409492d55efdf1a6d7a347cad05e22406" -> "sha256:a9fb0cc9d752341f82daf0bd23a9f622305cfb4dc3565363b8ab5590233697de" [label=""];
  "sha256:a9fb0cc9d752341f82daf0bd23a9f622305cfb4dc3565363b8ab5590233697de" -> "sha256:256dae796a8009683d6446c9b1776ff6e9079749f0773657f5ecee3e815eb976" [label=""];
}

