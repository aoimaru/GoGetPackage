[app/sources/474259351.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" [label="/bin/sh -c apt-get update && apt-get install libcap2-bin mumble-server -y" shape="box"];
  "sha256:2fb4f3b0f65cf51d5111dde9fcb4c7b6383f353779ec612d12e0f0f2da42173f" [label="local://context" shape="ellipse"];
  "sha256:e66c7141ac1264267d7b2bb8530e55c9c208f8669c17302955f009b8b91095df" [label="copy{src=/mumble-server.ini, dest=/etc/mumble-server.ini}" shape="note"];
  "sha256:65d957e42ee9ddea30af16d7460464991a8ad3bccb18d02072bd4df2a50581fa" [label="sha256:65d957e42ee9ddea30af16d7460464991a8ad3bccb18d02072bd4df2a50581fa" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" [label=""];
  "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" -> "sha256:e66c7141ac1264267d7b2bb8530e55c9c208f8669c17302955f009b8b91095df" [label=""];
  "sha256:2fb4f3b0f65cf51d5111dde9fcb4c7b6383f353779ec612d12e0f0f2da42173f" -> "sha256:e66c7141ac1264267d7b2bb8530e55c9c208f8669c17302955f009b8b91095df" [label=""];
  "sha256:e66c7141ac1264267d7b2bb8530e55c9c208f8669c17302955f009b8b91095df" -> "sha256:65d957e42ee9ddea30af16d7460464991a8ad3bccb18d02072bd4df2a50581fa" [label=""];
}

