[app/sources/429306774.Dockerfile]
digraph {
  "sha256:761206f9e584371d7d259a1969de2f854baba19359ea09b1c47190640f0a60f3" [label="local://context" shape="ellipse"];
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" [label="docker-image://docker.io/library/ubuntu:precise" shape="ellipse"];
  "sha256:df0c48df891610150dacb446fabaefc5fcfa90833afae7096eddffc93619686d" [label="/bin/sh -c echo \"deb http://archive.ubuntu.com/ubuntu precise universe\" >> /etc/apt/sources.list" shape="box"];
  "sha256:69bc80fbc9bccbfa080858611daca3a8515d6c1c70be3c829edbaa1b59d5c73d" [label="/bin/sh -c apt-get install -y sudo openssh-server curl lsb-release git" shape="box"];
  "sha256:d7635f1a2f7aeb7e035399a81ae2639d9ec1e8ed3feccaf2b7cd870a546642f1" [label="/bin/sh -c dpkg-divert --local --rename --add /sbin/initctl" shape="box"];
  "sha256:44bf19a56305936c2d875b977250cb0381761139039c717c0fb7e3ff9ddf29f4" [label="/bin/sh -c ln -s /bin/true /sbin/initctl" shape="box"];
  "sha256:52f77145e2bee12c0c5cf4b3bf175fa5317527c19a6d298fd84e764a2644784a" [label="/bin/sh -c mkdir -p /var/run/sshd" shape="box"];
  "sha256:e56818e9be4a4fed952b27e317f702beb41a986f468b1a15df100806cf938636" [label="/bin/sh -c echo '127.0.0.1 localhost.localdomain localhost' >> /etc/hosts" shape="box"];
  "sha256:a401b41be8e115008b83a95119285edd2833dd9a9b2984ae2a7bd31d3a32715d" [label="/bin/sh -c useradd -d /home/sensu -m -s /bin/bash sensu" shape="box"];
  "sha256:84ddbd8fb6e0a378a23abb5e0599575419638b9d053a4bef32d587e1331280c6" [label="/bin/sh -c echo sensu:sensu | chpasswd" shape="box"];
  "sha256:f43eb84d49cf358bbb5421b636bf41681aac0c40c2b1e589042c74ac4ad57e91" [label="/bin/sh -c echo 'sensu ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers.d/sensu" shape="box"];
  "sha256:c712d3eae9fcc1addb57eabf546ea88fe2250d26be7c4d5aef54b28a1066eebd" [label="/bin/sh -c chmod 0440 /etc/sudoers.d/sensu" shape="box"];
  "sha256:73fc067e6c541278c5b5a92be389848972361c8c0a3796cf799b12aa4058e599" [label="copy{src=/policy-rc.d, dest=/usr/sbin/policy-rc.d}" shape="note"];
  "sha256:7587e6cd03c2fbcb65f46c4a0b821dcd53288864852f1a92e7b134e02e043121" [label="copy{src=/install-sensu.sh, dest=/tmp/}" shape="note"];
  "sha256:88a5c8a54677c7a22db875e2fc53fe382a6547e22380710bc1face95626b1c07" [label="/bin/sh -c /tmp/install-sensu.sh" shape="box"];
  "sha256:6663574277128c31a5faa4510c330b20b95e473f9d0a1fbb73d30ba0fd02e176" [label="copy{src=/config.json, dest=/etc/sensu/}" shape="note"];
  "sha256:dcd648f3333619dc6836a9f04b7c0d4533366cdc1dad7c124316b548113e0c6b" [label="copy{src=/client.json, dest=/etc/sensu/conf.d/client.json}" shape="note"];
  "sha256:b3c9fa95a58072d1ccfa4f993116781e319aead3d4f2040bcd7394cea9f7cb35" [label="copy{src=/start.sh, dest=/tmp/start.sh}" shape="note"];
  "sha256:e1a912b8e0cbca69f52797e5a3c66944adfcfd31e014fc9b3c74688a01d7eed4" [label="sha256:e1a912b8e0cbca69f52797e5a3c66944adfcfd31e014fc9b3c74688a01d7eed4" shape="plaintext"];
  "sha256:3a10f558748c1cb22051bc4d06a144b7bd92d6b82418210ed05556abf0ecb942" -> "sha256:df0c48df891610150dacb446fabaefc5fcfa90833afae7096eddffc93619686d" [label=""];
  "sha256:df0c48df891610150dacb446fabaefc5fcfa90833afae7096eddffc93619686d" -> "sha256:69bc80fbc9bccbfa080858611daca3a8515d6c1c70be3c829edbaa1b59d5c73d" [label=""];
  "sha256:69bc80fbc9bccbfa080858611daca3a8515d6c1c70be3c829edbaa1b59d5c73d" -> "sha256:d7635f1a2f7aeb7e035399a81ae2639d9ec1e8ed3feccaf2b7cd870a546642f1" [label=""];
  "sha256:d7635f1a2f7aeb7e035399a81ae2639d9ec1e8ed3feccaf2b7cd870a546642f1" -> "sha256:44bf19a56305936c2d875b977250cb0381761139039c717c0fb7e3ff9ddf29f4" [label=""];
  "sha256:44bf19a56305936c2d875b977250cb0381761139039c717c0fb7e3ff9ddf29f4" -> "sha256:52f77145e2bee12c0c5cf4b3bf175fa5317527c19a6d298fd84e764a2644784a" [label=""];
  "sha256:52f77145e2bee12c0c5cf4b3bf175fa5317527c19a6d298fd84e764a2644784a" -> "sha256:e56818e9be4a4fed952b27e317f702beb41a986f468b1a15df100806cf938636" [label=""];
  "sha256:e56818e9be4a4fed952b27e317f702beb41a986f468b1a15df100806cf938636" -> "sha256:a401b41be8e115008b83a95119285edd2833dd9a9b2984ae2a7bd31d3a32715d" [label=""];
  "sha256:a401b41be8e115008b83a95119285edd2833dd9a9b2984ae2a7bd31d3a32715d" -> "sha256:84ddbd8fb6e0a378a23abb5e0599575419638b9d053a4bef32d587e1331280c6" [label=""];
  "sha256:84ddbd8fb6e0a378a23abb5e0599575419638b9d053a4bef32d587e1331280c6" -> "sha256:f43eb84d49cf358bbb5421b636bf41681aac0c40c2b1e589042c74ac4ad57e91" [label=""];
  "sha256:f43eb84d49cf358bbb5421b636bf41681aac0c40c2b1e589042c74ac4ad57e91" -> "sha256:c712d3eae9fcc1addb57eabf546ea88fe2250d26be7c4d5aef54b28a1066eebd" [label=""];
  "sha256:c712d3eae9fcc1addb57eabf546ea88fe2250d26be7c4d5aef54b28a1066eebd" -> "sha256:73fc067e6c541278c5b5a92be389848972361c8c0a3796cf799b12aa4058e599" [label=""];
  "sha256:761206f9e584371d7d259a1969de2f854baba19359ea09b1c47190640f0a60f3" -> "sha256:73fc067e6c541278c5b5a92be389848972361c8c0a3796cf799b12aa4058e599" [label=""];
  "sha256:73fc067e6c541278c5b5a92be389848972361c8c0a3796cf799b12aa4058e599" -> "sha256:7587e6cd03c2fbcb65f46c4a0b821dcd53288864852f1a92e7b134e02e043121" [label=""];
  "sha256:761206f9e584371d7d259a1969de2f854baba19359ea09b1c47190640f0a60f3" -> "sha256:7587e6cd03c2fbcb65f46c4a0b821dcd53288864852f1a92e7b134e02e043121" [label=""];
  "sha256:7587e6cd03c2fbcb65f46c4a0b821dcd53288864852f1a92e7b134e02e043121" -> "sha256:88a5c8a54677c7a22db875e2fc53fe382a6547e22380710bc1face95626b1c07" [label=""];
  "sha256:88a5c8a54677c7a22db875e2fc53fe382a6547e22380710bc1face95626b1c07" -> "sha256:6663574277128c31a5faa4510c330b20b95e473f9d0a1fbb73d30ba0fd02e176" [label=""];
  "sha256:761206f9e584371d7d259a1969de2f854baba19359ea09b1c47190640f0a60f3" -> "sha256:6663574277128c31a5faa4510c330b20b95e473f9d0a1fbb73d30ba0fd02e176" [label=""];
  "sha256:6663574277128c31a5faa4510c330b20b95e473f9d0a1fbb73d30ba0fd02e176" -> "sha256:dcd648f3333619dc6836a9f04b7c0d4533366cdc1dad7c124316b548113e0c6b" [label=""];
  "sha256:761206f9e584371d7d259a1969de2f854baba19359ea09b1c47190640f0a60f3" -> "sha256:dcd648f3333619dc6836a9f04b7c0d4533366cdc1dad7c124316b548113e0c6b" [label=""];
  "sha256:dcd648f3333619dc6836a9f04b7c0d4533366cdc1dad7c124316b548113e0c6b" -> "sha256:b3c9fa95a58072d1ccfa4f993116781e319aead3d4f2040bcd7394cea9f7cb35" [label=""];
  "sha256:761206f9e584371d7d259a1969de2f854baba19359ea09b1c47190640f0a60f3" -> "sha256:b3c9fa95a58072d1ccfa4f993116781e319aead3d4f2040bcd7394cea9f7cb35" [label=""];
  "sha256:b3c9fa95a58072d1ccfa4f993116781e319aead3d4f2040bcd7394cea9f7cb35" -> "sha256:e1a912b8e0cbca69f52797e5a3c66944adfcfd31e014fc9b3c74688a01d7eed4" [label=""];
}

