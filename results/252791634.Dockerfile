[app/sources/252791634.Dockerfile]
digraph {
  "sha256:e189a290b211df761549a6c8df15b95c2de3f63d4dd8acee0e4cd5c1fa035bf7" [label="docker-image://docker.io/library/node:6.9-onbuild@sha256:ed130e71d345052c37da3b3aaf4999f8821646ffe244ef823427f4a5fc89b305" shape="ellipse"];
  "sha256:de65085b140c7e9b9b2b900be8c9f6fa94a1e8497911b94e0bc4e2fdb14aa805" [label="local://context" shape="ellipse"];
  "sha256:f923d4d510f72bceb62bbe912908abd13fc435f946fbd34e30609f0e0f1b2800" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:d56a63e537e935706121820ce96676c18c9dda5c1e472c5c504c616dec8a1e8b" [label="/bin/sh -c npm install && npm cache clean" shape="box"];
  "sha256:8b8b662371fb55c4f9c22e23786c8dc3ae0af2dc3b125c443cf4953a965ffecf" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:2e223714def4a0fdd4041868bf65ce00674a6c67491ac3c8f46f164fde15d8cf" [label="/bin/sh -c npm install -g ember-cli" shape="box"];
  "sha256:39302a197103c1babdbe4802a8b1197d238ff7c4bdffe97699ebc79ec6c6116b" [label="sha256:39302a197103c1babdbe4802a8b1197d238ff7c4bdffe97699ebc79ec6c6116b" shape="plaintext"];
  "sha256:e189a290b211df761549a6c8df15b95c2de3f63d4dd8acee0e4cd5c1fa035bf7" -> "sha256:f923d4d510f72bceb62bbe912908abd13fc435f946fbd34e30609f0e0f1b2800" [label=""];
  "sha256:de65085b140c7e9b9b2b900be8c9f6fa94a1e8497911b94e0bc4e2fdb14aa805" -> "sha256:f923d4d510f72bceb62bbe912908abd13fc435f946fbd34e30609f0e0f1b2800" [label=""];
  "sha256:f923d4d510f72bceb62bbe912908abd13fc435f946fbd34e30609f0e0f1b2800" -> "sha256:d56a63e537e935706121820ce96676c18c9dda5c1e472c5c504c616dec8a1e8b" [label=""];
  "sha256:d56a63e537e935706121820ce96676c18c9dda5c1e472c5c504c616dec8a1e8b" -> "sha256:8b8b662371fb55c4f9c22e23786c8dc3ae0af2dc3b125c443cf4953a965ffecf" [label=""];
  "sha256:de65085b140c7e9b9b2b900be8c9f6fa94a1e8497911b94e0bc4e2fdb14aa805" -> "sha256:8b8b662371fb55c4f9c22e23786c8dc3ae0af2dc3b125c443cf4953a965ffecf" [label=""];
  "sha256:8b8b662371fb55c4f9c22e23786c8dc3ae0af2dc3b125c443cf4953a965ffecf" -> "sha256:2e223714def4a0fdd4041868bf65ce00674a6c67491ac3c8f46f164fde15d8cf" [label=""];
  "sha256:2e223714def4a0fdd4041868bf65ce00674a6c67491ac3c8f46f164fde15d8cf" -> "sha256:39302a197103c1babdbe4802a8b1197d238ff7c4bdffe97699ebc79ec6c6116b" [label=""];
}

