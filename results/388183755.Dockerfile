[app/sources/388183755.Dockerfile]
digraph {
  "sha256:74b99182c5bf9bedafe7562fc957aee06acb0b7e3b0dcc9247785de7e060378e" [label="docker-image://docker.io/library/node:8.11-alpine" shape="ellipse"];
  "sha256:05f237441126f519aae49bdf22bc72c9e2c9174145cffc09966bf8d4bdba63ab" [label="mkdir{path=/app}" shape="note"];
  "sha256:0e92ddcc732e0d3bc9c1844aa772049bd10416ba0b783e114dedc9201c77e925" [label="local://context" shape="ellipse"];
  "sha256:dd31414b249802f849f425a59b57fd2c687854c03c13cc955b91bb96a2e42aac" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:33213e5d58c2204b5ddc152f82750111b8831ed56eac8290acaffa158cbd73d1" [label="/bin/sh -c npm install" shape="box"];
  "sha256:33ea09b39017943e648fa0e51d0431c0d626724974b3f725b387b7494d2787f4" [label="sha256:33ea09b39017943e648fa0e51d0431c0d626724974b3f725b387b7494d2787f4" shape="plaintext"];
  "sha256:74b99182c5bf9bedafe7562fc957aee06acb0b7e3b0dcc9247785de7e060378e" -> "sha256:05f237441126f519aae49bdf22bc72c9e2c9174145cffc09966bf8d4bdba63ab" [label=""];
  "sha256:05f237441126f519aae49bdf22bc72c9e2c9174145cffc09966bf8d4bdba63ab" -> "sha256:dd31414b249802f849f425a59b57fd2c687854c03c13cc955b91bb96a2e42aac" [label=""];
  "sha256:0e92ddcc732e0d3bc9c1844aa772049bd10416ba0b783e114dedc9201c77e925" -> "sha256:dd31414b249802f849f425a59b57fd2c687854c03c13cc955b91bb96a2e42aac" [label=""];
  "sha256:dd31414b249802f849f425a59b57fd2c687854c03c13cc955b91bb96a2e42aac" -> "sha256:33213e5d58c2204b5ddc152f82750111b8831ed56eac8290acaffa158cbd73d1" [label=""];
  "sha256:33213e5d58c2204b5ddc152f82750111b8831ed56eac8290acaffa158cbd73d1" -> "sha256:33ea09b39017943e648fa0e51d0431c0d626724974b3f725b387b7494d2787f4" [label=""];
}

