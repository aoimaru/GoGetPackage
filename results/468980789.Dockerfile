[app/sources/468980789.Dockerfile]
digraph {
  "sha256:2b6a41494421b70f08fa280a015c6977c6945475ece0b7bb6c73bc73bde1a435" [label="docker-image://dls.io/dls/custom-gpu-cuda9-base-inner:1.0-latest" shape="ellipse"];
  "sha256:efc88c91ec132a086cd96c71124d31506201d9f74f48c0b7fa7a97a451339033" [label="/bin/sh -c mkdir ~/install && cd ~/install &&   wget $download/dls-release/ubuntu-16.04/third_party/Miniconda/Miniconda2-4.5.1-Linux-x86_64.sh &&   bash Miniconda2-4.5.1-Linux-x86_64.sh -b -p /root/miniconda2 &&   mv ~/.pip/pip.conf ~/.pip/pip.conf~ &&   wget $download/dls-release/ubuntu-16.04/ci-config/pip.conf && mv pip.conf ~/.pip/ &&   wget -r -l1 -nd --reject \"index.html*\" $download/dls-release/ubuntu-16.04/moxing-tf-1.8/latest/ 2>/dev/null &&   pip --no-cache-dir install moxing_framework-*-py2-*.whl &&   pip --no-cache-dir install boto3==1.7.29 numpy==1.15.4 netifaces==0.10.7 pyzmq==17.0.0 &&   rm -rf ~/.pip/pip.conf &&   mv ~/.pip/pip.conf~ ~/.pip/pip.conf &&   rm -rf ~/install" shape="box"];
  "sha256:add5dd12832dd998b3c89b5b0bd3c6084e393e1b06e588e230ff5939c70e60e2" [label="/bin/sh -c rm -f ~/.pip/pip.conf &&   echo \"[global]\" >> ~/.pip/pip.conf &&   echo \"trusted-host=10.93.238.51\" >> ~/.pip/pip.conf &&   echo \"index-url=http://10.93.238.51/pypi/simple/\" >> ~/.pip/pip.conf" shape="box"];
  "sha256:6ec58866824db33519f28e8db0899770b00a86a76dace036542bd85cc20e5cdc" [label="sha256:6ec58866824db33519f28e8db0899770b00a86a76dace036542bd85cc20e5cdc" shape="plaintext"];
  "sha256:2b6a41494421b70f08fa280a015c6977c6945475ece0b7bb6c73bc73bde1a435" -> "sha256:efc88c91ec132a086cd96c71124d31506201d9f74f48c0b7fa7a97a451339033" [label=""];
  "sha256:efc88c91ec132a086cd96c71124d31506201d9f74f48c0b7fa7a97a451339033" -> "sha256:add5dd12832dd998b3c89b5b0bd3c6084e393e1b06e588e230ff5939c70e60e2" [label=""];
  "sha256:add5dd12832dd998b3c89b5b0bd3c6084e393e1b06e588e230ff5939c70e60e2" -> "sha256:6ec58866824db33519f28e8db0899770b00a86a76dace036542bd85cc20e5cdc" [label=""];
}

