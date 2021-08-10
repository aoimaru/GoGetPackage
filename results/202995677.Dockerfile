[app/sources/202995677.Dockerfile]
digraph {
  "sha256:a2f89cc58d220eead210e5c82e43b36d3cffc05eb5044c3c97d20663cbd3cdc6" [label="local://context" shape="ellipse"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" [label="docker-image://docker.io/library/centos:latest" shape="ellipse"];
  "sha256:b3c217324222cf52432b6a69fa312c17c81f26b966c7b1062516f5b1b2baafa5" [label="/bin/sh -c yum install epel-release -y" shape="box"];
  "sha256:47a3f317497c8ea1eb690cac6be59a40ebcfce54e1e35d53d99671239a3d962f" [label="/bin/sh -c yum install -y     vim-enhanced     mlocate     git     python-pip     python-devel     postgres-devel     postgres-contrib     libpqxx-devel     npm" shape="box"];
  "sha256:edf016a9e04aefc64ed7be8e26af479dce94dcd68976e6c673f601d8170e6236" [label="/bin/sh -c pip install --upgrade pip &&     pip install email" shape="box"];
  "sha256:ea84ec5f5b3ec0f939f92fd8b02d3bf9039632ed278516318faa7e5264b3641e" [label="copy{src=/dart-local.yaml, dest=/root}" shape="note"];
  "sha256:650ee10d81c92279cc65b2d2cf1af33abe5d3e56a8d3af63adc6feaea961221c" [label="copy{src=/docker_CMD.sh, dest=/root}" shape="note"];
  "sha256:940f72bd21f325f8ba3a33a4d35b65b87885cb008b8c6cd98bcea2ccf053d08a" [label="/bin/sh -c chmod +x /root/docker_CMD.sh" shape="box"];
  "sha256:2c50a5807cf1589bb85f836a60bab6c32257373784538bb0c114a230d0f30381" [label="mkdir{path=/root}" shape="note"];
  "sha256:0c5f6259a49d6c7d3319ec748f1b7ac59f3371ae4163c17b8dc208e551ce9013" [label="sha256:0c5f6259a49d6c7d3319ec748f1b7ac59f3371ae4163c17b8dc208e551ce9013" shape="plaintext"];
  "sha256:7c9f2d8952bfd78fc6b67343a80735183ebae5f5821fc69800becba62b066875" -> "sha256:b3c217324222cf52432b6a69fa312c17c81f26b966c7b1062516f5b1b2baafa5" [label=""];
  "sha256:b3c217324222cf52432b6a69fa312c17c81f26b966c7b1062516f5b1b2baafa5" -> "sha256:47a3f317497c8ea1eb690cac6be59a40ebcfce54e1e35d53d99671239a3d962f" [label=""];
  "sha256:47a3f317497c8ea1eb690cac6be59a40ebcfce54e1e35d53d99671239a3d962f" -> "sha256:edf016a9e04aefc64ed7be8e26af479dce94dcd68976e6c673f601d8170e6236" [label=""];
  "sha256:edf016a9e04aefc64ed7be8e26af479dce94dcd68976e6c673f601d8170e6236" -> "sha256:ea84ec5f5b3ec0f939f92fd8b02d3bf9039632ed278516318faa7e5264b3641e" [label=""];
  "sha256:a2f89cc58d220eead210e5c82e43b36d3cffc05eb5044c3c97d20663cbd3cdc6" -> "sha256:ea84ec5f5b3ec0f939f92fd8b02d3bf9039632ed278516318faa7e5264b3641e" [label=""];
  "sha256:ea84ec5f5b3ec0f939f92fd8b02d3bf9039632ed278516318faa7e5264b3641e" -> "sha256:650ee10d81c92279cc65b2d2cf1af33abe5d3e56a8d3af63adc6feaea961221c" [label=""];
  "sha256:a2f89cc58d220eead210e5c82e43b36d3cffc05eb5044c3c97d20663cbd3cdc6" -> "sha256:650ee10d81c92279cc65b2d2cf1af33abe5d3e56a8d3af63adc6feaea961221c" [label=""];
  "sha256:650ee10d81c92279cc65b2d2cf1af33abe5d3e56a8d3af63adc6feaea961221c" -> "sha256:940f72bd21f325f8ba3a33a4d35b65b87885cb008b8c6cd98bcea2ccf053d08a" [label=""];
  "sha256:940f72bd21f325f8ba3a33a4d35b65b87885cb008b8c6cd98bcea2ccf053d08a" -> "sha256:2c50a5807cf1589bb85f836a60bab6c32257373784538bb0c114a230d0f30381" [label=""];
  "sha256:2c50a5807cf1589bb85f836a60bab6c32257373784538bb0c114a230d0f30381" -> "sha256:0c5f6259a49d6c7d3319ec748f1b7ac59f3371ae4163c17b8dc208e551ce9013" [label=""];
}

