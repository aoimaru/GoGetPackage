[app/sources/252768265.Dockerfile]
digraph {
  "sha256:782f70bba4c595172cffca27bbee1ee004e158753f9634fdea2acf5d28fdc254" [label="docker-image://docker.io/library/node:argon" shape="ellipse"];
  "sha256:88721d2ef5f5dbbc40320826d3485cc3b632d266f8b9bcbc2bcae2eba0be17a7" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:fbe2591f519d14982adf8290144af8b8aa4de5a6b65b95ac25c65877f279364c" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:99b2c424cf5037e842a8e3a0e6738f413d298566b04e0cd4c60f176bee5325b4" [label="local://context" shape="ellipse"];
  "sha256:f20804f042ff1434140f541337d6348d7b5c85c55a212271f981b40530f62428" [label="copy{src=/package.json, dest=/usr/src/app}" shape="note"];
  "sha256:2122e2197c91fdaa6c1507d95506b5cf7453c9a439dbfc28f504f46b1533d406" [label="/bin/sh -c rm -Rf node_modules" shape="box"];
  "sha256:f26fae3a6518114c4a1d2672a1459ca1dade9fd185d31983bc5270689b61a598" [label="/bin/sh -c npm install" shape="box"];
  "sha256:b6da8cfdadf9fbdb1f608c79fac5e29c92550420d941ddeabe2df2ec6983be33" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:7747436e851b9649b6c79a5a77a92d4cfca5d4b2c1a5e74e1aecd57b8c8c2db2" [label="copy{src=/config/config.sample.json, dest=/config/config.json}" shape="note"];
  "sha256:4db29945e1b0c9bec69ea719c2e8ff83b59898bde7b9d9e211a3e1c495b17354" [label="sha256:4db29945e1b0c9bec69ea719c2e8ff83b59898bde7b9d9e211a3e1c495b17354" shape="plaintext"];
  "sha256:782f70bba4c595172cffca27bbee1ee004e158753f9634fdea2acf5d28fdc254" -> "sha256:88721d2ef5f5dbbc40320826d3485cc3b632d266f8b9bcbc2bcae2eba0be17a7" [label=""];
  "sha256:88721d2ef5f5dbbc40320826d3485cc3b632d266f8b9bcbc2bcae2eba0be17a7" -> "sha256:fbe2591f519d14982adf8290144af8b8aa4de5a6b65b95ac25c65877f279364c" [label=""];
  "sha256:fbe2591f519d14982adf8290144af8b8aa4de5a6b65b95ac25c65877f279364c" -> "sha256:f20804f042ff1434140f541337d6348d7b5c85c55a212271f981b40530f62428" [label=""];
  "sha256:99b2c424cf5037e842a8e3a0e6738f413d298566b04e0cd4c60f176bee5325b4" -> "sha256:f20804f042ff1434140f541337d6348d7b5c85c55a212271f981b40530f62428" [label=""];
  "sha256:f20804f042ff1434140f541337d6348d7b5c85c55a212271f981b40530f62428" -> "sha256:2122e2197c91fdaa6c1507d95506b5cf7453c9a439dbfc28f504f46b1533d406" [label=""];
  "sha256:2122e2197c91fdaa6c1507d95506b5cf7453c9a439dbfc28f504f46b1533d406" -> "sha256:f26fae3a6518114c4a1d2672a1459ca1dade9fd185d31983bc5270689b61a598" [label=""];
  "sha256:f26fae3a6518114c4a1d2672a1459ca1dade9fd185d31983bc5270689b61a598" -> "sha256:b6da8cfdadf9fbdb1f608c79fac5e29c92550420d941ddeabe2df2ec6983be33" [label=""];
  "sha256:99b2c424cf5037e842a8e3a0e6738f413d298566b04e0cd4c60f176bee5325b4" -> "sha256:b6da8cfdadf9fbdb1f608c79fac5e29c92550420d941ddeabe2df2ec6983be33" [label=""];
  "sha256:b6da8cfdadf9fbdb1f608c79fac5e29c92550420d941ddeabe2df2ec6983be33" -> "sha256:7747436e851b9649b6c79a5a77a92d4cfca5d4b2c1a5e74e1aecd57b8c8c2db2" [label=""];
  "sha256:99b2c424cf5037e842a8e3a0e6738f413d298566b04e0cd4c60f176bee5325b4" -> "sha256:7747436e851b9649b6c79a5a77a92d4cfca5d4b2c1a5e74e1aecd57b8c8c2db2" [label=""];
  "sha256:7747436e851b9649b6c79a5a77a92d4cfca5d4b2c1a5e74e1aecd57b8c8c2db2" -> "sha256:4db29945e1b0c9bec69ea719c2e8ff83b59898bde7b9d9e211a3e1c495b17354" [label=""];
}

