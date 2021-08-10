[app/sources/300444022.Dockerfile]
digraph {
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:627536a780ff59ed09104218fc54d95f0a7627b2daabdcbba73443113e71b371" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:0e1bc7c04a267026d6a2713c703d643f44275628a7457a328257718a9d9d0ce6" [label="local://context" shape="ellipse"];
  "sha256:2274bc6aef21e50915237b10c5dd09d8060cac9c29adc63e4bf6e90a80d3591e" [label="copy{src=/package*.json, dest=/usr/src/app/}" shape="note"];
  "sha256:075d9b378083225b2cd2cfe5f3de6dd3006621f20c1c8dc16b16c87cd878ad83" [label="/bin/sh -c npm install" shape="box"];
  "sha256:b95743de28e86e661e078af9a0378a9e19374d83ab2cc2088ed50554af5d6f3d" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:6b42f3a0ec0f6c23fbb8f71039e12ed32c7d0341e0bda5376c4953137739a956" [label="sha256:6b42f3a0ec0f6c23fbb8f71039e12ed32c7d0341e0bda5376c4953137739a956" shape="plaintext"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:627536a780ff59ed09104218fc54d95f0a7627b2daabdcbba73443113e71b371" [label=""];
  "sha256:627536a780ff59ed09104218fc54d95f0a7627b2daabdcbba73443113e71b371" -> "sha256:2274bc6aef21e50915237b10c5dd09d8060cac9c29adc63e4bf6e90a80d3591e" [label=""];
  "sha256:0e1bc7c04a267026d6a2713c703d643f44275628a7457a328257718a9d9d0ce6" -> "sha256:2274bc6aef21e50915237b10c5dd09d8060cac9c29adc63e4bf6e90a80d3591e" [label=""];
  "sha256:2274bc6aef21e50915237b10c5dd09d8060cac9c29adc63e4bf6e90a80d3591e" -> "sha256:075d9b378083225b2cd2cfe5f3de6dd3006621f20c1c8dc16b16c87cd878ad83" [label=""];
  "sha256:075d9b378083225b2cd2cfe5f3de6dd3006621f20c1c8dc16b16c87cd878ad83" -> "sha256:b95743de28e86e661e078af9a0378a9e19374d83ab2cc2088ed50554af5d6f3d" [label=""];
  "sha256:0e1bc7c04a267026d6a2713c703d643f44275628a7457a328257718a9d9d0ce6" -> "sha256:b95743de28e86e661e078af9a0378a9e19374d83ab2cc2088ed50554af5d6f3d" [label=""];
  "sha256:b95743de28e86e661e078af9a0378a9e19374d83ab2cc2088ed50554af5d6f3d" -> "sha256:6b42f3a0ec0f6c23fbb8f71039e12ed32c7d0341e0bda5376c4953137739a956" [label=""];
}

