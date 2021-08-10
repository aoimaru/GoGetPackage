[app/sources/457290505.Dockerfile]
digraph {
  "sha256:1c0550f7c787fd224eaf1d43a6c71ada64440cc1948477d1eaa56f05e53e64f9" [label="https://cloud.gastecnologia.com.br/bb/downloads/ws/warsaw_setup64.deb" shape="ellipse"];
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" [label="docker-image://docker.io/library/debian:stable-slim" shape="ellipse"];
  "sha256:4e2e2a1274ae1180bc30f972cb3142db6a22c250f6f75d1a1d5014dc5431a2a5" [label="local://context" shape="ellipse"];
  "sha256:3728d5c83b9765b99bfa7fedfc771755130f5f38508c2401d20e7d4fedb9d22d" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:51144305b070fe2adbc8a2e77aa3f4267005b123dbb91ec142a918ccef71bb17" [label="/bin/sh -c apt update   && apt install -qqy   x11-utils   x11-apps   openssl   libcurl3   libnss3-tools   apt-transport-https   ca-certificates   sudo   gnupg   hicolor-icon-theme   libgl1-mesa-dri   libgl1-mesa-glx   libpango1.0-0   libpulse0   libv4l-0   fonts-symbola   xauth   language-pack-pt   firefox-esr   --no-install-recommends   && apt clean   && rm -rf /var/lib/apt/lists/*   && groupadd -g 1000 -r bank   && useradd -u 1000 -r -g bank -G audio,video bank   && mkdir -p /home/bank/Downloads   && chown -R bank:bank /home/bank   && echo \"bank ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers   && chmod 0440 /etc/sudoers   && passwd -d root   && chmod 755 /start.sh   && ln -s /start.sh /usr/local/bin/start.sh" shape="box"];
  "sha256:f3e5288b217b7e5a5a7a02e106253a2737ce43f20368408bda282643d488e131" [label="copy{src=/warsaw_setup64.deb, dest=/warsaw_setup64.deb}" shape="note"];
  "sha256:3e515cfefc0270cc6592872976e26601c49d1b7f288981d8de32048568231d79" [label="copy{src=/local.conf, dest=/etc/fonts/local.conf}" shape="note"];
  "sha256:6a4a3eee16f226f82bc793035eb659b361e60adaaf41cf4fb1a2e21ed4f13ea1" [label="sha256:6a4a3eee16f226f82bc793035eb659b361e60adaaf41cf4fb1a2e21ed4f13ea1" shape="plaintext"];
  "sha256:a587d3e16407b0bd81afc3fefd944d7d94761d5d7ef21a1c77c55fb35a7fc198" -> "sha256:3728d5c83b9765b99bfa7fedfc771755130f5f38508c2401d20e7d4fedb9d22d" [label=""];
  "sha256:4e2e2a1274ae1180bc30f972cb3142db6a22c250f6f75d1a1d5014dc5431a2a5" -> "sha256:3728d5c83b9765b99bfa7fedfc771755130f5f38508c2401d20e7d4fedb9d22d" [label=""];
  "sha256:3728d5c83b9765b99bfa7fedfc771755130f5f38508c2401d20e7d4fedb9d22d" -> "sha256:51144305b070fe2adbc8a2e77aa3f4267005b123dbb91ec142a918ccef71bb17" [label=""];
  "sha256:51144305b070fe2adbc8a2e77aa3f4267005b123dbb91ec142a918ccef71bb17" -> "sha256:f3e5288b217b7e5a5a7a02e106253a2737ce43f20368408bda282643d488e131" [label=""];
  "sha256:1c0550f7c787fd224eaf1d43a6c71ada64440cc1948477d1eaa56f05e53e64f9" -> "sha256:f3e5288b217b7e5a5a7a02e106253a2737ce43f20368408bda282643d488e131" [label=""];
  "sha256:f3e5288b217b7e5a5a7a02e106253a2737ce43f20368408bda282643d488e131" -> "sha256:3e515cfefc0270cc6592872976e26601c49d1b7f288981d8de32048568231d79" [label=""];
  "sha256:4e2e2a1274ae1180bc30f972cb3142db6a22c250f6f75d1a1d5014dc5431a2a5" -> "sha256:3e515cfefc0270cc6592872976e26601c49d1b7f288981d8de32048568231d79" [label=""];
  "sha256:3e515cfefc0270cc6592872976e26601c49d1b7f288981d8de32048568231d79" -> "sha256:6a4a3eee16f226f82bc793035eb659b361e60adaaf41cf4fb1a2e21ed4f13ea1" [label=""];
}

