[app/sources/229187370.Dockerfile]
digraph {
  "sha256:abdb1ba609c5b7dedbab4099021183fc4990befe4e1b85d99f684ed002e81f91" [label="local://context" shape="ellipse"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" [label="docker-image://docker.io/library/node:latest" shape="ellipse"];
  "sha256:42bb824f73807caf49ae555c8079c215c917c1e43d95d4d8fec20ee8129c3f39" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:ea30a6bc6b9b658473cdc7827b74eca89aabbd8bd3f64a463caa102448cefa49" [label="copy{src=/package.json, dest=/opt/app/package.json}" shape="note"];
  "sha256:7aaa4c1b01a576dcac3394d748767d2cd25ad06945afc1a3f8d3906d51bf1280" [label="/bin/sh -c npm install --silent" shape="box"];
  "sha256:760f82d4d4c3befe97ee361733ffa447ed7bcd7b3390b3e88af33a372ab983f3" [label="copy{src=/, dest=/opt/app}" shape="note"];
  "sha256:e22c3dd50ab42bdacdf807c1c565f0b2f44947ae630031a1ff72169915ec7348" [label="sha256:e22c3dd50ab42bdacdf807c1c565f0b2f44947ae630031a1ff72169915ec7348" shape="plaintext"];
  "sha256:5045d46e15358f34ea7fff145af304a1fa3a317561e9c609f4ae17c0bd3359df" -> "sha256:42bb824f73807caf49ae555c8079c215c917c1e43d95d4d8fec20ee8129c3f39" [label=""];
  "sha256:42bb824f73807caf49ae555c8079c215c917c1e43d95d4d8fec20ee8129c3f39" -> "sha256:ea30a6bc6b9b658473cdc7827b74eca89aabbd8bd3f64a463caa102448cefa49" [label=""];
  "sha256:abdb1ba609c5b7dedbab4099021183fc4990befe4e1b85d99f684ed002e81f91" -> "sha256:ea30a6bc6b9b658473cdc7827b74eca89aabbd8bd3f64a463caa102448cefa49" [label=""];
  "sha256:ea30a6bc6b9b658473cdc7827b74eca89aabbd8bd3f64a463caa102448cefa49" -> "sha256:7aaa4c1b01a576dcac3394d748767d2cd25ad06945afc1a3f8d3906d51bf1280" [label=""];
  "sha256:7aaa4c1b01a576dcac3394d748767d2cd25ad06945afc1a3f8d3906d51bf1280" -> "sha256:760f82d4d4c3befe97ee361733ffa447ed7bcd7b3390b3e88af33a372ab983f3" [label=""];
  "sha256:abdb1ba609c5b7dedbab4099021183fc4990befe4e1b85d99f684ed002e81f91" -> "sha256:760f82d4d4c3befe97ee361733ffa447ed7bcd7b3390b3e88af33a372ab983f3" [label=""];
  "sha256:760f82d4d4c3befe97ee361733ffa447ed7bcd7b3390b3e88af33a372ab983f3" -> "sha256:e22c3dd50ab42bdacdf807c1c565f0b2f44947ae630031a1ff72169915ec7348" [label=""];
}

