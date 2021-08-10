[app/sources/307924018.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" [label="/bin/sh -c apt-get update && apt-get install libcap2-bin mumble-server -y" shape="box"];
  "sha256:0f27dd3ec0fefbdd9c8a0803465f49a1fe17b87a4b3a779f81a46a668c5b6127" [label="local://context" shape="ellipse"];
  "sha256:b62e563a12a2949d04dd5aec5ff322d2faaa5b6e5e283fb1ddf4615bc4d33dc4" [label="copy{src=/mumble-server.ini, dest=/etc/mumble-server.ini}" shape="note"];
  "sha256:4324a540007ee3480888b40ec5adbdab687a18b209af658a38cfb6a4958fa8fe" [label="sha256:4324a540007ee3480888b40ec5adbdab687a18b209af658a38cfb6a4958fa8fe" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" [label=""];
  "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" -> "sha256:b62e563a12a2949d04dd5aec5ff322d2faaa5b6e5e283fb1ddf4615bc4d33dc4" [label=""];
  "sha256:0f27dd3ec0fefbdd9c8a0803465f49a1fe17b87a4b3a779f81a46a668c5b6127" -> "sha256:b62e563a12a2949d04dd5aec5ff322d2faaa5b6e5e283fb1ddf4615bc4d33dc4" [label=""];
  "sha256:b62e563a12a2949d04dd5aec5ff322d2faaa5b6e5e283fb1ddf4615bc4d33dc4" -> "sha256:4324a540007ee3480888b40ec5adbdab687a18b209af658a38cfb6a4958fa8fe" [label=""];
}

