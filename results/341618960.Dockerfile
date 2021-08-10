[app/sources/341618960.Dockerfile]
digraph {
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" [label="docker-image://docker.io/library/node:boron" shape="ellipse"];
  "sha256:5c450c01c3fca5eca1ff967697c8718726fb13b780c17637cb90f4a6713a81c2" [label="/bin/sh -c mkdir -p /var/www" shape="box"];
  "sha256:9b21feab71a5ca05c66f183cb2a4608cadfe7210e602f485eaf0ad6ac5e01842" [label="/bin/sh -c mkdir -p /var/log/portal-service" shape="box"];
  "sha256:6b7727497fc55333047f7f41409248a09e82ca1583473c3f689623326b500653" [label="local://context" shape="ellipse"];
  "sha256:12018ef9198c5062e359b141a7d856333e396db85812d34b1e25346ce7efb9c7" [label="copy{src=/package.json, dest=/var/www}" shape="note"];
  "sha256:9556e028512182587b988c14dcde24d92af4fe2351315f6d64ecf85fe014b10c" [label="mkdir{path=/var/www}" shape="note"];
  "sha256:1ece137f07edd2f6c404c4b2b24e8520387abbb64db5f2fb5af945cf91ae3af1" [label="/bin/sh -c touch .env" shape="box"];
  "sha256:5136a1b6ef661a270dae8e4a13a3691be277d3e01eefec17c6afd89cc90ce09b" [label="copy{src=/, dest=/tmp/}" shape="note"];
  "sha256:94a2a7da25377d096eb9bede861eb3f141896e7e2c2bc2adc395b537cb00376f" [label="/bin/sh -c cd /tmp && npm install --only=production" shape="box"];
  "sha256:ab295bff0262250fb3dd93483a9ea3d0700bd4ecd9bc8c3e687e10be170c1bbd" [label="/bin/sh -c cp -R /tmp/node_modules /tmp/prod_node_modules" shape="box"];
  "sha256:c4290abe6c3ee242cf792c1438929a1be241492eb8dcc87c8860c6b70be42b8d" [label="/bin/sh -c cd /tmp && npm install" shape="box"];
  "sha256:bb9852a11838ea1fdea37dcfcea192a8abf0b645adf410c9fad2434211c66aaa" [label="copy{src=/tmp/prod_node_modules, dest=/var/www/node_modules}" shape="note"];
  "sha256:c5db2d0c315689907f793769c4031d4eb1e25308019778373b4939a28fff10dd" [label="copy{src=/src, dest=/tmp/src}" shape="note"];
  "sha256:328ab4f19c223c6393f7eeb0368b9e3824d7c90f8bffb2a14f7fa1dc428b3848" [label="/bin/sh -c cd /tmp && npm run build" shape="box"];
  "sha256:a4830e6adefc19975c79c3e423eb562d5381ab2fe75d319feeda7e3e2135ab28" [label="copy{src=/src/common/config/creds, dest=/tmp/dist/common/config/creds}" shape="note"];
  "sha256:4f326beb14b915fd265febed35a77ea6ff3be00e9f85b110bc950e864e206a81" [label="copy{src=/tmp/dist, dest=/var/www/dist}" shape="note"];
  "sha256:37e541de95ce5ecda51a3242fe020e434331bba4b7de211fdf6f47670c2734b4" [label="sha256:37e541de95ce5ecda51a3242fe020e434331bba4b7de211fdf6f47670c2734b4" shape="plaintext"];
  "sha256:9b0d2262bdb90137854fd9cdabf5ffea554c0c51c0869fc3bb068e9af8537279" -> "sha256:5c450c01c3fca5eca1ff967697c8718726fb13b780c17637cb90f4a6713a81c2" [label=""];
  "sha256:5c450c01c3fca5eca1ff967697c8718726fb13b780c17637cb90f4a6713a81c2" -> "sha256:9b21feab71a5ca05c66f183cb2a4608cadfe7210e602f485eaf0ad6ac5e01842" [label=""];
  "sha256:9b21feab71a5ca05c66f183cb2a4608cadfe7210e602f485eaf0ad6ac5e01842" -> "sha256:12018ef9198c5062e359b141a7d856333e396db85812d34b1e25346ce7efb9c7" [label=""];
  "sha256:6b7727497fc55333047f7f41409248a09e82ca1583473c3f689623326b500653" -> "sha256:12018ef9198c5062e359b141a7d856333e396db85812d34b1e25346ce7efb9c7" [label=""];
  "sha256:12018ef9198c5062e359b141a7d856333e396db85812d34b1e25346ce7efb9c7" -> "sha256:9556e028512182587b988c14dcde24d92af4fe2351315f6d64ecf85fe014b10c" [label=""];
  "sha256:9556e028512182587b988c14dcde24d92af4fe2351315f6d64ecf85fe014b10c" -> "sha256:1ece137f07edd2f6c404c4b2b24e8520387abbb64db5f2fb5af945cf91ae3af1" [label=""];
  "sha256:12018ef9198c5062e359b141a7d856333e396db85812d34b1e25346ce7efb9c7" -> "sha256:5136a1b6ef661a270dae8e4a13a3691be277d3e01eefec17c6afd89cc90ce09b" [label=""];
  "sha256:6b7727497fc55333047f7f41409248a09e82ca1583473c3f689623326b500653" -> "sha256:5136a1b6ef661a270dae8e4a13a3691be277d3e01eefec17c6afd89cc90ce09b" [label=""];
  "sha256:5136a1b6ef661a270dae8e4a13a3691be277d3e01eefec17c6afd89cc90ce09b" -> "sha256:94a2a7da25377d096eb9bede861eb3f141896e7e2c2bc2adc395b537cb00376f" [label=""];
  "sha256:94a2a7da25377d096eb9bede861eb3f141896e7e2c2bc2adc395b537cb00376f" -> "sha256:ab295bff0262250fb3dd93483a9ea3d0700bd4ecd9bc8c3e687e10be170c1bbd" [label=""];
  "sha256:ab295bff0262250fb3dd93483a9ea3d0700bd4ecd9bc8c3e687e10be170c1bbd" -> "sha256:c4290abe6c3ee242cf792c1438929a1be241492eb8dcc87c8860c6b70be42b8d" [label=""];
  "sha256:1ece137f07edd2f6c404c4b2b24e8520387abbb64db5f2fb5af945cf91ae3af1" -> "sha256:bb9852a11838ea1fdea37dcfcea192a8abf0b645adf410c9fad2434211c66aaa" [label=""];
  "sha256:c4290abe6c3ee242cf792c1438929a1be241492eb8dcc87c8860c6b70be42b8d" -> "sha256:bb9852a11838ea1fdea37dcfcea192a8abf0b645adf410c9fad2434211c66aaa" [label=""];
  "sha256:c4290abe6c3ee242cf792c1438929a1be241492eb8dcc87c8860c6b70be42b8d" -> "sha256:c5db2d0c315689907f793769c4031d4eb1e25308019778373b4939a28fff10dd" [label=""];
  "sha256:6b7727497fc55333047f7f41409248a09e82ca1583473c3f689623326b500653" -> "sha256:c5db2d0c315689907f793769c4031d4eb1e25308019778373b4939a28fff10dd" [label=""];
  "sha256:c5db2d0c315689907f793769c4031d4eb1e25308019778373b4939a28fff10dd" -> "sha256:328ab4f19c223c6393f7eeb0368b9e3824d7c90f8bffb2a14f7fa1dc428b3848" [label=""];
  "sha256:328ab4f19c223c6393f7eeb0368b9e3824d7c90f8bffb2a14f7fa1dc428b3848" -> "sha256:a4830e6adefc19975c79c3e423eb562d5381ab2fe75d319feeda7e3e2135ab28" [label=""];
  "sha256:6b7727497fc55333047f7f41409248a09e82ca1583473c3f689623326b500653" -> "sha256:a4830e6adefc19975c79c3e423eb562d5381ab2fe75d319feeda7e3e2135ab28" [label=""];
  "sha256:bb9852a11838ea1fdea37dcfcea192a8abf0b645adf410c9fad2434211c66aaa" -> "sha256:4f326beb14b915fd265febed35a77ea6ff3be00e9f85b110bc950e864e206a81" [label=""];
  "sha256:a4830e6adefc19975c79c3e423eb562d5381ab2fe75d319feeda7e3e2135ab28" -> "sha256:4f326beb14b915fd265febed35a77ea6ff3be00e9f85b110bc950e864e206a81" [label=""];
  "sha256:4f326beb14b915fd265febed35a77ea6ff3be00e9f85b110bc950e864e206a81" -> "sha256:37e541de95ce5ecda51a3242fe020e434331bba4b7de211fdf6f47670c2734b4" [label=""];
}

