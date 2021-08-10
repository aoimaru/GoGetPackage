[app/sources/249676335.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" [label="/bin/sh -c apt-get update && apt-get install libcap2-bin mumble-server -y" shape="box"];
  "sha256:7364a7ebf523fa4750faa61062eaa6b773db3cfe93e1153d8acf34b9e4840a39" [label="local://context" shape="ellipse"];
  "sha256:86144ff82a9c1db90197f2cdb526f9faa647fae0553b2f2206ffeb1cf1a783bf" [label="copy{src=/mumble-server.ini, dest=/etc/mumble-server.ini}" shape="note"];
  "sha256:0c8386329545ca65b667fdfd914f0562d75eb779f291c002fac3a49c8842e121" [label="sha256:0c8386329545ca65b667fdfd914f0562d75eb779f291c002fac3a49c8842e121" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" [label=""];
  "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" -> "sha256:86144ff82a9c1db90197f2cdb526f9faa647fae0553b2f2206ffeb1cf1a783bf" [label=""];
  "sha256:7364a7ebf523fa4750faa61062eaa6b773db3cfe93e1153d8acf34b9e4840a39" -> "sha256:86144ff82a9c1db90197f2cdb526f9faa647fae0553b2f2206ffeb1cf1a783bf" [label=""];
  "sha256:86144ff82a9c1db90197f2cdb526f9faa647fae0553b2f2206ffeb1cf1a783bf" -> "sha256:0c8386329545ca65b667fdfd914f0562d75eb779f291c002fac3a49c8842e121" [label=""];
}

