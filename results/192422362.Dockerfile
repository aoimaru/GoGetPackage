[app/sources/192422362.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:ba31f49dccfa51f492b43bb50e0e3c75f0fb6f118943e815cc48f2bc60c02636" [label="/bin/sh -c apt-get -y install curl git software-properties-common" shape="box"];
  "sha256:675e1d5d94e9a3be01948fa65fd7e8e7b885756613a9828f225816ce43bb5109" [label="/bin/sh -c apt-add-repository ppa:ansible/ansible" shape="box"];
  "sha256:d230bc35655e86f2cd18003c3ed6b5eebb591cb4e14720934d80cb41d044e834" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:ebee3a9c8c72b98ce2170cfe16cb3d57f92f597a8680af6b022d7e78c59a1f49" [label="/bin/sh -c apt-get -y install ansible" shape="box"];
  "sha256:a46751988605eab71e33e95f36a8eb11b6fecc7cf77e9854e890562b4036e188" [label="/bin/sh -c gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4" shape="box"];
  "sha256:aeb96748aa02434dcdf54bce067c5b1d66c624455fd78023044466ddadf1b23b" [label="/bin/sh -c arch=\"$(dpkg --print-architecture)\" \t&& set -x \t&& curl -o /usr/local/bin/gosu -fSL \"https://github.com/tianon/gosu/releases/download/1.3/gosu-$arch\" \t&& curl -o /usr/local/bin/gosu.asc -fSL \"https://github.com/tianon/gosu/releases/download/1.3/gosu-$arch.asc\" \t&& gpg --verify /usr/local/bin/gosu.asc \t&& rm /usr/local/bin/gosu.asc \t&& chmod +x /usr/local/bin/gosu" shape="box"];
  "sha256:85885631b54df9891b13a7f334cf845cc1f239ba22df08c6efd1c41f3d6e3c33" [label="/bin/sh -c mkdir -p /opt/ansible_tasks" shape="box"];
  "sha256:1ce1b1e402fdfc2fdc7c18c4b0d8c62b96c85d361093f560bbd1a9d5d7f41118" [label="local://context" shape="ellipse"];
  "sha256:196d59ccada39754a04291a4fbee5083e1395dd4b0ccb4211319d984b9f6a84d" [label="copy{src=/playbook.yml, dest=/opt/ansible_tasks/},copy{src=/requirements.yml, dest=/opt/ansible_tasks/}" shape="note"];
  "sha256:4348caad8ac8ea8e328483527540c3c9e0daa05307d323ee0caa9c8afe6a834d" [label="/bin/sh -c ansible-galaxy install -r /opt/ansible_tasks/requirements.yml" shape="box"];
  "sha256:6f2b64c48373f0c079fdf26e2d6e6c63dbd30fdb121ae7a9991373db3490483c" [label="/bin/sh -c ansible-playbook -i \"localhost,\" -c local /opt/ansible_tasks/playbook.yml" shape="box"];
  "sha256:5c62344dbb31776c9da5390fa6afeea5cc9bfc6f428af8b95fff428f6ff8b2c2" [label="/bin/sh -c apt-get -y clean &&     apt-get -y autoremove" shape="box"];
  "sha256:2ad436a7b1f272f9f8bcda1f78b4269c1098da1613ddc1005a311b66323d3a8c" [label="/bin/sh -c rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:73d081a1aa93e90f4ba1b7ac31cb3796d0dcbda641738a26d7f59c3a57cbba9f" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:7dbdfde2805f0eb3d69035e02b9ff068a169321101dbe1cc1d042430a7a79ec5" [label="sha256:7dbdfde2805f0eb3d69035e02b9ff068a169321101dbe1cc1d042430a7a79ec5" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label=""];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" -> "sha256:ba31f49dccfa51f492b43bb50e0e3c75f0fb6f118943e815cc48f2bc60c02636" [label=""];
  "sha256:ba31f49dccfa51f492b43bb50e0e3c75f0fb6f118943e815cc48f2bc60c02636" -> "sha256:675e1d5d94e9a3be01948fa65fd7e8e7b885756613a9828f225816ce43bb5109" [label=""];
  "sha256:675e1d5d94e9a3be01948fa65fd7e8e7b885756613a9828f225816ce43bb5109" -> "sha256:d230bc35655e86f2cd18003c3ed6b5eebb591cb4e14720934d80cb41d044e834" [label=""];
  "sha256:d230bc35655e86f2cd18003c3ed6b5eebb591cb4e14720934d80cb41d044e834" -> "sha256:ebee3a9c8c72b98ce2170cfe16cb3d57f92f597a8680af6b022d7e78c59a1f49" [label=""];
  "sha256:ebee3a9c8c72b98ce2170cfe16cb3d57f92f597a8680af6b022d7e78c59a1f49" -> "sha256:a46751988605eab71e33e95f36a8eb11b6fecc7cf77e9854e890562b4036e188" [label=""];
  "sha256:a46751988605eab71e33e95f36a8eb11b6fecc7cf77e9854e890562b4036e188" -> "sha256:aeb96748aa02434dcdf54bce067c5b1d66c624455fd78023044466ddadf1b23b" [label=""];
  "sha256:aeb96748aa02434dcdf54bce067c5b1d66c624455fd78023044466ddadf1b23b" -> "sha256:85885631b54df9891b13a7f334cf845cc1f239ba22df08c6efd1c41f3d6e3c33" [label=""];
  "sha256:85885631b54df9891b13a7f334cf845cc1f239ba22df08c6efd1c41f3d6e3c33" -> "sha256:196d59ccada39754a04291a4fbee5083e1395dd4b0ccb4211319d984b9f6a84d" [label=""];
  "sha256:1ce1b1e402fdfc2fdc7c18c4b0d8c62b96c85d361093f560bbd1a9d5d7f41118" -> "sha256:196d59ccada39754a04291a4fbee5083e1395dd4b0ccb4211319d984b9f6a84d" [label=""];
  "sha256:196d59ccada39754a04291a4fbee5083e1395dd4b0ccb4211319d984b9f6a84d" -> "sha256:4348caad8ac8ea8e328483527540c3c9e0daa05307d323ee0caa9c8afe6a834d" [label=""];
  "sha256:4348caad8ac8ea8e328483527540c3c9e0daa05307d323ee0caa9c8afe6a834d" -> "sha256:6f2b64c48373f0c079fdf26e2d6e6c63dbd30fdb121ae7a9991373db3490483c" [label=""];
  "sha256:6f2b64c48373f0c079fdf26e2d6e6c63dbd30fdb121ae7a9991373db3490483c" -> "sha256:5c62344dbb31776c9da5390fa6afeea5cc9bfc6f428af8b95fff428f6ff8b2c2" [label=""];
  "sha256:5c62344dbb31776c9da5390fa6afeea5cc9bfc6f428af8b95fff428f6ff8b2c2" -> "sha256:2ad436a7b1f272f9f8bcda1f78b4269c1098da1613ddc1005a311b66323d3a8c" [label=""];
  "sha256:2ad436a7b1f272f9f8bcda1f78b4269c1098da1613ddc1005a311b66323d3a8c" -> "sha256:73d081a1aa93e90f4ba1b7ac31cb3796d0dcbda641738a26d7f59c3a57cbba9f" [label=""];
  "sha256:1ce1b1e402fdfc2fdc7c18c4b0d8c62b96c85d361093f560bbd1a9d5d7f41118" -> "sha256:73d081a1aa93e90f4ba1b7ac31cb3796d0dcbda641738a26d7f59c3a57cbba9f" [label=""];
  "sha256:73d081a1aa93e90f4ba1b7ac31cb3796d0dcbda641738a26d7f59c3a57cbba9f" -> "sha256:7dbdfde2805f0eb3d69035e02b9ff068a169321101dbe1cc1d042430a7a79ec5" [label=""];
}

