[app/sources/482170423.Dockerfile]
digraph {
  "sha256:bc2675d2f6daa05da1bb1189284a1ceba60e4352b700afc2e42dd60dc5fae5bf" [label="docker-image://docker.io/envoyproxy/envoy:v1.7.0@sha256:c7c1ff3b327f7f3503ee380aa3f66d3e665a0a37843371451d9ade2056c8eaad" shape="ellipse"];
  "sha256:552a5981ac5041c77338e40c20060a2cde2d4ca42bae0b37b25496e547fbd879" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:094e676423923c4f2bcaa52875cdb080c0296d1a9f14afc92e8c89bf536892bf" [label="local://context" shape="ellipse"];
  "sha256:c60b970feba57dbf29586d7aea2154acc951c0ec36bf5405407c785ad69c9f37" [label="copy{src=/envoy.json, dest=/etc/envoy.json}" shape="note"];
  "sha256:1304cf8260c10169b35c92d156bd4234053c5e632e6ee3d656ba2749b930779f" [label="sha256:1304cf8260c10169b35c92d156bd4234053c5e632e6ee3d656ba2749b930779f" shape="plaintext"];
  "sha256:bc2675d2f6daa05da1bb1189284a1ceba60e4352b700afc2e42dd60dc5fae5bf" -> "sha256:552a5981ac5041c77338e40c20060a2cde2d4ca42bae0b37b25496e547fbd879" [label=""];
  "sha256:552a5981ac5041c77338e40c20060a2cde2d4ca42bae0b37b25496e547fbd879" -> "sha256:c60b970feba57dbf29586d7aea2154acc951c0ec36bf5405407c785ad69c9f37" [label=""];
  "sha256:094e676423923c4f2bcaa52875cdb080c0296d1a9f14afc92e8c89bf536892bf" -> "sha256:c60b970feba57dbf29586d7aea2154acc951c0ec36bf5405407c785ad69c9f37" [label=""];
  "sha256:c60b970feba57dbf29586d7aea2154acc951c0ec36bf5405407c785ad69c9f37" -> "sha256:1304cf8260c10169b35c92d156bd4234053c5e632e6ee3d656ba2749b930779f" [label=""];
}

