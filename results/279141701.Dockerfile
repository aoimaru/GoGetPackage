[app/sources/279141701.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:01b92236d60b013d3902de8d86ae236b6c2e43323e7e1a38d7d2e9abbab2fc56" [label="local://context" shape="ellipse"];
  "sha256:4c56e89bb1c41cc3bad8ec0551ce73ced5ba66f74bc4051a13e9a8ccd5d5b99d" [label="copy{src=/neo, dest=/root/neo}" shape="note"];
  "sha256:24d846ecf461da3e5689cb00074e208b7cb38b2333bcf1a672cc80c9cad153d7" [label="/bin/sh -c apt-get -y update ; apt-get install -y --allow-unauthenticated gpg;     echo \"deb http://ppa.launchpad.net/ocl-dev/intel-opencl/ubuntu bionic main\" >> /etc/apt/sources.list;     apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C3086B78CC05B8B1;     apt-get -y update ; apt-get install -y --allow-unauthenticated cmake g++-6 git pkg-config ninja-build intel-igc-opencl-dev intel-gmmlib-dev" shape="box"];
  "sha256:cdf263d3458d0c84d2e909068690ce7b2c1753df401fe696c6ef472e2121d62e" [label="/bin/sh -c mkdir /root/build; cd /root/build ; cmake -G Ninja -DBUILD_TYPE=Release -DCMAKE_BUILD_TYPE=Release     -DCMAKE_C_COMPILER=gcc-6 -DCMAKE_CXX_COMPILER=g++-6 ../neo;     ninja -j `nproc`" shape="box"];
  "sha256:3a9a148099fbd217c04d8b38c7e9eff5035307e5ddd2ca31bb7970518661b82e" [label="sha256:3a9a148099fbd217c04d8b38c7e9eff5035307e5ddd2ca31bb7970518661b82e" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:4c56e89bb1c41cc3bad8ec0551ce73ced5ba66f74bc4051a13e9a8ccd5d5b99d" [label=""];
  "sha256:01b92236d60b013d3902de8d86ae236b6c2e43323e7e1a38d7d2e9abbab2fc56" -> "sha256:4c56e89bb1c41cc3bad8ec0551ce73ced5ba66f74bc4051a13e9a8ccd5d5b99d" [label=""];
  "sha256:4c56e89bb1c41cc3bad8ec0551ce73ced5ba66f74bc4051a13e9a8ccd5d5b99d" -> "sha256:24d846ecf461da3e5689cb00074e208b7cb38b2333bcf1a672cc80c9cad153d7" [label=""];
  "sha256:24d846ecf461da3e5689cb00074e208b7cb38b2333bcf1a672cc80c9cad153d7" -> "sha256:cdf263d3458d0c84d2e909068690ce7b2c1753df401fe696c6ef472e2121d62e" [label=""];
  "sha256:cdf263d3458d0c84d2e909068690ce7b2c1753df401fe696c6ef472e2121d62e" -> "sha256:3a9a148099fbd217c04d8b38c7e9eff5035307e5ddd2ca31bb7970518661b82e" [label=""];
}

