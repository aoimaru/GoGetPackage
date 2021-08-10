[app/sources/454086461.Dockerfile]
digraph {
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" [label="docker-image://docker.io/library/node:6" shape="ellipse"];
  "sha256:122e7989bb234225ac04dcaf6011a6ea216cba2002523c8dcb09b70ff75d8040" [label="/bin/sh -c npm install --global yarn" shape="box"];
  "sha256:e25fc8cdff2bd363d7f205ba6aef5cc4a57016cdab02f8eab00942ce36bfaa2d" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:61871d8d3641aca062ebb67bdf01969d2cfa1e6416ef78a562289bbc0bcdec17" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:16cd67896e054c4b029714f44cfc205a12deeaf7e700984287d405596c3447ef" [label="local://context" shape="ellipse"];
  "sha256:04a1467a08a69360b4a5ee6de2ab79760c8365e43f91a3be6f0b6bbd36cfa5e0" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:8d5b8f8877d0a4afc6d1e5a368635d62b3f4fe82f897d50f4ff0df195f1dae8d" [label="/bin/sh -c yarn install --ignore-optional" shape="box"];
  "sha256:b02a12935bc02959b2c9c8cb94eab39debf28e41052d89b78607c656370a7fab" [label="/bin/sh -c rm -f .npmrc" shape="box"];
  "sha256:76fb57339ef27e6b9f3413d6869b48bd10096a01e32c97630049d13e44006efb" [label="/bin/sh -c npm run compile" shape="box"];
  "sha256:d4f7c9d2bf3aa714a041456457a6fef83fa8c7dc01db0aa01d0643d9fee91e75" [label="sha256:d4f7c9d2bf3aa714a041456457a6fef83fa8c7dc01db0aa01d0643d9fee91e75" shape="plaintext"];
  "sha256:5995a39e68e9e61d3ffe79e05fb2178d63b03cf306a8a6d28dcc970298cd13d0" -> "sha256:122e7989bb234225ac04dcaf6011a6ea216cba2002523c8dcb09b70ff75d8040" [label=""];
  "sha256:122e7989bb234225ac04dcaf6011a6ea216cba2002523c8dcb09b70ff75d8040" -> "sha256:e25fc8cdff2bd363d7f205ba6aef5cc4a57016cdab02f8eab00942ce36bfaa2d" [label=""];
  "sha256:e25fc8cdff2bd363d7f205ba6aef5cc4a57016cdab02f8eab00942ce36bfaa2d" -> "sha256:61871d8d3641aca062ebb67bdf01969d2cfa1e6416ef78a562289bbc0bcdec17" [label=""];
  "sha256:61871d8d3641aca062ebb67bdf01969d2cfa1e6416ef78a562289bbc0bcdec17" -> "sha256:04a1467a08a69360b4a5ee6de2ab79760c8365e43f91a3be6f0b6bbd36cfa5e0" [label=""];
  "sha256:16cd67896e054c4b029714f44cfc205a12deeaf7e700984287d405596c3447ef" -> "sha256:04a1467a08a69360b4a5ee6de2ab79760c8365e43f91a3be6f0b6bbd36cfa5e0" [label=""];
  "sha256:04a1467a08a69360b4a5ee6de2ab79760c8365e43f91a3be6f0b6bbd36cfa5e0" -> "sha256:8d5b8f8877d0a4afc6d1e5a368635d62b3f4fe82f897d50f4ff0df195f1dae8d" [label=""];
  "sha256:8d5b8f8877d0a4afc6d1e5a368635d62b3f4fe82f897d50f4ff0df195f1dae8d" -> "sha256:b02a12935bc02959b2c9c8cb94eab39debf28e41052d89b78607c656370a7fab" [label=""];
  "sha256:b02a12935bc02959b2c9c8cb94eab39debf28e41052d89b78607c656370a7fab" -> "sha256:76fb57339ef27e6b9f3413d6869b48bd10096a01e32c97630049d13e44006efb" [label=""];
  "sha256:76fb57339ef27e6b9f3413d6869b48bd10096a01e32c97630049d13e44006efb" -> "sha256:d4f7c9d2bf3aa714a041456457a6fef83fa8c7dc01db0aa01d0643d9fee91e75" [label=""];
}

