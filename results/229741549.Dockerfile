[app/sources/229741549.Dockerfile]
digraph {
  "sha256:de0d71e8b1b31317f7e8e82d14ebe6f2eef804e131bac04876b7fd9eab096f57" [label="docker-image://docker.io/armhf/node:5.3@sha256:df6cf90311cf803aaddd11aaa49a9a4a90b122531eb02cf2976fab8315a2e5c9" shape="ellipse"];
  "sha256:07654a18c83709f636c491d7e73c031251f77e8e3ebdfb76e7c22afd8dbf9978" [label="/bin/sh -c npm install -g homie-server" shape="box"];
  "sha256:442950e0ab4d0a16e4326845d4e6b1f24cac84149514ab577ce8d511a385522c" [label="/bin/sh -c mkdir /data" shape="box"];
  "sha256:3cbe9f7e8ca10cabea34cc0ba44ede646a891b9fa2ede1981056c4250c625f90" [label="sha256:3cbe9f7e8ca10cabea34cc0ba44ede646a891b9fa2ede1981056c4250c625f90" shape="plaintext"];
  "sha256:de0d71e8b1b31317f7e8e82d14ebe6f2eef804e131bac04876b7fd9eab096f57" -> "sha256:07654a18c83709f636c491d7e73c031251f77e8e3ebdfb76e7c22afd8dbf9978" [label=""];
  "sha256:07654a18c83709f636c491d7e73c031251f77e8e3ebdfb76e7c22afd8dbf9978" -> "sha256:442950e0ab4d0a16e4326845d4e6b1f24cac84149514ab577ce8d511a385522c" [label=""];
  "sha256:442950e0ab4d0a16e4326845d4e6b1f24cac84149514ab577ce8d511a385522c" -> "sha256:3cbe9f7e8ca10cabea34cc0ba44ede646a891b9fa2ede1981056c4250c625f90" [label=""];
}

