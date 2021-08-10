[app/sources/232955492.Dockerfile]
digraph {
  "sha256:2f52d2c1cef03229b625124d3a9b32404fea3deb2c811ba38ae699711717d714" [label="docker-image://docker.io/library/node:10.16-alpine" shape="ellipse"];
  "sha256:d3487792b28f7f276f0fb44e9e9fba1a6f26ffc1a1b5c3183df2d907ef73935f" [label="/bin/sh -c mkdir /conquery" shape="box"];
  "sha256:77db67ba03053fb2d14aa352772d98da91fbc5616d6efb3d0511bd4ae26ac330" [label="mkdir{path=/conquery}" shape="note"];
  "sha256:16708e1deccced4ced77b6362e9b970ddb3d1266225f27bab87b9344cc8ffae9" [label="local://context" shape="ellipse"];
  "sha256:6a5298fd5b183bb7370147b3f172b77bcdfff9e4ed87a6660864d3efc7a240b3" [label="copy{src=/package.json, dest=/conquery/},copy{src=/yarn.lock, dest=/conquery/}" shape="note"];
  "sha256:9fc7cf969deafe3c4fda24e72114c5fca753070ee90b9d463d7d087239742e19" [label="/bin/sh -c yarn --no-progress --frozen-lockfile" shape="box"];
  "sha256:ea0334efde0ad7cc1dacb8d8ed54ec82768d2a24b898c29f1a5a4265ae8be52c" [label="copy{src=/, dest=/conquery/}" shape="note"];
  "sha256:c95eab2a7c08fdb8643d1272ba141a89586678e16b0f74857acea7b4e6689a17" [label="/bin/sh -c yarn run build" shape="box"];
  "sha256:1bbe817f73b4579ba09657025eb712a7d8ff38dcd0da34e649b7d5895c6b4305" [label="sha256:1bbe817f73b4579ba09657025eb712a7d8ff38dcd0da34e649b7d5895c6b4305" shape="plaintext"];
  "sha256:2f52d2c1cef03229b625124d3a9b32404fea3deb2c811ba38ae699711717d714" -> "sha256:d3487792b28f7f276f0fb44e9e9fba1a6f26ffc1a1b5c3183df2d907ef73935f" [label=""];
  "sha256:d3487792b28f7f276f0fb44e9e9fba1a6f26ffc1a1b5c3183df2d907ef73935f" -> "sha256:77db67ba03053fb2d14aa352772d98da91fbc5616d6efb3d0511bd4ae26ac330" [label=""];
  "sha256:77db67ba03053fb2d14aa352772d98da91fbc5616d6efb3d0511bd4ae26ac330" -> "sha256:6a5298fd5b183bb7370147b3f172b77bcdfff9e4ed87a6660864d3efc7a240b3" [label=""];
  "sha256:16708e1deccced4ced77b6362e9b970ddb3d1266225f27bab87b9344cc8ffae9" -> "sha256:6a5298fd5b183bb7370147b3f172b77bcdfff9e4ed87a6660864d3efc7a240b3" [label=""];
  "sha256:6a5298fd5b183bb7370147b3f172b77bcdfff9e4ed87a6660864d3efc7a240b3" -> "sha256:9fc7cf969deafe3c4fda24e72114c5fca753070ee90b9d463d7d087239742e19" [label=""];
  "sha256:9fc7cf969deafe3c4fda24e72114c5fca753070ee90b9d463d7d087239742e19" -> "sha256:ea0334efde0ad7cc1dacb8d8ed54ec82768d2a24b898c29f1a5a4265ae8be52c" [label=""];
  "sha256:16708e1deccced4ced77b6362e9b970ddb3d1266225f27bab87b9344cc8ffae9" -> "sha256:ea0334efde0ad7cc1dacb8d8ed54ec82768d2a24b898c29f1a5a4265ae8be52c" [label=""];
  "sha256:ea0334efde0ad7cc1dacb8d8ed54ec82768d2a24b898c29f1a5a4265ae8be52c" -> "sha256:c95eab2a7c08fdb8643d1272ba141a89586678e16b0f74857acea7b4e6689a17" [label=""];
  "sha256:c95eab2a7c08fdb8643d1272ba141a89586678e16b0f74857acea7b4e6689a17" -> "sha256:1bbe817f73b4579ba09657025eb712a7d8ff38dcd0da34e649b7d5895c6b4305" [label=""];
}

