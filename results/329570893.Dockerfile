[app/sources/329570893.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label="/bin/sh -c apk --no-cache add ca-certificates" shape="box"];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" [label="docker-image://docker.io/library/golang:1.9" shape="ellipse"];
  "sha256:bad22873ecebdf384659ef768cff27708b905ed8221ae07a31d9d5f51c0e1294" [label="local://context" shape="ellipse"];
  "sha256:f1225563d3cb581acf6b28b0a1e2585aae9986603f835239c608fed0d32cedbc" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:d0685dfefb5d3157629a12c705637e74f3c8bdcbe66f186ec122227c4b6e017f" [label="/bin/sh -c make build" shape="box"];
  "sha256:15a4f812f74dea73fdc09ea0cf702d91d056faa86039df2ad84af38a719c13f3" [label="/bin/sh -c pwd && ls -lah" shape="box"];
  "sha256:5ceff673a7cbf15e5db760788ce5023015040d87c7637eb680473e676dfdbebb" [label="copy{src=/go/pgme, dest=/}" shape="note"];
  "sha256:bc53438fbd75d8a0dc36f478fe11c01ab1081ebefce973677de6b3178a8f790b" [label="copy{src=/go/template, dest=/template}" shape="note"];
  "sha256:35ccb96ae0bf1e1ef86b87919e611dbabc215295ab5bccd3f4418f1e0d951062" [label="sha256:35ccb96ae0bf1e1ef86b87919e611dbabc215295ab5bccd3f4418f1e0d951062" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" [label=""];
  "sha256:e09a417d6ba5d85f9300bd9bf198dccc5297b49061ea65d9a6752db25cdef32d" -> "sha256:f1225563d3cb581acf6b28b0a1e2585aae9986603f835239c608fed0d32cedbc" [label=""];
  "sha256:bad22873ecebdf384659ef768cff27708b905ed8221ae07a31d9d5f51c0e1294" -> "sha256:f1225563d3cb581acf6b28b0a1e2585aae9986603f835239c608fed0d32cedbc" [label=""];
  "sha256:f1225563d3cb581acf6b28b0a1e2585aae9986603f835239c608fed0d32cedbc" -> "sha256:d0685dfefb5d3157629a12c705637e74f3c8bdcbe66f186ec122227c4b6e017f" [label=""];
  "sha256:d0685dfefb5d3157629a12c705637e74f3c8bdcbe66f186ec122227c4b6e017f" -> "sha256:15a4f812f74dea73fdc09ea0cf702d91d056faa86039df2ad84af38a719c13f3" [label=""];
  "sha256:3cdb12ab860897adb35e5261b600045f6b8d7d056d1d33fceef94ec04c90c0e8" -> "sha256:5ceff673a7cbf15e5db760788ce5023015040d87c7637eb680473e676dfdbebb" [label=""];
  "sha256:15a4f812f74dea73fdc09ea0cf702d91d056faa86039df2ad84af38a719c13f3" -> "sha256:5ceff673a7cbf15e5db760788ce5023015040d87c7637eb680473e676dfdbebb" [label=""];
  "sha256:5ceff673a7cbf15e5db760788ce5023015040d87c7637eb680473e676dfdbebb" -> "sha256:bc53438fbd75d8a0dc36f478fe11c01ab1081ebefce973677de6b3178a8f790b" [label=""];
  "sha256:15a4f812f74dea73fdc09ea0cf702d91d056faa86039df2ad84af38a719c13f3" -> "sha256:bc53438fbd75d8a0dc36f478fe11c01ab1081ebefce973677de6b3178a8f790b" [label=""];
  "sha256:bc53438fbd75d8a0dc36f478fe11c01ab1081ebefce973677de6b3178a8f790b" -> "sha256:35ccb96ae0bf1e1ef86b87919e611dbabc215295ab5bccd3f4418f1e0d951062" [label=""];
}

