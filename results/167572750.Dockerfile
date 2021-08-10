[app/sources/167572750.Dockerfile]
digraph {
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" [label="docker-image://docker.io/library/ubuntu:precise" shape="ellipse"];
  "sha256:efd08045809fbe286dd5fcd7aeae93307afd6ba0357a1f5d5677e370a2e07ef9" [label="/bin/sh -c echo \"deb http://archive.ubuntu.com/ubuntu precise main universe\" > /etc/apt/sources.list" shape="box"];
  "sha256:e382e1141ca28ed06a0554a7186c3ad0aac407d3a7c4cb46b586d5eea95e00b0" [label="/bin/sh -c echo \"deb http://archive.ubuntu.com/ubuntu precise-updates main universe\" >> /etc/apt/sources.list" shape="box"];
  "sha256:4c3eb2bf4101b930455d570f641574f4684dbb4c7629ebeb10f482ef136d4112" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:b4bbb18715db88ecb7b979b448b9e46d633a5c9bd6958e51785eb7b810ab952d" [label="/bin/sh -c apt-get install -y less openjdk-7-jre-headless net-tools vim-tiny sudo openssh-server" shape="box"];
  "sha256:134c7233c68c701c12c1ea7157232c37254a79d1c09f4b7595097285b14792bd" [label="http://www.scala-lang.org/files/archive/scala-2.10.4.tgz" shape="ellipse"];
  "sha256:4e58ddd96e1178d71273898aa1f943462e1c29ab8a5c4752ec2642f69c81bb58" [label="copy{src=/scala-2.10.4.tgz, dest=/}" shape="note"];
  "sha256:2f338e3d7d44ba9952ffa7d3a26276004985ad20385adedee8a928a17253ed0c" [label="/bin/sh -c (cd / && gunzip < scala-$SCALA_VERSION.tgz)|(cd /opt && tar -xvf -)" shape="box"];
  "sha256:522fcba80b14b8ed51316957196db8db40af717156180f5f34297196338dbc2c" [label="/bin/sh -c rm /scala-$SCALA_VERSION.tgz" shape="box"];
  "sha256:04da13055e14d27477bc0082f11b7b5c221afc5db44b8b3d3af2ccdf9ec32e49" [label="sha256:04da13055e14d27477bc0082f11b7b5c221afc5db44b8b3d3af2ccdf9ec32e49" shape="plaintext"];
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" -> "sha256:efd08045809fbe286dd5fcd7aeae93307afd6ba0357a1f5d5677e370a2e07ef9" [label=""];
  "sha256:efd08045809fbe286dd5fcd7aeae93307afd6ba0357a1f5d5677e370a2e07ef9" -> "sha256:e382e1141ca28ed06a0554a7186c3ad0aac407d3a7c4cb46b586d5eea95e00b0" [label=""];
  "sha256:e382e1141ca28ed06a0554a7186c3ad0aac407d3a7c4cb46b586d5eea95e00b0" -> "sha256:4c3eb2bf4101b930455d570f641574f4684dbb4c7629ebeb10f482ef136d4112" [label=""];
  "sha256:4c3eb2bf4101b930455d570f641574f4684dbb4c7629ebeb10f482ef136d4112" -> "sha256:b4bbb18715db88ecb7b979b448b9e46d633a5c9bd6958e51785eb7b810ab952d" [label=""];
  "sha256:b4bbb18715db88ecb7b979b448b9e46d633a5c9bd6958e51785eb7b810ab952d" -> "sha256:4e58ddd96e1178d71273898aa1f943462e1c29ab8a5c4752ec2642f69c81bb58" [label=""];
  "sha256:134c7233c68c701c12c1ea7157232c37254a79d1c09f4b7595097285b14792bd" -> "sha256:4e58ddd96e1178d71273898aa1f943462e1c29ab8a5c4752ec2642f69c81bb58" [label=""];
  "sha256:4e58ddd96e1178d71273898aa1f943462e1c29ab8a5c4752ec2642f69c81bb58" -> "sha256:2f338e3d7d44ba9952ffa7d3a26276004985ad20385adedee8a928a17253ed0c" [label=""];
  "sha256:2f338e3d7d44ba9952ffa7d3a26276004985ad20385adedee8a928a17253ed0c" -> "sha256:522fcba80b14b8ed51316957196db8db40af717156180f5f34297196338dbc2c" [label=""];
  "sha256:522fcba80b14b8ed51316957196db8db40af717156180f5f34297196338dbc2c" -> "sha256:04da13055e14d27477bc0082f11b7b5c221afc5db44b8b3d3af2ccdf9ec32e49" [label=""];
}

