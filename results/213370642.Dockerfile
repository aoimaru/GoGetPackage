[app/sources/213370642.Dockerfile]
digraph {
  "sha256:def2dffe4ccb30e089bf3d1ba8c9f155b4484657831a1a77878b089db37baf1b" [label="docker-image://docker.io/library/debian:oldstable" shape="ellipse"];
  "sha256:2a8ee2203f1040e0fd9a2fffac49a6da9f17a703c50dfd3bb1942d58e328c8e2" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:3163e61fae10012654c00e23808448ca69c003585e51a968ee1df8452122d829" [label="/bin/sh -c apt-get install -y python2.7" shape="box"];
  "sha256:260ffe5907128e3968597bdccdcda9761468f04ed828ead981ca576311909815" [label="/bin/sh -c update-alternatives --install /usr/bin/python python /usr/bin/python2.7 10" shape="box"];
  "sha256:a097a846c60f316d70cd522138ad5fb697e125c8617e180e230a763f9424e8d1" [label="/bin/sh -c apt-get install -y python-pip python-dev libmysqlclient-dev rpm bzip2 wget git build-essential libssl-dev libffi-dev" shape="box"];
  "sha256:21feb16df5189bf22fca4ab1f0e6b6a83c19bf8012575160f42777f8ff46b734" [label="/bin/sh -c pip install --upgrade cffi pyasn1" shape="box"];
  "sha256:b90b98402c6c1d3da87dafa4cd91ea73e2ae842dcf321c0988c02144cf5f00fb" [label="/bin/sh -c pip install virtualenv PyYAML jinja2 paramiko" shape="box"];
  "sha256:446ddbb5a2f912ea90fddbe6cfab487f5a97f88fe28d7b520f22075bc2715306" [label="/bin/sh -c git clone https://github.com/ansible/ansible.git" shape="box"];
  "sha256:ecc3d49cd7f2b37f67675f8233b68f3b2767592de057359f31ca4fc24adbf673" [label="/bin/sh -c cd ansible" shape="box"];
  "sha256:ed2ed22bd3fd08e393c56febc028c429dae7ae7a963b803c0b3a379ba92728b2" [label="/bin/sh -c cd ansible && git checkout tags/v1.9.1-1" shape="box"];
  "sha256:8ef9d22bbb3cd89d04e660d921d620157f10938d8c52e86982c3615fd80164cb" [label="/bin/sh -c cd ansible && git submodule update --init --recursive" shape="box"];
  "sha256:a77ad9b1d858f57257e3107d5d7ab07fb6e4762344107e9e7446264f643990ea" [label="/bin/sh -c cd ansible && make install" shape="box"];
  "sha256:d26b6910a949290d2d97bdf0eedc693f144220aea8a4c35bf6c5b425bd64d030" [label="/bin/sh -c mkdir /etc/ansible" shape="box"];
  "sha256:1b455578f5a355a8056d7e74b0f61049959daaef8b782b744addda904ac48919" [label="/bin/sh -c cd ansible && cp examples/ansible.cfg /etc/ansible/." shape="box"];
  "sha256:0a50f85bfad6c11cf989f8726636be000b96312b5ef1c85cc90120f7886bbff5" [label="/bin/sh -c mkdir -p /root/ansible /root/.ssh" shape="box"];
  "sha256:ce808b9cd3a1aac966415b73ed231a04b8bf250fa8f97ecdc7686c9a2a06de2a" [label="sha256:ce808b9cd3a1aac966415b73ed231a04b8bf250fa8f97ecdc7686c9a2a06de2a" shape="plaintext"];
  "sha256:def2dffe4ccb30e089bf3d1ba8c9f155b4484657831a1a77878b089db37baf1b" -> "sha256:2a8ee2203f1040e0fd9a2fffac49a6da9f17a703c50dfd3bb1942d58e328c8e2" [label=""];
  "sha256:2a8ee2203f1040e0fd9a2fffac49a6da9f17a703c50dfd3bb1942d58e328c8e2" -> "sha256:3163e61fae10012654c00e23808448ca69c003585e51a968ee1df8452122d829" [label=""];
  "sha256:3163e61fae10012654c00e23808448ca69c003585e51a968ee1df8452122d829" -> "sha256:260ffe5907128e3968597bdccdcda9761468f04ed828ead981ca576311909815" [label=""];
  "sha256:260ffe5907128e3968597bdccdcda9761468f04ed828ead981ca576311909815" -> "sha256:a097a846c60f316d70cd522138ad5fb697e125c8617e180e230a763f9424e8d1" [label=""];
  "sha256:a097a846c60f316d70cd522138ad5fb697e125c8617e180e230a763f9424e8d1" -> "sha256:21feb16df5189bf22fca4ab1f0e6b6a83c19bf8012575160f42777f8ff46b734" [label=""];
  "sha256:21feb16df5189bf22fca4ab1f0e6b6a83c19bf8012575160f42777f8ff46b734" -> "sha256:b90b98402c6c1d3da87dafa4cd91ea73e2ae842dcf321c0988c02144cf5f00fb" [label=""];
  "sha256:b90b98402c6c1d3da87dafa4cd91ea73e2ae842dcf321c0988c02144cf5f00fb" -> "sha256:446ddbb5a2f912ea90fddbe6cfab487f5a97f88fe28d7b520f22075bc2715306" [label=""];
  "sha256:446ddbb5a2f912ea90fddbe6cfab487f5a97f88fe28d7b520f22075bc2715306" -> "sha256:ecc3d49cd7f2b37f67675f8233b68f3b2767592de057359f31ca4fc24adbf673" [label=""];
  "sha256:ecc3d49cd7f2b37f67675f8233b68f3b2767592de057359f31ca4fc24adbf673" -> "sha256:ed2ed22bd3fd08e393c56febc028c429dae7ae7a963b803c0b3a379ba92728b2" [label=""];
  "sha256:ed2ed22bd3fd08e393c56febc028c429dae7ae7a963b803c0b3a379ba92728b2" -> "sha256:8ef9d22bbb3cd89d04e660d921d620157f10938d8c52e86982c3615fd80164cb" [label=""];
  "sha256:8ef9d22bbb3cd89d04e660d921d620157f10938d8c52e86982c3615fd80164cb" -> "sha256:a77ad9b1d858f57257e3107d5d7ab07fb6e4762344107e9e7446264f643990ea" [label=""];
  "sha256:a77ad9b1d858f57257e3107d5d7ab07fb6e4762344107e9e7446264f643990ea" -> "sha256:d26b6910a949290d2d97bdf0eedc693f144220aea8a4c35bf6c5b425bd64d030" [label=""];
  "sha256:d26b6910a949290d2d97bdf0eedc693f144220aea8a4c35bf6c5b425bd64d030" -> "sha256:1b455578f5a355a8056d7e74b0f61049959daaef8b782b744addda904ac48919" [label=""];
  "sha256:1b455578f5a355a8056d7e74b0f61049959daaef8b782b744addda904ac48919" -> "sha256:0a50f85bfad6c11cf989f8726636be000b96312b5ef1c85cc90120f7886bbff5" [label=""];
  "sha256:0a50f85bfad6c11cf989f8726636be000b96312b5ef1c85cc90120f7886bbff5" -> "sha256:ce808b9cd3a1aac966415b73ed231a04b8bf250fa8f97ecdc7686c9a2a06de2a" [label=""];
}

