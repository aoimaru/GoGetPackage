[app/sources/285756826.Dockerfile]
digraph {
  "sha256:0f64444a9e9ee97abac7c2dd67c699b9c3d1375d30b770047613d3b6dc244b33" [label="docker-image://docker.io/library/node:6.9.2" shape="ellipse"];
  "sha256:0ffb603da6191333588264b4b6b8bab9e7575d02ac46300b5bd929f2515a1f15" [label="/bin/sh -c mkdir -p /usr/src/app" shape="box"];
  "sha256:dc85bc328a5694a08036d215ffde6528d42f0884f82c6b11bc5805b7ce3e3506" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:feac2731fec29831c4a4fa760c0a592dd2f27f1dc454607734891719ecff081b" [label="local://context" shape="ellipse"];
  "sha256:361b4d772cfcb77a5480d4fbf4ce56ba5fdd0fe5400e2cdc7d5f68fbecabbb98" [label="copy{src=/package.json, dest=/usr/src/app/}" shape="note"];
  "sha256:0ec372f3a83841335e4bfe4bbac007f7ad4c7a62675b16b08837154aed6fb9f3" [label="/bin/sh -c npm install" shape="box"];
  "sha256:87df3fb01d58c4536bd5718ef631bbd87dd0dd956635547c4aabbd58a2055fb7" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:a7e6f147c78b7b08f174e8bc4edc66260162e1dd998ec9c849b3c7be5a7c674f" [label="sha256:a7e6f147c78b7b08f174e8bc4edc66260162e1dd998ec9c849b3c7be5a7c674f" shape="plaintext"];
  "sha256:0f64444a9e9ee97abac7c2dd67c699b9c3d1375d30b770047613d3b6dc244b33" -> "sha256:0ffb603da6191333588264b4b6b8bab9e7575d02ac46300b5bd929f2515a1f15" [label=""];
  "sha256:0ffb603da6191333588264b4b6b8bab9e7575d02ac46300b5bd929f2515a1f15" -> "sha256:dc85bc328a5694a08036d215ffde6528d42f0884f82c6b11bc5805b7ce3e3506" [label=""];
  "sha256:dc85bc328a5694a08036d215ffde6528d42f0884f82c6b11bc5805b7ce3e3506" -> "sha256:361b4d772cfcb77a5480d4fbf4ce56ba5fdd0fe5400e2cdc7d5f68fbecabbb98" [label=""];
  "sha256:feac2731fec29831c4a4fa760c0a592dd2f27f1dc454607734891719ecff081b" -> "sha256:361b4d772cfcb77a5480d4fbf4ce56ba5fdd0fe5400e2cdc7d5f68fbecabbb98" [label=""];
  "sha256:361b4d772cfcb77a5480d4fbf4ce56ba5fdd0fe5400e2cdc7d5f68fbecabbb98" -> "sha256:0ec372f3a83841335e4bfe4bbac007f7ad4c7a62675b16b08837154aed6fb9f3" [label=""];
  "sha256:0ec372f3a83841335e4bfe4bbac007f7ad4c7a62675b16b08837154aed6fb9f3" -> "sha256:87df3fb01d58c4536bd5718ef631bbd87dd0dd956635547c4aabbd58a2055fb7" [label=""];
  "sha256:feac2731fec29831c4a4fa760c0a592dd2f27f1dc454607734891719ecff081b" -> "sha256:87df3fb01d58c4536bd5718ef631bbd87dd0dd956635547c4aabbd58a2055fb7" [label=""];
  "sha256:87df3fb01d58c4536bd5718ef631bbd87dd0dd956635547c4aabbd58a2055fb7" -> "sha256:a7e6f147c78b7b08f174e8bc4edc66260162e1dd998ec9c849b3c7be5a7c674f" [label=""];
}

