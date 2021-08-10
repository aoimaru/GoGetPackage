[app/sources/225769156.Dockerfile]
digraph {
  "sha256:fafb7d5d6ccb8ca96aac5a578d55ddb1973adda74a65cf771ea7ed43f7413e6b" [label="docker-image://docker.io/resin/rpi-raspbian:jessie" shape="ellipse"];
  "sha256:84c38a825e14ea76b8b55748357914e20bc7d961298528c85fce6b9f091289c5" [label="/bin/sh -c apt-get update && apt-get install -y \tbash \tfluxbox \tgit \tnet-tools \topenssh-client \tsocat \tsupervisor \tx11vnc \txterm \txvfb     --no-install-recommends &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9b5ea682e99e66f1e00a9d9076c66f3922f584a942f976f53db51c2bb7192381" [label="/bin/sh -c git clone https://github.com/kanaka/noVNC.git /root/noVNC \t&& git clone https://github.com/kanaka/websockify /root/noVNC/utils/websockify \t&& rm -rf /root/noVNC/.git \t&& rm -rf /root/noVNC/utils/websockify/.git \t&& apt-get remove git" shape="box"];
  "sha256:ab297827446a6a98af9932d24be148f02b3000f2d8437df9d39d43e023f6e368" [label="local://context" shape="ellipse"];
  "sha256:07aca0d49296543453260235713ca8a884008d36f8b340082f1baf3a9d5d048c" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:31210cab9a143c0592e58011e9bead70d9142689e5b3e2107cd91fb0c611e4c1" [label="sha256:31210cab9a143c0592e58011e9bead70d9142689e5b3e2107cd91fb0c611e4c1" shape="plaintext"];
  "sha256:fafb7d5d6ccb8ca96aac5a578d55ddb1973adda74a65cf771ea7ed43f7413e6b" -> "sha256:84c38a825e14ea76b8b55748357914e20bc7d961298528c85fce6b9f091289c5" [label=""];
  "sha256:84c38a825e14ea76b8b55748357914e20bc7d961298528c85fce6b9f091289c5" -> "sha256:9b5ea682e99e66f1e00a9d9076c66f3922f584a942f976f53db51c2bb7192381" [label=""];
  "sha256:9b5ea682e99e66f1e00a9d9076c66f3922f584a942f976f53db51c2bb7192381" -> "sha256:07aca0d49296543453260235713ca8a884008d36f8b340082f1baf3a9d5d048c" [label=""];
  "sha256:ab297827446a6a98af9932d24be148f02b3000f2d8437df9d39d43e023f6e368" -> "sha256:07aca0d49296543453260235713ca8a884008d36f8b340082f1baf3a9d5d048c" [label=""];
  "sha256:07aca0d49296543453260235713ca8a884008d36f8b340082f1baf3a9d5d048c" -> "sha256:31210cab9a143c0592e58011e9bead70d9142689e5b3e2107cd91fb0c611e4c1" [label=""];
}

