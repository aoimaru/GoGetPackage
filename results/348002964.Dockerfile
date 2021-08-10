[app/sources/348002964.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:d3e60eff246832c8d3bed955c06254dc5a1c706ee5ef767c0602cc5a3eabef3e" [label="/bin/sh -c apt-get update && apt-get install -y libgtk2.0-0 libcanberra-gtk-module libxext-dev libxrender-dev libxtst-dev wget" shape="box"];
  "sha256:dbf6c7cf171a43787a27087be629752c5595153c847de993f5496712d25047b2" [label="/bin/sh -c export uid=1000 gid=1000 &&     mkdir -p /home/javadev &&     echo \"javadev:x:${uid}:${gid}:JavaDev,,,:/home/javadev:/bin/bash\" >> /etc/passwd &&     echo \"javadev:x:${uid}:\" >> /etc/group &&     echo \"javadev ALL=(ALL) NOPASSWD: ALL\" > /etc/sudoers.d/javadev &&     chmod 0440 /etc/sudoers.d/javadev &&     chown ${uid}:${gid} -R /home/javadev" shape="box"];
  "sha256:f673d26226fa0ec99a0cfa4bf336d81c8f532a447cc1bcfa6e7d39a19db47b10" [label="/bin/sh -c apt-get install -y xvfb x11vnc fluxbox" shape="box"];
  "sha256:02cf4307569555436a4c474777dfa83173a6cefb3d05cfe54c4ce56cfd95a0d1" [label="mkdir{path=/home/javadev}" shape="note"];
  "sha256:c26b772dbc489e7a08d38532391acc349a122cf8f21c9a6af564ef3420d5d1cb" [label="/bin/sh -c ln -s /workspace workspace" shape="box"];
  "sha256:65d1f99073b9022bd7989a6338b8d026fbdb91807036db9dd0de9c1e7e5128dd" [label="/bin/sh -c wget https://github.com/cwahl-Treeptik/jdev-env-java/releases/download/v0.1/eclipse-bin.tar && tar -xvf eclipse-bin.tar && rm eclipse-bin.tar" shape="box"];
  "sha256:f6e474518378261e6c01f239045f54c86a6bbccc70e3075e04f16a8dd4d69c9d" [label="sha256:f6e474518378261e6c01f239045f54c86a6bbccc70e3075e04f16a8dd4d69c9d" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:d3e60eff246832c8d3bed955c06254dc5a1c706ee5ef767c0602cc5a3eabef3e" [label=""];
  "sha256:d3e60eff246832c8d3bed955c06254dc5a1c706ee5ef767c0602cc5a3eabef3e" -> "sha256:dbf6c7cf171a43787a27087be629752c5595153c847de993f5496712d25047b2" [label=""];
  "sha256:dbf6c7cf171a43787a27087be629752c5595153c847de993f5496712d25047b2" -> "sha256:f673d26226fa0ec99a0cfa4bf336d81c8f532a447cc1bcfa6e7d39a19db47b10" [label=""];
  "sha256:f673d26226fa0ec99a0cfa4bf336d81c8f532a447cc1bcfa6e7d39a19db47b10" -> "sha256:02cf4307569555436a4c474777dfa83173a6cefb3d05cfe54c4ce56cfd95a0d1" [label=""];
  "sha256:02cf4307569555436a4c474777dfa83173a6cefb3d05cfe54c4ce56cfd95a0d1" -> "sha256:c26b772dbc489e7a08d38532391acc349a122cf8f21c9a6af564ef3420d5d1cb" [label=""];
  "sha256:c26b772dbc489e7a08d38532391acc349a122cf8f21c9a6af564ef3420d5d1cb" -> "sha256:65d1f99073b9022bd7989a6338b8d026fbdb91807036db9dd0de9c1e7e5128dd" [label=""];
  "sha256:65d1f99073b9022bd7989a6338b8d026fbdb91807036db9dd0de9c1e7e5128dd" -> "sha256:f6e474518378261e6c01f239045f54c86a6bbccc70e3075e04f16a8dd4d69c9d" [label=""];
}

