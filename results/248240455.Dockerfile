[app/sources/248240455.Dockerfile]
digraph {
  "sha256:02d9b9e2f26686bc2805a1a2f6a43d67c7b9978c557e35b54c049cc451f49950" [label="docker-image://docker.io/jayjohnson/redis-base:3.2.8" shape="ellipse"];
  "sha256:deb5874f6fa1321bf5a1df8f306ebdba577d3557d01e769b4d1536fd449e3574" [label="mkdir{path=/opt/redis}" shape="note"];
  "sha256:157d5e86a47999a11de67cafc4b2515338b203dd2f91494b8e4e7f1886794a0d" [label="local://context" shape="ellipse"];
  "sha256:3f10ed118c5d76d5e92e950ac8ca3b6a570344bc4d245b8e4b991fe32e249683" [label="copy{src=/docker, dest=/opt/tools/}" shape="note"];
  "sha256:9144f5b94201a5fa7dec27fbf6df9a7f8b0f7137e9e67ae8732171b5589c279b" [label="/bin/sh -c chmod 777 /opt/tools/*.sh" shape="box"];
  "sha256:5499d8c7f131f06b7b7d74ad94f86f7f89528f59f85e8ccb2d39f481f34a25f8" [label="/bin/sh -c cp /opt/tools/bashrc /root/.bashrc     && cp /opt/tools/vimrc /root/.vimrc     && cp /opt/tools/gitconfig /root/.gitconfig     && cp /opt/tools/pre-start.sh /usr/local/bin/     && cp /opt/tools/start-container.sh /usr/local/bin/     && cp /opt/tools/post-start.sh /usr/local/bin/     && cp /opt/tools/custom-pre-start.sh /usr/local/bin/     && cp /opt/tools/start-services.sh /usr/local/bin/     && cp /opt/tools/start-container.sh /opt/start-container.sh     && cp /opt/start-container.sh /usr/local/bin/start-container.sh     && mkdir -p -m 777 /opt/data/src /opt/data/dst     && mkdir -p -m 777 /opt/redis/run     && chmod 644 /root/.bashrc && chown root:root /root/.bashrc     && mkdir -p -m 777 /etc/supervisor.d     && updatedb     && cat /opt/tools/inputrc >> /etc/inputrc" shape="box"];
  "sha256:987c80ae9de7c8c9aaa1e100749cecff01b2b2600555d14c03fe586fc78ae09f" [label="/bin/sh -c cp -rp /opt/tools/etc /opt/redis/     && cp -rp /opt/tools/node /opt/redis/     && easy_install supervisor" shape="box"];
  "sha256:e0d9c4e2d63efb7b4335b3cafdf5bef81293a9e256b3905a58ae2db9a442fbe9" [label="sha256:e0d9c4e2d63efb7b4335b3cafdf5bef81293a9e256b3905a58ae2db9a442fbe9" shape="plaintext"];
  "sha256:02d9b9e2f26686bc2805a1a2f6a43d67c7b9978c557e35b54c049cc451f49950" -> "sha256:deb5874f6fa1321bf5a1df8f306ebdba577d3557d01e769b4d1536fd449e3574" [label=""];
  "sha256:deb5874f6fa1321bf5a1df8f306ebdba577d3557d01e769b4d1536fd449e3574" -> "sha256:3f10ed118c5d76d5e92e950ac8ca3b6a570344bc4d245b8e4b991fe32e249683" [label=""];
  "sha256:157d5e86a47999a11de67cafc4b2515338b203dd2f91494b8e4e7f1886794a0d" -> "sha256:3f10ed118c5d76d5e92e950ac8ca3b6a570344bc4d245b8e4b991fe32e249683" [label=""];
  "sha256:3f10ed118c5d76d5e92e950ac8ca3b6a570344bc4d245b8e4b991fe32e249683" -> "sha256:9144f5b94201a5fa7dec27fbf6df9a7f8b0f7137e9e67ae8732171b5589c279b" [label=""];
  "sha256:9144f5b94201a5fa7dec27fbf6df9a7f8b0f7137e9e67ae8732171b5589c279b" -> "sha256:5499d8c7f131f06b7b7d74ad94f86f7f89528f59f85e8ccb2d39f481f34a25f8" [label=""];
  "sha256:5499d8c7f131f06b7b7d74ad94f86f7f89528f59f85e8ccb2d39f481f34a25f8" -> "sha256:987c80ae9de7c8c9aaa1e100749cecff01b2b2600555d14c03fe586fc78ae09f" [label=""];
  "sha256:987c80ae9de7c8c9aaa1e100749cecff01b2b2600555d14c03fe586fc78ae09f" -> "sha256:e0d9c4e2d63efb7b4335b3cafdf5bef81293a9e256b3905a58ae2db9a442fbe9" [label=""];
}

