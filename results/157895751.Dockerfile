[app/sources/157895751.Dockerfile]
digraph {
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" [label="docker-image://docker.io/library/centos:7" shape="ellipse"];
  "sha256:48abca8c03c250d235309f5a3889347633f48b03943dd886346ae40afe7f177f" [label="/bin/sh -c yum install -y xz   && curl -SLO \"https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz\"   && tar -xJf \"node-v$NODE_VERSION-linux-x64.tar.xz\" -C /usr/local --strip-components=1   && rm -f \"/node-v$NODE_VERSION-linux-x64.tar.xz\"" shape="box"];
  "sha256:680d69afec66daf9d0111c1b709b2d2e3d933a30acf5cef91e4e61d49e81ff56" [label="/bin/sh -c yum install -y epel-release   yum install -y iproute python-setuptools hostname inotify-tools yum-utils which &&   easy_install supervisor" shape="box"];
  "sha256:07b1cf0e7ae22755dceb9dbea344064cec6c188493d224f9d2dccd7ef85f5f99" [label="local://context" shape="ellipse"];
  "sha256:d3f5a611085de624b1553f3e3255b24e2c1bfe7608eb3252aaad07116fa7e910" [label="copy{src=/supervisord.conf, dest=/etc/supervisord.conf}" shape="note"];
  "sha256:155f4e7643c3ccc17a7e40e506064579041a3769ca0f2a861843e83e35fe90ce" [label="/bin/sh -c yum install -y openssh-server openssh-clients   && ssh-keygen -t rsa -f ~/.ssh/id_rsa -N ''   && cat ~/.ssh/id_rsa.pub > ~/.ssh/authorized_keys   && ssh-keygen -f /etc/ssh/ssh_host_rsa_key" shape="box"];
  "sha256:a077b3198a1cf8dce1877b95559af03dbc12bb545d8323785863f834d20a8928" [label="/bin/sh -c yum install -y mysql" shape="box"];
  "sha256:044e1a7e1ccf67fff1f63bf6b0787809ce58a7507afd005d20f0da02e4e35069" [label="/bin/sh -c yum clean all" shape="box"];
  "sha256:ed842156f3bac76fc4fc841dee535aa6479d1a52c7aaa4a255a43be47d230055" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:c0d6f939b68ed99261eda574745c1a6bc5c7112f57abfd74c2f0af30a8b594d7" [label="/bin/sh -c mkdir -p /nikita" shape="box"];
  "sha256:fa5880fe21f6a54ffccc4b8622599d15a06d0b08b5cce295625d0bb5aff37433" [label="mkdir{path=/nikita/packages/db}" shape="note"];
  "sha256:08bfc359f53fa58cb32f099e3f44bca9d7a4aa8e3066950c56675c6eda2de31f" [label="sha256:08bfc359f53fa58cb32f099e3f44bca9d7a4aa8e3066950c56675c6eda2de31f" shape="plaintext"];
  "sha256:eccdc23ae33ff032265281cdcd61b6bcb08837a6e55df3e7dcb5aef332534337" -> "sha256:48abca8c03c250d235309f5a3889347633f48b03943dd886346ae40afe7f177f" [label=""];
  "sha256:48abca8c03c250d235309f5a3889347633f48b03943dd886346ae40afe7f177f" -> "sha256:680d69afec66daf9d0111c1b709b2d2e3d933a30acf5cef91e4e61d49e81ff56" [label=""];
  "sha256:680d69afec66daf9d0111c1b709b2d2e3d933a30acf5cef91e4e61d49e81ff56" -> "sha256:d3f5a611085de624b1553f3e3255b24e2c1bfe7608eb3252aaad07116fa7e910" [label=""];
  "sha256:07b1cf0e7ae22755dceb9dbea344064cec6c188493d224f9d2dccd7ef85f5f99" -> "sha256:d3f5a611085de624b1553f3e3255b24e2c1bfe7608eb3252aaad07116fa7e910" [label=""];
  "sha256:d3f5a611085de624b1553f3e3255b24e2c1bfe7608eb3252aaad07116fa7e910" -> "sha256:155f4e7643c3ccc17a7e40e506064579041a3769ca0f2a861843e83e35fe90ce" [label=""];
  "sha256:155f4e7643c3ccc17a7e40e506064579041a3769ca0f2a861843e83e35fe90ce" -> "sha256:a077b3198a1cf8dce1877b95559af03dbc12bb545d8323785863f834d20a8928" [label=""];
  "sha256:a077b3198a1cf8dce1877b95559af03dbc12bb545d8323785863f834d20a8928" -> "sha256:044e1a7e1ccf67fff1f63bf6b0787809ce58a7507afd005d20f0da02e4e35069" [label=""];
  "sha256:044e1a7e1ccf67fff1f63bf6b0787809ce58a7507afd005d20f0da02e4e35069" -> "sha256:ed842156f3bac76fc4fc841dee535aa6479d1a52c7aaa4a255a43be47d230055" [label=""];
  "sha256:07b1cf0e7ae22755dceb9dbea344064cec6c188493d224f9d2dccd7ef85f5f99" -> "sha256:ed842156f3bac76fc4fc841dee535aa6479d1a52c7aaa4a255a43be47d230055" [label=""];
  "sha256:ed842156f3bac76fc4fc841dee535aa6479d1a52c7aaa4a255a43be47d230055" -> "sha256:c0d6f939b68ed99261eda574745c1a6bc5c7112f57abfd74c2f0af30a8b594d7" [label=""];
  "sha256:c0d6f939b68ed99261eda574745c1a6bc5c7112f57abfd74c2f0af30a8b594d7" -> "sha256:fa5880fe21f6a54ffccc4b8622599d15a06d0b08b5cce295625d0bb5aff37433" [label=""];
  "sha256:fa5880fe21f6a54ffccc4b8622599d15a06d0b08b5cce295625d0bb5aff37433" -> "sha256:08bfc359f53fa58cb32f099e3f44bca9d7a4aa8e3066950c56675c6eda2de31f" [label=""];
}

