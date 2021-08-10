[app/sources/188900846.Dockerfile]
digraph {
  "sha256:bfa10f2256a94a1ca0374327a0241a2dedf92d961dd82994b11dbc0ffe439a5a" [label="docker-image://docker.io/grpcweb/prereqs:latest" shape="ellipse"];
  "sha256:d52f50b1c749bbe4344e660f4079f4d2b2ff34e301ffb54077c07630579d7a34" [label="/bin/sh -c npm install -g tsc typescript" shape="box"];
  "sha256:642fe78110fdb7faa2239dd8ab29abf7156739290821a65fec0d55810609fe88" [label="/bin/sh -c protoc -I=$EXAMPLE_DIR echo.proto --js_out=import_style=commonjs:$EXAMPLE_DIR/ts-example --grpc-web_out=import_style=commonjs+dts,mode=grpcwebtext:$EXAMPLE_DIR/ts-example" shape="box"];
  "sha256:806b86b6fe9ee6677c22b0e90c2e097a64ec7e2127aa155d4d8f6711e303a1f2" [label="/bin/sh -c cd $EXAMPLE_DIR/ts-example &&   npm install &&   npm link grpc-web &&   tsc &&   npx webpack &&   cp echotest.html /var/www/html &&   cp dist/main.js /var/www/html/dist" shape="box"];
  "sha256:f3050c890085beae6f7abf9ec0351befd4e0eff13b8fd9abb5104091e2980ea2" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:bfe09a708d46db7d2cb27d6e6e1934c9e10900548d732d4f12a3474b0c4c6cec" [label="sha256:bfe09a708d46db7d2cb27d6e6e1934c9e10900548d732d4f12a3474b0c4c6cec" shape="plaintext"];
  "sha256:bfa10f2256a94a1ca0374327a0241a2dedf92d961dd82994b11dbc0ffe439a5a" -> "sha256:d52f50b1c749bbe4344e660f4079f4d2b2ff34e301ffb54077c07630579d7a34" [label=""];
  "sha256:d52f50b1c749bbe4344e660f4079f4d2b2ff34e301ffb54077c07630579d7a34" -> "sha256:642fe78110fdb7faa2239dd8ab29abf7156739290821a65fec0d55810609fe88" [label=""];
  "sha256:642fe78110fdb7faa2239dd8ab29abf7156739290821a65fec0d55810609fe88" -> "sha256:806b86b6fe9ee6677c22b0e90c2e097a64ec7e2127aa155d4d8f6711e303a1f2" [label=""];
  "sha256:806b86b6fe9ee6677c22b0e90c2e097a64ec7e2127aa155d4d8f6711e303a1f2" -> "sha256:f3050c890085beae6f7abf9ec0351befd4e0eff13b8fd9abb5104091e2980ea2" [label=""];
  "sha256:f3050c890085beae6f7abf9ec0351befd4e0eff13b8fd9abb5104091e2980ea2" -> "sha256:bfe09a708d46db7d2cb27d6e6e1934c9e10900548d732d4f12a3474b0c4c6cec" [label=""];
}

