[app/sources/142240609.Dockerfile]
digraph {
  "sha256:3f1e1d23aa8fb479af0d7e58d9dce4cd814005da28c774112840c0a98c07bbfb" [label="docker-image://docker.io/continuumio/anaconda3:latest" shape="ellipse"];
  "sha256:60335e4779fdf9e663cc95814fbc981a680d1a267951fefb85ad484f78162abf" [label="/bin/sh -c useradd netuser" shape="box"];
  "sha256:4fc8f648556f1236fbc08968b3d5b3eb4aa93c698eb1f5f3590b2f7b054482e8" [label="/bin/sh -c mkdir /tmp/python" shape="box"];
  "sha256:3b8b71758c489444e4a53c7350be4b57a535095b44baf7680650aaa5ba7099c9" [label="local://context" shape="ellipse"];
  "sha256:b92c3461a5dc7e67e7f95d54a562888a62462d573dc116acc392f22baa5e3bf0" [label="copy{src=/generate_json_trace.py, dest=/tmp/python}" shape="note"];
  "sha256:d7c0ad3111e901d00156b116d9b7a818f4869bb55e61a03dbcb92fba3637fb98" [label="copy{src=/pg_encoder.py, dest=/tmp/python}" shape="note"];
  "sha256:b8c91a106ada3ca9863cfba70b5a7cf52c29216d59f58e7707251d391e3e447f" [label="copy{src=/pg_logger.py, dest=/tmp/python}" shape="note"];
  "sha256:01180355d278894fa8f6ec08e1d2d5faa49ec35480577d9fd1d79143a2742aa5" [label="sha256:01180355d278894fa8f6ec08e1d2d5faa49ec35480577d9fd1d79143a2742aa5" shape="plaintext"];
  "sha256:3f1e1d23aa8fb479af0d7e58d9dce4cd814005da28c774112840c0a98c07bbfb" -> "sha256:60335e4779fdf9e663cc95814fbc981a680d1a267951fefb85ad484f78162abf" [label=""];
  "sha256:60335e4779fdf9e663cc95814fbc981a680d1a267951fefb85ad484f78162abf" -> "sha256:4fc8f648556f1236fbc08968b3d5b3eb4aa93c698eb1f5f3590b2f7b054482e8" [label=""];
  "sha256:4fc8f648556f1236fbc08968b3d5b3eb4aa93c698eb1f5f3590b2f7b054482e8" -> "sha256:b92c3461a5dc7e67e7f95d54a562888a62462d573dc116acc392f22baa5e3bf0" [label=""];
  "sha256:3b8b71758c489444e4a53c7350be4b57a535095b44baf7680650aaa5ba7099c9" -> "sha256:b92c3461a5dc7e67e7f95d54a562888a62462d573dc116acc392f22baa5e3bf0" [label=""];
  "sha256:b92c3461a5dc7e67e7f95d54a562888a62462d573dc116acc392f22baa5e3bf0" -> "sha256:d7c0ad3111e901d00156b116d9b7a818f4869bb55e61a03dbcb92fba3637fb98" [label=""];
  "sha256:3b8b71758c489444e4a53c7350be4b57a535095b44baf7680650aaa5ba7099c9" -> "sha256:d7c0ad3111e901d00156b116d9b7a818f4869bb55e61a03dbcb92fba3637fb98" [label=""];
  "sha256:d7c0ad3111e901d00156b116d9b7a818f4869bb55e61a03dbcb92fba3637fb98" -> "sha256:b8c91a106ada3ca9863cfba70b5a7cf52c29216d59f58e7707251d391e3e447f" [label=""];
  "sha256:3b8b71758c489444e4a53c7350be4b57a535095b44baf7680650aaa5ba7099c9" -> "sha256:b8c91a106ada3ca9863cfba70b5a7cf52c29216d59f58e7707251d391e3e447f" [label=""];
  "sha256:b8c91a106ada3ca9863cfba70b5a7cf52c29216d59f58e7707251d391e3e447f" -> "sha256:01180355d278894fa8f6ec08e1d2d5faa49ec35480577d9fd1d79143a2742aa5" [label=""];
}

