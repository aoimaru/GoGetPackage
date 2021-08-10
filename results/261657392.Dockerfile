[app/sources/261657392.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:93ea5fa21ab2eef81223e74de8883a9d2302589052d0a696ff9e406969a09c9c" [label="/bin/sh -c apt-get update &&     apt-get install -y wget bzip2 build-essential openjdk-8-jdk ssh sudo &&     apt-get clean" shape="box"];
  "sha256:89901b1cad6349283263e5b92b46632b662ac6766ee05676d5441361bff26858" [label="/bin/sh -c useradd -mU -s /bin/bash -G sudo ubuntu &&     echo \"ubuntu ALL=(ALL) NOPASSWD: ALL\" >> /etc/sudoers" shape="box"];
  "sha256:f22645abed7aa6fcc99c59b35bf7e18b14a05eecf5ec50ec4d2f92f83c225c11" [label="/bin/sh -c ssh-keygen -q -f ~/.ssh/docker -N \"\" &&     cp ~/.ssh/docker.pub ~/.ssh/authorized_keys" shape="box"];
  "sha256:9b6520788fa0673178cd9fd73fb26fea73581db14f68e559536ec1dccfa1190d" [label="/bin/sh -c wget --quiet https://github.com/uber/horovod/files/1596799/openmpi-3.0.0-bin.tar.gz -O /tmp/openmpi.tar.gz &&     cd /usr/local &&     tar -zxf /tmp/openmpi.tar.gz &&     ldconfig &&     rm -r /tmp/openmpi.tar.gz" shape="box"];
  "sha256:b7db4de9b38d2deecbd47f5070bea238d615c3be3582de6b4eec0f3654d8cf6f" [label="/bin/sh -c wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-4.5.11-Linux-x86_64.sh -O ~/miniconda.sh &&     /bin/bash ~/miniconda.sh -b -p /opt/conda &&     rm ~/miniconda.sh &&     ln -s /opt/conda/etc/profile.d/conda.sh /etc/profile.d/conda.sh &&     echo \". /opt/conda/etc/profile.d/conda.sh\" >> ~/.bashrc" shape="box"];
  "sha256:8662917fe4d1a633e9c5de8752e1c08bbec14fb139437d8fccb740734afcec86" [label="local://context" shape="ellipse"];
  "sha256:0a193c384464d9056314a39cd52eaab915eb65b9520a1b5e56d278637855fb60" [label="copy{src=/environment.yml, dest=/tmp/environment.yml}" shape="note"];
  "sha256:ae966edb685874ddd794c8733b6b33c1278121d2e4aa55816f2727d9645332a4" [label="/bin/sh -c /opt/conda/bin/conda create -n sparkdl python=$PYTHON_VERSION &&     /opt/conda/bin/conda env update -n sparkdl -f /tmp/environment.yml &&     echo \"conda activate sparkdl\" >> ~/.bashrc" shape="box"];
  "sha256:761202eae38fe997f5ef4f09dcd6deb3a2c0736a783dc2f09f7c7ef1a81796d8" [label="/bin/sh -c wget --quiet $SPARK_BUILD_URL -O /tmp/spark.tgz &&     tar -C /opt -xf /tmp/spark.tgz &&     mv /opt/$SPARK_BUILD /opt/spark &&     rm /tmp/spark.tgz" shape="box"];
  "sha256:81bd703b28979c67671e893cbce9f9c31416ea4885826aa43f233197ef900f02" [label="mkdir{path=/mnt/sparkdl}" shape="note"];
  "sha256:240f4ff5275e05f653d82580051e2b56fac0362e8d2e751d811457001e365de1" [label="sha256:240f4ff5275e05f653d82580051e2b56fac0362e8d2e751d811457001e365de1" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:93ea5fa21ab2eef81223e74de8883a9d2302589052d0a696ff9e406969a09c9c" [label=""];
  "sha256:93ea5fa21ab2eef81223e74de8883a9d2302589052d0a696ff9e406969a09c9c" -> "sha256:89901b1cad6349283263e5b92b46632b662ac6766ee05676d5441361bff26858" [label=""];
  "sha256:89901b1cad6349283263e5b92b46632b662ac6766ee05676d5441361bff26858" -> "sha256:f22645abed7aa6fcc99c59b35bf7e18b14a05eecf5ec50ec4d2f92f83c225c11" [label=""];
  "sha256:f22645abed7aa6fcc99c59b35bf7e18b14a05eecf5ec50ec4d2f92f83c225c11" -> "sha256:9b6520788fa0673178cd9fd73fb26fea73581db14f68e559536ec1dccfa1190d" [label=""];
  "sha256:9b6520788fa0673178cd9fd73fb26fea73581db14f68e559536ec1dccfa1190d" -> "sha256:b7db4de9b38d2deecbd47f5070bea238d615c3be3582de6b4eec0f3654d8cf6f" [label=""];
  "sha256:b7db4de9b38d2deecbd47f5070bea238d615c3be3582de6b4eec0f3654d8cf6f" -> "sha256:0a193c384464d9056314a39cd52eaab915eb65b9520a1b5e56d278637855fb60" [label=""];
  "sha256:8662917fe4d1a633e9c5de8752e1c08bbec14fb139437d8fccb740734afcec86" -> "sha256:0a193c384464d9056314a39cd52eaab915eb65b9520a1b5e56d278637855fb60" [label=""];
  "sha256:0a193c384464d9056314a39cd52eaab915eb65b9520a1b5e56d278637855fb60" -> "sha256:ae966edb685874ddd794c8733b6b33c1278121d2e4aa55816f2727d9645332a4" [label=""];
  "sha256:ae966edb685874ddd794c8733b6b33c1278121d2e4aa55816f2727d9645332a4" -> "sha256:761202eae38fe997f5ef4f09dcd6deb3a2c0736a783dc2f09f7c7ef1a81796d8" [label=""];
  "sha256:761202eae38fe997f5ef4f09dcd6deb3a2c0736a783dc2f09f7c7ef1a81796d8" -> "sha256:81bd703b28979c67671e893cbce9f9c31416ea4885826aa43f233197ef900f02" [label=""];
  "sha256:81bd703b28979c67671e893cbce9f9c31416ea4885826aa43f233197ef900f02" -> "sha256:240f4ff5275e05f653d82580051e2b56fac0362e8d2e751d811457001e365de1" [label=""];
}

