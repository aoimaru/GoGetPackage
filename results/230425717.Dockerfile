[app/sources/230425717.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:956bab0edde3f0c63e76d89577a166edcf98555e3932035a0e88b466c530fd54" [label="/bin/sh -c apt-get update   && apt-get install -y software-properties-common   && add-apt-repository -y ppa:chris-lea/node.js   && add-apt-repository -y ppa:fcwu-tw/ppa   && apt-get update   && apt-get install -y build-essential unzip curl wget git qdk2 realpath moreutils fakeroot   && apt-get clean   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6a913ecbd8b889f98a3fc5c2df00007815b1a4546235892a0ef765327a65a10e" [label="local://context" shape="ellipse"];
  "sha256:ebb0281ca3ca1b3cfb437803ab3106ef39c32cdfa0c9f06dbed815b088331b1f" [label="copy{src=/app.sh, dest=/}" shape="note"];
  "sha256:3c460d807050bd15f7b3049870245ba80369d1d6530c0c0caab957e575f6ae05" [label="sha256:3c460d807050bd15f7b3049870245ba80369d1d6530c0c0caab957e575f6ae05" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:956bab0edde3f0c63e76d89577a166edcf98555e3932035a0e88b466c530fd54" [label=""];
  "sha256:956bab0edde3f0c63e76d89577a166edcf98555e3932035a0e88b466c530fd54" -> "sha256:ebb0281ca3ca1b3cfb437803ab3106ef39c32cdfa0c9f06dbed815b088331b1f" [label=""];
  "sha256:6a913ecbd8b889f98a3fc5c2df00007815b1a4546235892a0ef765327a65a10e" -> "sha256:ebb0281ca3ca1b3cfb437803ab3106ef39c32cdfa0c9f06dbed815b088331b1f" [label=""];
  "sha256:ebb0281ca3ca1b3cfb437803ab3106ef39c32cdfa0c9f06dbed815b088331b1f" -> "sha256:3c460d807050bd15f7b3049870245ba80369d1d6530c0c0caab957e575f6ae05" [label=""];
}

