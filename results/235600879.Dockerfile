[app/sources/235600879.Dockerfile]
digraph {
  "sha256:43290693b2c25afacd4cbec006fb75af9be8c204d79705d8189344717405ca58" [label="local://context" shape="ellipse"];
  "sha256:86886b2cbb73903dac5c27c668c9a341898c2a5025d3080be4d3ab4a2c9ace10" [label="docker-image://gcr.io/google_containers/ubuntu-slim:0.6@sha256:6fce5203ddcbe38d86b396efddd388bd28e1b36ec44deb98af6303397d4c2174" shape="ellipse"];
  "sha256:b5a3ed6b23b4428972865ff1417cdc86a0731cc8e6ad93f367283286dccbc657" [label="copy{src=/logs-generator, dest=/}" shape="note"];
  "sha256:38a052626b2b06ba47188b9be92d8c653603ca3ae92b421a130c49d85f6b7a00" [label="sha256:38a052626b2b06ba47188b9be92d8c653603ca3ae92b421a130c49d85f6b7a00" shape="plaintext"];
  "sha256:86886b2cbb73903dac5c27c668c9a341898c2a5025d3080be4d3ab4a2c9ace10" -> "sha256:b5a3ed6b23b4428972865ff1417cdc86a0731cc8e6ad93f367283286dccbc657" [label=""];
  "sha256:43290693b2c25afacd4cbec006fb75af9be8c204d79705d8189344717405ca58" -> "sha256:b5a3ed6b23b4428972865ff1417cdc86a0731cc8e6ad93f367283286dccbc657" [label=""];
  "sha256:b5a3ed6b23b4428972865ff1417cdc86a0731cc8e6ad93f367283286dccbc657" -> "sha256:38a052626b2b06ba47188b9be92d8c653603ca3ae92b421a130c49d85f6b7a00" [label=""];
}

