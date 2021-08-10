[app/sources/199948485.Dockerfile]
digraph {
  "sha256:cd76ec759af16361299de7866461649d314c7e40b90bfb5972d067bb290fce72" [label="docker-image://docker.io/library/debian:testing" shape="ellipse"];
  "sha256:74efb1671d02727bda1b6d366eb6f70787d03349b20bd4f49716a678fc45fa31" [label="/bin/sh -c apt update && apt -y upgrade &&     apt install -y g++ gcc git valgrind default-jdk gfortran libboost-dev libboost-all-dev cmake dpkg-dev &&     mkdir /source/ && cd /source && git clone --depth=1 https://framagit.org/simgrid/simgrid.git simgrid.git &&     cd simgrid.git &&     cmake -DCMAKE_INSTALL_PREFIX=/usr/ -Denable_documentation=OFF -Denable_java=ON -Denable_smpi=ON -Denable_compile_optimizations=ON . &&     make -j4 install &&     mkdir debian/ && touch debian/control && dpkg-shlibdeps --ignore-missing-info lib/*.so -llib/ -O/tmp/deps &&     git reset --hard master && git clean -dfx &&     apt remove -y  g++ gcc git valgrind default-jdk gfortran libboost-dev libboost-all-dev cmake dpkg-dev &&     apt install `sed -e 's/shlibs:Depends=//' -e 's/([^)]*)//g' -e 's/,//g' /tmp/deps` &&     apt autoremove -y && apt autoclean && apt clean" shape="box"];
  "sha256:0d328d67d35caecbdb64d7515908447e941892167f83f65879ba1eec446b8dea" [label="sha256:0d328d67d35caecbdb64d7515908447e941892167f83f65879ba1eec446b8dea" shape="plaintext"];
  "sha256:cd76ec759af16361299de7866461649d314c7e40b90bfb5972d067bb290fce72" -> "sha256:74efb1671d02727bda1b6d366eb6f70787d03349b20bd4f49716a678fc45fa31" [label=""];
  "sha256:74efb1671d02727bda1b6d366eb6f70787d03349b20bd4f49716a678fc45fa31" -> "sha256:0d328d67d35caecbdb64d7515908447e941892167f83f65879ba1eec446b8dea" [label=""];
}

