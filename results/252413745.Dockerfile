[app/sources/252413745.Dockerfile]
digraph {
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" [label="docker-image://docker.io/library/alpine:3.9" shape="ellipse"];
  "sha256:4913f785c6efdb9d55540590602dd0e4aceb865267674269347c749c4d78b22e" [label="/bin/sh -c apk upgrade --no-cache" shape="box"];
  "sha256:cc0a1b346129609d04f513e1eb3d94ad7798d65b13efcfaae680ff44240f210b" [label="local://context" shape="ellipse"];
  "sha256:ad435e28c9632d2af1da13dc8a1ee9bf4596c8466ec80e704d8469208139052c" [label="copy{src=/dist-static/aci-containers-controller, dest=/usr/local/bin/}" shape="note"];
  "sha256:38ed3c80e5fe761f2156a015593fe897e7f5e5c9f95e22dc1401b7b02b3a59f3" [label="sha256:38ed3c80e5fe761f2156a015593fe897e7f5e5c9f95e22dc1401b7b02b3a59f3" shape="plaintext"];
  "sha256:2a40567efb77fcdc2471db4c623d81d7eeb7b3900fb06bded9a92f2a02374dbc" -> "sha256:4913f785c6efdb9d55540590602dd0e4aceb865267674269347c749c4d78b22e" [label=""];
  "sha256:4913f785c6efdb9d55540590602dd0e4aceb865267674269347c749c4d78b22e" -> "sha256:ad435e28c9632d2af1da13dc8a1ee9bf4596c8466ec80e704d8469208139052c" [label=""];
  "sha256:cc0a1b346129609d04f513e1eb3d94ad7798d65b13efcfaae680ff44240f210b" -> "sha256:ad435e28c9632d2af1da13dc8a1ee9bf4596c8466ec80e704d8469208139052c" [label=""];
  "sha256:ad435e28c9632d2af1da13dc8a1ee9bf4596c8466ec80e704d8469208139052c" -> "sha256:38ed3c80e5fe761f2156a015593fe897e7f5e5c9f95e22dc1401b7b02b3a59f3" [label=""];
}

