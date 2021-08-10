[app/sources/449399072.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:e8cdc8b73fec6b014b837ae18e53ac17bd8a7d68fa55c4501af1663a9ae1a040" [label="/bin/sh -c apk --update add ca-certificates" shape="box"];
  "sha256:7d0b36a215b07df7102b02284c21c1f89f75831366e86991373bd276c2dd27b5" [label="copy{src=/etc/ssl/certs/ca-certificates.crt, dest=/etc/ssl/certs/ca-certificates.crt}" shape="note"];
  "sha256:f0003750d8fb0d92c1bbaee7d6e2fe527b8776be53c58337e58cbed7e807d73e" [label="local://context" shape="ellipse"];
  "sha256:c6769e7bbac58380bb54eaea3f77658a9619cad1399acd9d5b0b847becf2dc58" [label="copy{src=/p3y, dest=/bin/}" shape="note"];
  "sha256:41d5dae10bf8efe836cb82dbdd27e54d9468cf2d01b79cd9631b269811a69d68" [label="sha256:41d5dae10bf8efe836cb82dbdd27e54d9468cf2d01b79cd9631b269811a69d68" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:e8cdc8b73fec6b014b837ae18e53ac17bd8a7d68fa55c4501af1663a9ae1a040" [label=""];
  "sha256:e8cdc8b73fec6b014b837ae18e53ac17bd8a7d68fa55c4501af1663a9ae1a040" -> "sha256:7d0b36a215b07df7102b02284c21c1f89f75831366e86991373bd276c2dd27b5" [label=""];
  "sha256:7d0b36a215b07df7102b02284c21c1f89f75831366e86991373bd276c2dd27b5" -> "sha256:c6769e7bbac58380bb54eaea3f77658a9619cad1399acd9d5b0b847becf2dc58" [label=""];
  "sha256:f0003750d8fb0d92c1bbaee7d6e2fe527b8776be53c58337e58cbed7e807d73e" -> "sha256:c6769e7bbac58380bb54eaea3f77658a9619cad1399acd9d5b0b847becf2dc58" [label=""];
  "sha256:c6769e7bbac58380bb54eaea3f77658a9619cad1399acd9d5b0b847becf2dc58" -> "sha256:41d5dae10bf8efe836cb82dbdd27e54d9468cf2d01b79cd9631b269811a69d68" [label=""];
}

