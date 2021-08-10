[app/sources/354587115.Dockerfile]
digraph {
  "sha256:9912f02d4e7c7bf9a8a685a3a567d7b8eba00c33f004436d9e3dd7d53041db9a" [label="docker-image://docker.io/library/rabbitmq:alpine" shape="ellipse"];
  "sha256:bcc2d8b7ce5d9458b0df3b0c1987b29729ef7123160c2e21eaa6c9e6e986e245" [label="/bin/sh -c rabbitmq-plugins enable --offline rabbitmq_management" shape="box"];
  "sha256:d7ffdcd8c4dab93ceff51030ace38c5aea51b112d7bea9b7f9b1292b3e5917be" [label="sha256:d7ffdcd8c4dab93ceff51030ace38c5aea51b112d7bea9b7f9b1292b3e5917be" shape="plaintext"];
  "sha256:9912f02d4e7c7bf9a8a685a3a567d7b8eba00c33f004436d9e3dd7d53041db9a" -> "sha256:bcc2d8b7ce5d9458b0df3b0c1987b29729ef7123160c2e21eaa6c9e6e986e245" [label=""];
  "sha256:bcc2d8b7ce5d9458b0df3b0c1987b29729ef7123160c2e21eaa6c9e6e986e245" -> "sha256:d7ffdcd8c4dab93ceff51030ace38c5aea51b112d7bea9b7f9b1292b3e5917be" [label=""];
}

