[app/sources/197333385.Dockerfile]
digraph {
  "sha256:782f70bba4c595172cffca27bbee1ee004e158753f9634fdea2acf5d28fdc254" [label="docker-image://docker.io/library/node:argon" shape="ellipse"];
  "sha256:88721d2ef5f5dbbc40320826d3485cc3b632d266f8b9bcbc2bcae2eba0be17a7" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:fbe2591f519d14982adf8290144af8b8aa4de5a6b65b95ac25c65877f279364c" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:3970f785ecd2cd7caadf6948cbcf2459d2093165c57e49562cf4cdf929dfff8a" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:6fd0f2e3fd0e4099eafb570aea3aaee1195f7ffbb42b3b1a4f2466182a819df3" [label="/bin/sh -c apt-get -y install mongodb" shape="box"];
  "sha256:b812cc8d76ba3d8dac8485ac88a0aca9330e19169323d2a9c76a9e44718e91cf" [label="local://context" shape="ellipse"];
  "sha256:a71bd3e316bae2dc63c91a3262988dce542a3b34b920a16d9f0023420788a445" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:1ff800d6b77398100b463609f40c474ef1d1e9594d9ee7e0d367e43d6d66469e" [label="/bin/sh -c npm install" shape="box"];
  "sha256:310d3fb489254b996a7dcf8a7a6f2e884b229cbe03a97cb2563534764eb44827" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:41884bcb6d245276eca4a9c5ef9097b317a6af86ae5bfe0e742b0ad1d3b03a5d" [label="sha256:41884bcb6d245276eca4a9c5ef9097b317a6af86ae5bfe0e742b0ad1d3b03a5d" shape="plaintext"];
  "sha256:782f70bba4c595172cffca27bbee1ee004e158753f9634fdea2acf5d28fdc254" -> "sha256:88721d2ef5f5dbbc40320826d3485cc3b632d266f8b9bcbc2bcae2eba0be17a7" [label=""];
  "sha256:88721d2ef5f5dbbc40320826d3485cc3b632d266f8b9bcbc2bcae2eba0be17a7" -> "sha256:fbe2591f519d14982adf8290144af8b8aa4de5a6b65b95ac25c65877f279364c" [label=""];
  "sha256:fbe2591f519d14982adf8290144af8b8aa4de5a6b65b95ac25c65877f279364c" -> "sha256:3970f785ecd2cd7caadf6948cbcf2459d2093165c57e49562cf4cdf929dfff8a" [label=""];
  "sha256:3970f785ecd2cd7caadf6948cbcf2459d2093165c57e49562cf4cdf929dfff8a" -> "sha256:6fd0f2e3fd0e4099eafb570aea3aaee1195f7ffbb42b3b1a4f2466182a819df3" [label=""];
  "sha256:6fd0f2e3fd0e4099eafb570aea3aaee1195f7ffbb42b3b1a4f2466182a819df3" -> "sha256:a71bd3e316bae2dc63c91a3262988dce542a3b34b920a16d9f0023420788a445" [label=""];
  "sha256:b812cc8d76ba3d8dac8485ac88a0aca9330e19169323d2a9c76a9e44718e91cf" -> "sha256:a71bd3e316bae2dc63c91a3262988dce542a3b34b920a16d9f0023420788a445" [label=""];
  "sha256:a71bd3e316bae2dc63c91a3262988dce542a3b34b920a16d9f0023420788a445" -> "sha256:1ff800d6b77398100b463609f40c474ef1d1e9594d9ee7e0d367e43d6d66469e" [label=""];
  "sha256:1ff800d6b77398100b463609f40c474ef1d1e9594d9ee7e0d367e43d6d66469e" -> "sha256:310d3fb489254b996a7dcf8a7a6f2e884b229cbe03a97cb2563534764eb44827" [label=""];
  "sha256:b812cc8d76ba3d8dac8485ac88a0aca9330e19169323d2a9c76a9e44718e91cf" -> "sha256:310d3fb489254b996a7dcf8a7a6f2e884b229cbe03a97cb2563534764eb44827" [label=""];
  "sha256:310d3fb489254b996a7dcf8a7a6f2e884b229cbe03a97cb2563534764eb44827" -> "sha256:41884bcb6d245276eca4a9c5ef9097b317a6af86ae5bfe0e742b0ad1d3b03a5d" [label=""];
}

