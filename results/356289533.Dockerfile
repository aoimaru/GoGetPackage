[app/sources/356289533.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" [label="/bin/sh -c apt-get update && apt-get install libcap2-bin mumble-server -y" shape="box"];
  "sha256:eceaa2b9566759ab111ad2a26400deff520cf12bec6845f4b441b5cc73c4d426" [label="local://context" shape="ellipse"];
  "sha256:be06b0075a8efafa831f4b28e9b432dd9373920a9459718ae199d92e8899efa4" [label="copy{src=/mumble-server.ini, dest=/etc/mumble-server.ini}" shape="note"];
  "sha256:94cab511c96cd1658282c5a19ad672bbbabef1a2cd59df21bf78394698186b63" [label="sha256:94cab511c96cd1658282c5a19ad672bbbabef1a2cd59df21bf78394698186b63" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" [label=""];
  "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" -> "sha256:be06b0075a8efafa831f4b28e9b432dd9373920a9459718ae199d92e8899efa4" [label=""];
  "sha256:eceaa2b9566759ab111ad2a26400deff520cf12bec6845f4b441b5cc73c4d426" -> "sha256:be06b0075a8efafa831f4b28e9b432dd9373920a9459718ae199d92e8899efa4" [label=""];
  "sha256:be06b0075a8efafa831f4b28e9b432dd9373920a9459718ae199d92e8899efa4" -> "sha256:94cab511c96cd1658282c5a19ad672bbbabef1a2cd59df21bf78394698186b63" [label=""];
}

