[app/sources/395127728.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:b113eb6f06f8b66cde226dc4029e15491a274777cca3946ed8de32167717c88a" [label="/bin/sh -c apt-get update && apt-get install --yes     build-essential" shape="box"];
  "sha256:8d6475955414ad40cee6d65517ea85934118dfb82b70ba0f6bdeaead9a96373a" [label="/bin/sh -c apt-get install --yes         python-pip         libpython2.7-dev" shape="box"];
  "sha256:bcaa9fafbaf36c791a400c5b7b47a3c81553787f9465e47a62da0bd45fc8c8a3" [label="/bin/sh -c pip install 'cutadapt==1.9.1'" shape="box"];
  "sha256:ade33a699df042f8b9b82d6d84697b0b636edeb4cd3e1c84ac20782761e5c6ad" [label="/bin/sh -c apt-get clean ; apt-get remove --yes --purge build-essential" shape="box"];
  "sha256:c6e1bea20209dfdd2d71ef056ad649d6a2f3ea6afd0bd2ed98b6a39f98bb7f5a" [label="sha256:c6e1bea20209dfdd2d71ef056ad649d6a2f3ea6afd0bd2ed98b6a39f98bb7f5a" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:b113eb6f06f8b66cde226dc4029e15491a274777cca3946ed8de32167717c88a" [label=""];
  "sha256:b113eb6f06f8b66cde226dc4029e15491a274777cca3946ed8de32167717c88a" -> "sha256:8d6475955414ad40cee6d65517ea85934118dfb82b70ba0f6bdeaead9a96373a" [label=""];
  "sha256:8d6475955414ad40cee6d65517ea85934118dfb82b70ba0f6bdeaead9a96373a" -> "sha256:bcaa9fafbaf36c791a400c5b7b47a3c81553787f9465e47a62da0bd45fc8c8a3" [label=""];
  "sha256:bcaa9fafbaf36c791a400c5b7b47a3c81553787f9465e47a62da0bd45fc8c8a3" -> "sha256:ade33a699df042f8b9b82d6d84697b0b636edeb4cd3e1c84ac20782761e5c6ad" [label=""];
  "sha256:ade33a699df042f8b9b82d6d84697b0b636edeb4cd3e1c84ac20782761e5c6ad" -> "sha256:c6e1bea20209dfdd2d71ef056ad649d6a2f3ea6afd0bd2ed98b6a39f98bb7f5a" [label=""];
}

