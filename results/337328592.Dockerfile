[app/sources/337328592.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:df4e0defc062ee9d9e18cfc01bf18069d59f7273cac8f7daf0a33f9a9fdb4ce2" [label="/bin/sh -c apk add --update ca-certificates" shape="box"];
  "sha256:d83fe1cb246cabd50c0180921f52601dfaee574e11458c94faae13f77b2bd676" [label="local://context" shape="ellipse"];
  "sha256:43930c9018bfc5709869dca23d7890da81be99ed584efccd731bf7fc1999308c" [label="copy{src=/IngressMonitorController, dest=/bin/IngressMonitorController}" shape="note"];
  "sha256:104f4f702aedb72c4c70450d20d0289d325580e2c46ff4b360859d303c6fe710" [label="sha256:104f4f702aedb72c4c70450d20d0289d325580e2c46ff4b360859d303c6fe710" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:df4e0defc062ee9d9e18cfc01bf18069d59f7273cac8f7daf0a33f9a9fdb4ce2" [label=""];
  "sha256:df4e0defc062ee9d9e18cfc01bf18069d59f7273cac8f7daf0a33f9a9fdb4ce2" -> "sha256:43930c9018bfc5709869dca23d7890da81be99ed584efccd731bf7fc1999308c" [label=""];
  "sha256:d83fe1cb246cabd50c0180921f52601dfaee574e11458c94faae13f77b2bd676" -> "sha256:43930c9018bfc5709869dca23d7890da81be99ed584efccd731bf7fc1999308c" [label=""];
  "sha256:43930c9018bfc5709869dca23d7890da81be99ed584efccd731bf7fc1999308c" -> "sha256:104f4f702aedb72c4c70450d20d0289d325580e2c46ff4b360859d303c6fe710" [label=""];
}

