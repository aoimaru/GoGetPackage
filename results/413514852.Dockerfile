[app/sources/413514852.Dockerfile]
digraph {
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" [label="docker-image://docker.io/library/ubuntu:precise" shape="ellipse"];
  "sha256:efd08045809fbe286dd5fcd7aeae93307afd6ba0357a1f5d5677e370a2e07ef9" [label="/bin/sh -c echo \"deb http://archive.ubuntu.com/ubuntu precise main universe\" > /etc/apt/sources.list" shape="box"];
  "sha256:24e22f7c25713a457eb9279240d0347404c25e4fdc8cf42d924d868b2e28eb35" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:d7f6b7217a7c82de01e35f4dc141b592c96de21392e127a9b51a848e0efd5634" [label="/bin/sh -c apt-get install -y less openjdk-7-jre-headless net-tools vim-tiny sudo openssh-server" shape="box"];
  "sha256:134c7233c68c701c12c1ea7157232c37254a79d1c09f4b7595097285b14792bd" [label="http://www.scala-lang.org/files/archive/scala-2.10.4.tgz" shape="ellipse"];
  "sha256:78e89d8d746b68255b36e2c6fc441818681c816f531b0c83074168f4da13baa2" [label="copy{src=/scala-2.10.4.tgz, dest=/}" shape="note"];
  "sha256:f491c1737a4b92ba3c7d2176f111c79377f0dc6c70358db82e16ba5d3e5044c7" [label="/bin/sh -c (cd / && gunzip < scala-$SCALA_VERSION.tgz)|(cd /opt && tar -xvf -)" shape="box"];
  "sha256:9854261d831e5146eca28c8e3f470ee51b40e2c7518e546ffea94950762d482a" [label="/bin/sh -c rm /scala-$SCALA_VERSION.tgz" shape="box"];
  "sha256:c7ff5a2211155da1c83e3d14c9f3eec210e04a932ec443c377571ac82c4c170a" [label="sha256:c7ff5a2211155da1c83e3d14c9f3eec210e04a932ec443c377571ac82c4c170a" shape="plaintext"];
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" -> "sha256:efd08045809fbe286dd5fcd7aeae93307afd6ba0357a1f5d5677e370a2e07ef9" [label=""];
  "sha256:efd08045809fbe286dd5fcd7aeae93307afd6ba0357a1f5d5677e370a2e07ef9" -> "sha256:24e22f7c25713a457eb9279240d0347404c25e4fdc8cf42d924d868b2e28eb35" [label=""];
  "sha256:24e22f7c25713a457eb9279240d0347404c25e4fdc8cf42d924d868b2e28eb35" -> "sha256:d7f6b7217a7c82de01e35f4dc141b592c96de21392e127a9b51a848e0efd5634" [label=""];
  "sha256:d7f6b7217a7c82de01e35f4dc141b592c96de21392e127a9b51a848e0efd5634" -> "sha256:78e89d8d746b68255b36e2c6fc441818681c816f531b0c83074168f4da13baa2" [label=""];
  "sha256:134c7233c68c701c12c1ea7157232c37254a79d1c09f4b7595097285b14792bd" -> "sha256:78e89d8d746b68255b36e2c6fc441818681c816f531b0c83074168f4da13baa2" [label=""];
  "sha256:78e89d8d746b68255b36e2c6fc441818681c816f531b0c83074168f4da13baa2" -> "sha256:f491c1737a4b92ba3c7d2176f111c79377f0dc6c70358db82e16ba5d3e5044c7" [label=""];
  "sha256:f491c1737a4b92ba3c7d2176f111c79377f0dc6c70358db82e16ba5d3e5044c7" -> "sha256:9854261d831e5146eca28c8e3f470ee51b40e2c7518e546ffea94950762d482a" [label=""];
  "sha256:9854261d831e5146eca28c8e3f470ee51b40e2c7518e546ffea94950762d482a" -> "sha256:c7ff5a2211155da1c83e3d14c9f3eec210e04a932ec443c377571ac82c4c170a" [label=""];
}

