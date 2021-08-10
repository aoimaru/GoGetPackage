[app/sources/238521363.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" [label="/bin/sh -c apt-get update && apt-get install libcap2-bin mumble-server -y" shape="box"];
  "sha256:58b8e2921104d68458c00a67dfbecaa5db00026603f2ea07444f0ea3bd452de1" [label="local://context" shape="ellipse"];
  "sha256:1beddb922bfbf05058fd71b6629e98a8b03777349bd8064c13d82196af1036a8" [label="copy{src=/mumble-server.ini, dest=/etc/mumble-server.ini}" shape="note"];
  "sha256:bc22057a6134487a288a7df24d4bee384385ab9b72ce27e5745afacc21433696" [label="sha256:bc22057a6134487a288a7df24d4bee384385ab9b72ce27e5745afacc21433696" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" [label=""];
  "sha256:6fe22c00e64ba6e7fba73fb6d5489294c810c704426fc0a0e2ca6109388a2594" -> "sha256:1beddb922bfbf05058fd71b6629e98a8b03777349bd8064c13d82196af1036a8" [label=""];
  "sha256:58b8e2921104d68458c00a67dfbecaa5db00026603f2ea07444f0ea3bd452de1" -> "sha256:1beddb922bfbf05058fd71b6629e98a8b03777349bd8064c13d82196af1036a8" [label=""];
  "sha256:1beddb922bfbf05058fd71b6629e98a8b03777349bd8064c13d82196af1036a8" -> "sha256:bc22057a6134487a288a7df24d4bee384385ab9b72ce27e5745afacc21433696" [label=""];
}

