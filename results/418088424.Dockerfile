[app/sources/418088424.Dockerfile]
digraph {
  "sha256:0830c875ff9b689cd4db05a72dae34a15c33cf6fbda2e73e183506f48413c47f" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:6a315466e196903f83fc0acdfddb95c7f0329f6f3565d70673b56147f768dc74" [label="/bin/sh -c echo 'deb http://us.archive.ubuntu.com/ubuntu/ precise universe' >> /etc/apt/sources.list" shape="box"];
  "sha256:811327894f4c5d679f859ccd52656b444542eb08de727d6d83599b718568979a" [label="/bin/sh -c apt-get -y update" shape="box"];
  "sha256:c96757f1d4b7f7d356e0dc368fda768d81101690ca36205eadef63c00ca65d20" [label="/bin/sh -c apt-get install -y build-essential git curl python python-dev python-setuptools software-properties-common python-software-properties libpq-dev libffi-dev libxml2-dev libxslt1-dev pandoc nodejs libjpeg-dev" shape="box"];
  "sha256:d35a98a9eac9675ebe0786a23dd7029e51e8418f20eb7b552fb2bb128c25f4c7" [label="/bin/sh -c easy_install-2.7 pip" shape="box"];
  "sha256:b4f49c631148d54ada3b49562de79d83d0520109fc93b1eec7073d5252a0bdd0" [label="copy{src=/requirements.txt, dest=/code/hasjob/requirements.txt}" shape="note"];
  "sha256:a4cc6edc15cd9ba6bacb1f164942cc77ff40d2e6d43a0d3c68b307b5bef6cacf" [label="/bin/sh -c pip2.7 install -r /code/hasjob/requirements.txt" shape="box"];
  "sha256:261e1e1dee6c93b1e5496f6f18afd0482ea585ed1cc5301b1fa54f5d180ac6ab" [label="copy{src=/, dest=/code/hasjob}" shape="note"];
  "sha256:9c5aeb3a8129665f4a9b7547e3d86cf959c9756d011fa373605ff38bc2eb21bc" [label="mkdir{path=/code/hasjob}" shape="note"];
  "sha256:cb1ef787fb8ee0c2b3baa72318d703f50759dba602e8b92bd3bc9d51a516cc19" [label="sha256:cb1ef787fb8ee0c2b3baa72318d703f50759dba602e8b92bd3bc9d51a516cc19" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:6a315466e196903f83fc0acdfddb95c7f0329f6f3565d70673b56147f768dc74" [label=""];
  "sha256:6a315466e196903f83fc0acdfddb95c7f0329f6f3565d70673b56147f768dc74" -> "sha256:811327894f4c5d679f859ccd52656b444542eb08de727d6d83599b718568979a" [label=""];
  "sha256:811327894f4c5d679f859ccd52656b444542eb08de727d6d83599b718568979a" -> "sha256:c96757f1d4b7f7d356e0dc368fda768d81101690ca36205eadef63c00ca65d20" [label=""];
  "sha256:c96757f1d4b7f7d356e0dc368fda768d81101690ca36205eadef63c00ca65d20" -> "sha256:d35a98a9eac9675ebe0786a23dd7029e51e8418f20eb7b552fb2bb128c25f4c7" [label=""];
  "sha256:d35a98a9eac9675ebe0786a23dd7029e51e8418f20eb7b552fb2bb128c25f4c7" -> "sha256:b4f49c631148d54ada3b49562de79d83d0520109fc93b1eec7073d5252a0bdd0" [label=""];
  "sha256:0830c875ff9b689cd4db05a72dae34a15c33cf6fbda2e73e183506f48413c47f" -> "sha256:b4f49c631148d54ada3b49562de79d83d0520109fc93b1eec7073d5252a0bdd0" [label=""];
  "sha256:b4f49c631148d54ada3b49562de79d83d0520109fc93b1eec7073d5252a0bdd0" -> "sha256:a4cc6edc15cd9ba6bacb1f164942cc77ff40d2e6d43a0d3c68b307b5bef6cacf" [label=""];
  "sha256:a4cc6edc15cd9ba6bacb1f164942cc77ff40d2e6d43a0d3c68b307b5bef6cacf" -> "sha256:261e1e1dee6c93b1e5496f6f18afd0482ea585ed1cc5301b1fa54f5d180ac6ab" [label=""];
  "sha256:0830c875ff9b689cd4db05a72dae34a15c33cf6fbda2e73e183506f48413c47f" -> "sha256:261e1e1dee6c93b1e5496f6f18afd0482ea585ed1cc5301b1fa54f5d180ac6ab" [label=""];
  "sha256:261e1e1dee6c93b1e5496f6f18afd0482ea585ed1cc5301b1fa54f5d180ac6ab" -> "sha256:9c5aeb3a8129665f4a9b7547e3d86cf959c9756d011fa373605ff38bc2eb21bc" [label=""];
  "sha256:9c5aeb3a8129665f4a9b7547e3d86cf959c9756d011fa373605ff38bc2eb21bc" -> "sha256:cb1ef787fb8ee0c2b3baa72318d703f50759dba602e8b92bd3bc9d51a516cc19" [label=""];
}

