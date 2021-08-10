[app/sources/165259828.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:3966072ecf27456ce15e766c272b8cafcfa7e899ab0cc46143bb151777abe223" [label="local://context" shape="ellipse"];
  "sha256:495c685d2a53cd8812d3876358c2a245a293bfd8ef146b3278d4e22a8236d066" [label="copy{src=/startup.sh, dest=/startup.sh}" shape="note"];
  "sha256:8b984f8d6a28376c9b7134c2f8c38ca781bc4bfb38ad72bb2ac1c2aa97e2cea8" [label="/bin/sh -c apt-get update -y &&     apt-get install -y git x11vnc wget python python-numpy unzip Xvfb firefox openbox geany menu &&     cd /root && git clone https://github.com/kanaka/noVNC.git &&     cd noVNC/utils && git clone https://github.com/kanaka/websockify websockify &&     cd /root &&     chmod 0755 /startup.sh &&     apt-get autoclean &&     apt-get autoremove &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:8fbede8b0adb07fa83feac2a8802e861d8050f7b8139f79ad9b1a935c03ef90f" [label="sha256:8fbede8b0adb07fa83feac2a8802e861d8050f7b8139f79ad9b1a935c03ef90f" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:495c685d2a53cd8812d3876358c2a245a293bfd8ef146b3278d4e22a8236d066" [label=""];
  "sha256:3966072ecf27456ce15e766c272b8cafcfa7e899ab0cc46143bb151777abe223" -> "sha256:495c685d2a53cd8812d3876358c2a245a293bfd8ef146b3278d4e22a8236d066" [label=""];
  "sha256:495c685d2a53cd8812d3876358c2a245a293bfd8ef146b3278d4e22a8236d066" -> "sha256:8b984f8d6a28376c9b7134c2f8c38ca781bc4bfb38ad72bb2ac1c2aa97e2cea8" [label=""];
  "sha256:8b984f8d6a28376c9b7134c2f8c38ca781bc4bfb38ad72bb2ac1c2aa97e2cea8" -> "sha256:8fbede8b0adb07fa83feac2a8802e861d8050f7b8139f79ad9b1a935c03ef90f" [label=""];
}

