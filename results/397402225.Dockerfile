[app/sources/397402225.Dockerfile]
digraph {
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" [label="docker-image://docker.io/library/fedora:latest" shape="ellipse"];
  "sha256:71068c4b89b49ab3740c5c48b2273dcf6be045f8c66cc6b30a6f1c025322328f" [label="/bin/sh -c dnf install -y python python-pip python-setuptools unzip wget python-eventlet --nogpgcheck &&  pip install --upgrade pip &&  pip install virtualenv" shape="box"];
  "sha256:c6233b9f54490b17ce579432b033bbc1335ace724d4e29e5231e6fe654fb89e5" [label="/bin/sh -c groupadd -r web2py &&  useradd -m -r -g web2py web2py" shape="box"];
  "sha256:26c31769af3c64f61cab0327dd676396ba9426f9b3309645f551a0bafc41c73c" [label="/bin/sh -c virtualenv /home/web2py &&  rm -rf /home/web2py/web2py &&  cd /home/web2py/ &&  rm -f web2py_src.zip &&  wget -c http://web2py.com/examples/static/web2py_src.zip &&  unzip -o web2py_src.zip &&  rm -rf /home/web2py/web2py/applications/examples &&  chmod 755 -R /home/web2py/web2py" shape="box"];
  "sha256:c692359fbf37cb72be297adc711cc488ff2e7b54f4741cd58f3db224361326d4" [label="mkdir{path=/home/web2py/web2py}" shape="note"];
  "sha256:2f578c7e094a392a0ad1707c4ffd6dfd94801d3ac7366e49a634b81a76309d5b" [label="sha256:2f578c7e094a392a0ad1707c4ffd6dfd94801d3ac7366e49a634b81a76309d5b" shape="plaintext"];
  "sha256:a4ade296d93dbfad7b9878c86cb1c387200925abf1f6b0256a27c7bc3d5714b0" -> "sha256:71068c4b89b49ab3740c5c48b2273dcf6be045f8c66cc6b30a6f1c025322328f" [label=""];
  "sha256:71068c4b89b49ab3740c5c48b2273dcf6be045f8c66cc6b30a6f1c025322328f" -> "sha256:c6233b9f54490b17ce579432b033bbc1335ace724d4e29e5231e6fe654fb89e5" [label=""];
  "sha256:c6233b9f54490b17ce579432b033bbc1335ace724d4e29e5231e6fe654fb89e5" -> "sha256:26c31769af3c64f61cab0327dd676396ba9426f9b3309645f551a0bafc41c73c" [label=""];
  "sha256:26c31769af3c64f61cab0327dd676396ba9426f9b3309645f551a0bafc41c73c" -> "sha256:c692359fbf37cb72be297adc711cc488ff2e7b54f4741cd58f3db224361326d4" [label=""];
  "sha256:c692359fbf37cb72be297adc711cc488ff2e7b54f4741cd58f3db224361326d4" -> "sha256:2f578c7e094a392a0ad1707c4ffd6dfd94801d3ac7366e49a634b81a76309d5b" [label=""];
}

