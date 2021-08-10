[app/sources/157712479.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" [label="docker-image://docker.io/library/golang:alpine" shape="ellipse"];
  "sha256:18f32a6c23f8785c1bbc2dad1d3d1473721d9f37d6475a8acbb1fe914afb5ff7" [label="local://context" shape="ellipse"];
  "sha256:d29cf865591760eb7e843156584f545522640ee1b454f63617e5fe54e2c72dab" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:49cf6249ca41d89b0e591e74f5ad24bce19a43943f64bcd105ccedd4d9a9f4c2" [label="/bin/sh -c go build rtsp-proxy.go" shape="box"];
  "sha256:e4921d2990ef67ac092a41ba5f32bb8270d53848b2db4ac42176b236107f809c" [label="copy{src=/rtsp-proxy, dest=/}" shape="note"];
  "sha256:0959eeb15313780a89988310a798ff866cfc9a3582b6e6bd5158682aeb4e8492" [label="sha256:0959eeb15313780a89988310a798ff866cfc9a3582b6e6bd5158682aeb4e8492" shape="plaintext"];
  "sha256:4530882d321e760e5e25d5b2a3fa86274678c0cd51fb182037c54497bddc7847" -> "sha256:d29cf865591760eb7e843156584f545522640ee1b454f63617e5fe54e2c72dab" [label=""];
  "sha256:18f32a6c23f8785c1bbc2dad1d3d1473721d9f37d6475a8acbb1fe914afb5ff7" -> "sha256:d29cf865591760eb7e843156584f545522640ee1b454f63617e5fe54e2c72dab" [label=""];
  "sha256:d29cf865591760eb7e843156584f545522640ee1b454f63617e5fe54e2c72dab" -> "sha256:49cf6249ca41d89b0e591e74f5ad24bce19a43943f64bcd105ccedd4d9a9f4c2" [label=""];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:e4921d2990ef67ac092a41ba5f32bb8270d53848b2db4ac42176b236107f809c" [label=""];
  "sha256:49cf6249ca41d89b0e591e74f5ad24bce19a43943f64bcd105ccedd4d9a9f4c2" -> "sha256:e4921d2990ef67ac092a41ba5f32bb8270d53848b2db4ac42176b236107f809c" [label=""];
  "sha256:e4921d2990ef67ac092a41ba5f32bb8270d53848b2db4ac42176b236107f809c" -> "sha256:0959eeb15313780a89988310a798ff866cfc9a3582b6e6bd5158682aeb4e8492" [label=""];
}

