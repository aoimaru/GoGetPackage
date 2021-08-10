[app/sources/473624518.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:e826c48ae3abe0b13b2a26e81cf6e90b0819b17e44b9568b89410f133c519653" [label="mkdir{path=/opt/dci-control-server}" shape="note"];
  "sha256:0d70ed7352bcb5e98d93511641678d5871227a0e218fcb2619646617b9c8e489" [label="local://context" shape="ellipse"];
  "sha256:eb8d9270db859c251c4cba78a59c5b817eb69a79a453deba9ac4e675c465bc4a" [label="copy{src=/requirements.txt, dest=/opt/dci-control-server/}" shape="note"];
  "sha256:b4fa5c5e26c4b992362174ce7ee2ff965420304e29a8f83c9508422099ad9d32" [label="/bin/sh -c yum -y install epel-release &&     yum -y install gcc git zeromq-devel     python python2-devel python2-pip python2-setuptools     python34 python34-devel python34-pip python34-setuptools &&     yum clean all &&     pip install --no-cache-dir -U pip &&     pip install --no-cache-dir -U tox &&     pip install --no-cache-dir -r requirements.txt" shape="box"];
  "sha256:07f7c3477756d29005942e3d8f12e0e78076932006a1040816a7ad9d46fbe8a8" [label="copy{src=/tests/data/ca.key, dest=/etc/ssl/repo/},copy{src=/tests/data/ca.crt, dest=/etc/ssl/repo/}" shape="note"];
  "sha256:c2cfb942646f8cb8a284492127a3467647e9763c4e4f2360fb76ba095bd413ec" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:b99bddc0b8d6206c0459bfb105a3addcea436c59179b1c1dfa8eeeccd0bab272" [label="sha256:b99bddc0b8d6206c0459bfb105a3addcea436c59179b1c1dfa8eeeccd0bab272" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:e826c48ae3abe0b13b2a26e81cf6e90b0819b17e44b9568b89410f133c519653" [label=""];
  "sha256:e826c48ae3abe0b13b2a26e81cf6e90b0819b17e44b9568b89410f133c519653" -> "sha256:eb8d9270db859c251c4cba78a59c5b817eb69a79a453deba9ac4e675c465bc4a" [label=""];
  "sha256:0d70ed7352bcb5e98d93511641678d5871227a0e218fcb2619646617b9c8e489" -> "sha256:eb8d9270db859c251c4cba78a59c5b817eb69a79a453deba9ac4e675c465bc4a" [label=""];
  "sha256:eb8d9270db859c251c4cba78a59c5b817eb69a79a453deba9ac4e675c465bc4a" -> "sha256:b4fa5c5e26c4b992362174ce7ee2ff965420304e29a8f83c9508422099ad9d32" [label=""];
  "sha256:b4fa5c5e26c4b992362174ce7ee2ff965420304e29a8f83c9508422099ad9d32" -> "sha256:07f7c3477756d29005942e3d8f12e0e78076932006a1040816a7ad9d46fbe8a8" [label=""];
  "sha256:0d70ed7352bcb5e98d93511641678d5871227a0e218fcb2619646617b9c8e489" -> "sha256:07f7c3477756d29005942e3d8f12e0e78076932006a1040816a7ad9d46fbe8a8" [label=""];
  "sha256:07f7c3477756d29005942e3d8f12e0e78076932006a1040816a7ad9d46fbe8a8" -> "sha256:c2cfb942646f8cb8a284492127a3467647e9763c4e4f2360fb76ba095bd413ec" [label=""];
  "sha256:0d70ed7352bcb5e98d93511641678d5871227a0e218fcb2619646617b9c8e489" -> "sha256:c2cfb942646f8cb8a284492127a3467647e9763c4e4f2360fb76ba095bd413ec" [label=""];
  "sha256:c2cfb942646f8cb8a284492127a3467647e9763c4e4f2360fb76ba095bd413ec" -> "sha256:b99bddc0b8d6206c0459bfb105a3addcea436c59179b1c1dfa8eeeccd0bab272" [label=""];
}

