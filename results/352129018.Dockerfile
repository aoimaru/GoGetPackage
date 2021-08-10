[app/sources/352129018.Dockerfile]
digraph {
  "sha256:1aa1d1d5f1faa63c936cba144597fbf511fa41b32a41dfb21452b2bc27b11e47" [label="docker-image://docker.io/phusion/baseimage:0.9.22" shape="ellipse"];
  "sha256:684f3d30e50218155c84e0ed34eefe726e3e8155751b4198a4cda75f3cc9393b" [label="/bin/sh -c ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone" shape="box"];
  "sha256:03055856ff6700e8bd26474ebb3bb29cd781fa521a7e7eece03dec5e8bd5b364" [label="/bin/sh -c add-apt-repository ppa:octave/stable" shape="box"];
  "sha256:d82ef11dc4cd5ea18849ac4c69bfd91047c8bac465e358a238c73a97b5b442ca" [label="/bin/sh -c apt-get update && apt-get -y install \txvfb \tx11vnc \tsupervisor \tfluxbox \toctave \tnet-tools \tgit-core \tgit" shape="box"];
  "sha256:a50cde4a88d14befffeaaf58bbd2a2d322be915f31a0ca91328d806e9603c8d2" [label="/bin/sh -c apt-get autoclean" shape="box"];
  "sha256:4b4e1ba60eb9dc8a7dad97e20612b5c0cd4839525a2e064b207b09fa4d36b6b6" [label="local://context" shape="ellipse"];
  "sha256:81fa9cd079fdc59383c3318b4a3a1f6fe65b8d7578dfce04ce856dc5ab06729b" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:836098f9673500e962f100f3ba46496764a698a1f098cde6de5c8b177b87d43d" [label="mkdir{path=/root}" shape="note"];
  "sha256:4010d7aacdb3c8769e549adb0ba510aa2931a9aaf3b4954690e3b4585e4db2c2" [label="copy{src=/noVNC-0.6.2, dest=/root/novnc/}" shape="note"];
  "sha256:4139fa0b546f6230e93c3b69de1a4d7b508deb6e827b1bd929b12ac0a2b4ec43" [label="/bin/sh -c ln -s /root/novnc/vnc_auto.html /root/novnc/index.html" shape="box"];
  "sha256:56ffe31d98f96a7371e149b123dab6fa80f0f0cd7dde3da0b26c007e6d81ab84" [label="mkdir{path=/scripts}" shape="note"];
  "sha256:9d763fda18620edbf83ce8d41ff570235ec579ee7edf358e66c09568ec4efa23" [label="copy{src=/octave_scr, dest=/scripts}" shape="note"];
  "sha256:d5a08267cda289696b10892eed45ddd3497fc358c7ec970e688bf9669646ffa7" [label="sha256:d5a08267cda289696b10892eed45ddd3497fc358c7ec970e688bf9669646ffa7" shape="plaintext"];
  "sha256:1aa1d1d5f1faa63c936cba144597fbf511fa41b32a41dfb21452b2bc27b11e47" -> "sha256:684f3d30e50218155c84e0ed34eefe726e3e8155751b4198a4cda75f3cc9393b" [label=""];
  "sha256:684f3d30e50218155c84e0ed34eefe726e3e8155751b4198a4cda75f3cc9393b" -> "sha256:03055856ff6700e8bd26474ebb3bb29cd781fa521a7e7eece03dec5e8bd5b364" [label=""];
  "sha256:03055856ff6700e8bd26474ebb3bb29cd781fa521a7e7eece03dec5e8bd5b364" -> "sha256:d82ef11dc4cd5ea18849ac4c69bfd91047c8bac465e358a238c73a97b5b442ca" [label=""];
  "sha256:d82ef11dc4cd5ea18849ac4c69bfd91047c8bac465e358a238c73a97b5b442ca" -> "sha256:a50cde4a88d14befffeaaf58bbd2a2d322be915f31a0ca91328d806e9603c8d2" [label=""];
  "sha256:a50cde4a88d14befffeaaf58bbd2a2d322be915f31a0ca91328d806e9603c8d2" -> "sha256:81fa9cd079fdc59383c3318b4a3a1f6fe65b8d7578dfce04ce856dc5ab06729b" [label=""];
  "sha256:4b4e1ba60eb9dc8a7dad97e20612b5c0cd4839525a2e064b207b09fa4d36b6b6" -> "sha256:81fa9cd079fdc59383c3318b4a3a1f6fe65b8d7578dfce04ce856dc5ab06729b" [label=""];
  "sha256:81fa9cd079fdc59383c3318b4a3a1f6fe65b8d7578dfce04ce856dc5ab06729b" -> "sha256:836098f9673500e962f100f3ba46496764a698a1f098cde6de5c8b177b87d43d" [label=""];
  "sha256:836098f9673500e962f100f3ba46496764a698a1f098cde6de5c8b177b87d43d" -> "sha256:4010d7aacdb3c8769e549adb0ba510aa2931a9aaf3b4954690e3b4585e4db2c2" [label=""];
  "sha256:4b4e1ba60eb9dc8a7dad97e20612b5c0cd4839525a2e064b207b09fa4d36b6b6" -> "sha256:4010d7aacdb3c8769e549adb0ba510aa2931a9aaf3b4954690e3b4585e4db2c2" [label=""];
  "sha256:4010d7aacdb3c8769e549adb0ba510aa2931a9aaf3b4954690e3b4585e4db2c2" -> "sha256:4139fa0b546f6230e93c3b69de1a4d7b508deb6e827b1bd929b12ac0a2b4ec43" [label=""];
  "sha256:4139fa0b546f6230e93c3b69de1a4d7b508deb6e827b1bd929b12ac0a2b4ec43" -> "sha256:56ffe31d98f96a7371e149b123dab6fa80f0f0cd7dde3da0b26c007e6d81ab84" [label=""];
  "sha256:56ffe31d98f96a7371e149b123dab6fa80f0f0cd7dde3da0b26c007e6d81ab84" -> "sha256:9d763fda18620edbf83ce8d41ff570235ec579ee7edf358e66c09568ec4efa23" [label=""];
  "sha256:4b4e1ba60eb9dc8a7dad97e20612b5c0cd4839525a2e064b207b09fa4d36b6b6" -> "sha256:9d763fda18620edbf83ce8d41ff570235ec579ee7edf358e66c09568ec4efa23" [label=""];
  "sha256:9d763fda18620edbf83ce8d41ff570235ec579ee7edf358e66c09568ec4efa23" -> "sha256:d5a08267cda289696b10892eed45ddd3497fc358c7ec970e688bf9669646ffa7" [label=""];
}

