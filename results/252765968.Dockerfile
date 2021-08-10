[app/sources/252765968.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:2c75600c65f7295c297ad0e3537758f5ecd74369f24b3de214c01177c18fea16" [label="/bin/sh -c apt-get update && apt-get install -y curl && curl -sL https://deb.nodesource.com/setup_6.x | bash /dev/stdin && apt-get install -y nodejs git-all" shape="box"];
  "sha256:16b6f32cf1c4d21812ef6288d60d69b5f5f344724aefd6ca3e7782254da149ad" [label="/bin/sh -c cd /srv && npm install phenomic && npm install" shape="box"];
  "sha256:f48c6631aceda1c0222c64dc7adf76f14aaaa8cb13ba3f65db722edebbc3deb1" [label="mkdir{path=/srv}" shape="note"];
  "sha256:d75726af70d13aeb92ef0cd81b1ea6cdd81c3122800f87aaa797f4a43645dae3" [label="local://context" shape="ellipse"];
  "sha256:78b09cc9565435beb7862f60f09d835bacb48d9dc7892580fd58d453314a80c2" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:0456c65cb5fec67635dbecf570637879fe602dc459454280a1b5688ed3eff73b" [label="/bin/sh -c chmod +x /entrypoint.sh" shape="box"];
  "sha256:7e2f0bd5682a11156c69609210c07b40a477306114269440c78f0a9715a6bf5a" [label="sha256:7e2f0bd5682a11156c69609210c07b40a477306114269440c78f0a9715a6bf5a" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:2c75600c65f7295c297ad0e3537758f5ecd74369f24b3de214c01177c18fea16" [label=""];
  "sha256:2c75600c65f7295c297ad0e3537758f5ecd74369f24b3de214c01177c18fea16" -> "sha256:16b6f32cf1c4d21812ef6288d60d69b5f5f344724aefd6ca3e7782254da149ad" [label=""];
  "sha256:16b6f32cf1c4d21812ef6288d60d69b5f5f344724aefd6ca3e7782254da149ad" -> "sha256:f48c6631aceda1c0222c64dc7adf76f14aaaa8cb13ba3f65db722edebbc3deb1" [label=""];
  "sha256:f48c6631aceda1c0222c64dc7adf76f14aaaa8cb13ba3f65db722edebbc3deb1" -> "sha256:78b09cc9565435beb7862f60f09d835bacb48d9dc7892580fd58d453314a80c2" [label=""];
  "sha256:d75726af70d13aeb92ef0cd81b1ea6cdd81c3122800f87aaa797f4a43645dae3" -> "sha256:78b09cc9565435beb7862f60f09d835bacb48d9dc7892580fd58d453314a80c2" [label=""];
  "sha256:78b09cc9565435beb7862f60f09d835bacb48d9dc7892580fd58d453314a80c2" -> "sha256:0456c65cb5fec67635dbecf570637879fe602dc459454280a1b5688ed3eff73b" [label=""];
  "sha256:0456c65cb5fec67635dbecf570637879fe602dc459454280a1b5688ed3eff73b" -> "sha256:7e2f0bd5682a11156c69609210c07b40a477306114269440c78f0a9715a6bf5a" [label=""];
}

