[app/sources/134131614.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:7e765b8be88f4dbfe240d64591d9194a2387b44c8d55a46d77f841ff8aab0616" [label="/bin/sh -c apt-get update && apt-get install -y   bc   cmake   curl   gcc-4.6   g++-4.6   gcc-4.6-multilib   g++-4.6-multilib   gfortran   git   libprotobuf-dev   libleveldb-dev   libsnappy-dev   libopencv-dev   libboost-all-dev   libhdf5-serial-dev   liblmdb-dev   libjpeg62   libfreeimage-dev   libatlas-base-dev   pkgconf   protobuf-compiler   python-dev   python-pip   unzip   wget" shape="box"];
  "sha256:1dedcf9a8680e2eb6abe626129e35bc531bbe7e62cf11c001386896d0bfae186" [label="/bin/sh -c update-alternatives --install /usr/bin/cc cc /usr/bin/gcc-4.6 30 &&   update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++-4.6 30 &&   update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.6 30 &&   update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-4.6 30" shape="box"];
  "sha256:cf7034e81ce0f0f89bdd1c5c3b7f3dac6ad902a30e5c640a2c3a3654892cc042" [label="/bin/sh -c cd /opt && git clone https://github.com/BVLC/caffe.git" shape="box"];
  "sha256:757c62bbf36067477b81c0cd5a3b593d8703b08225071056aba61d5791f7c763" [label="/bin/sh -c cd /opt && wget https://google-glog.googlecode.com/files/glog-0.3.3.tar.gz &&   tar zxvf glog-0.3.3.tar.gz &&   cd /opt/glog-0.3.3 &&   ./configure &&   make &&   make install" shape="box"];
  "sha256:c0b4b211575883bc497712becef2d0cba6ae0e2483244cf2680c06a8c9b661fb" [label="/bin/sh -c ldconfig" shape="box"];
  "sha256:a0041c3b4e30e7a0aad9b1eb933d7750a877a227e7d8f12b7600ef83df739c6f" [label="/bin/sh -c cd /opt &&   wget https://github.com/schuhschuh/gflags/archive/master.zip &&   unzip master.zip &&   cd /opt/gflags-master &&   mkdir build &&   cd /opt/gflags-master/build &&   export CXXFLAGS=\"-fPIC\" &&   cmake .. &&   make VERBOSE=1 &&   make &&   make install" shape="box"];
  "sha256:385f7657170c2e72d546a44b2a74ed2af7109173a714af667c9e8d86f7f3d5db" [label="/bin/sh -c cd /opt/caffe &&   cp Makefile.config.example Makefile.config &&    echo \"CPU_ONLY := 1\" >> Makefile.config &&   echo \"CXX := /usr/bin/g++-4.6\" >> Makefile.config &&   sed -i 's/CXX :=/CXX ?=/' Makefile &&   make all" shape="box"];
  "sha256:828ca3db2963300794df9caaf3d8dd8188a5084c470ee0bdf394ce27d082ba92" [label="local://context" shape="ellipse"];
  "sha256:540890bbdc57927c345b29add93e57e525a71f7904aa399490434b7916aabe21" [label="copy{src=/caffe-ld-so.conf, dest=/etc/ld.so.conf.d/}" shape="note"];
  "sha256:ed8b71b9bcfc30ec87866cb879bff79497fb1a832fd8a30f164fb46b7b5028b9" [label="/bin/sh -c ldconfig" shape="box"];
  "sha256:95e8c39b45a209e971af1623b972aea9774674aa1dd0d575710506d9e8b6856e" [label="/bin/sh -c cd /opt/caffe &&   cat python/requirements.txt | xargs -L 1 sudo pip install" shape="box"];
  "sha256:1b26417f0c9aecf669db57deda932b00d1c1a8596b8a58e86a3e371f93136a01" [label="/bin/sh -c ln -s /usr/include/python2.7/ /usr/local/include/python2.7 &&   ln -s /usr/local/lib/python2.7/dist-packages/numpy/core/include/numpy/ /usr/local/include/python2.7/numpy" shape="box"];
  "sha256:6ed27a59a28105600352be8ac2e5dd85dfb90d997d72149f8219e42f59de581d" [label="/bin/sh -c cd /opt/caffe && make pycaffe" shape="box"];
  "sha256:993e293b675c81f674cd48cb950fb464cd33be5820d87a5eab1c83423953edac" [label="/bin/sh -c cd /opt/caffe && make test && make runtest" shape="box"];
  "sha256:606ea18f6ee82448c4cc17e473b82ebabfe0363175a0c75f7df5ac9171b765ac" [label="sha256:606ea18f6ee82448c4cc17e473b82ebabfe0363175a0c75f7df5ac9171b765ac" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:7e765b8be88f4dbfe240d64591d9194a2387b44c8d55a46d77f841ff8aab0616" [label=""];
  "sha256:7e765b8be88f4dbfe240d64591d9194a2387b44c8d55a46d77f841ff8aab0616" -> "sha256:1dedcf9a8680e2eb6abe626129e35bc531bbe7e62cf11c001386896d0bfae186" [label=""];
  "sha256:1dedcf9a8680e2eb6abe626129e35bc531bbe7e62cf11c001386896d0bfae186" -> "sha256:cf7034e81ce0f0f89bdd1c5c3b7f3dac6ad902a30e5c640a2c3a3654892cc042" [label=""];
  "sha256:cf7034e81ce0f0f89bdd1c5c3b7f3dac6ad902a30e5c640a2c3a3654892cc042" -> "sha256:757c62bbf36067477b81c0cd5a3b593d8703b08225071056aba61d5791f7c763" [label=""];
  "sha256:757c62bbf36067477b81c0cd5a3b593d8703b08225071056aba61d5791f7c763" -> "sha256:c0b4b211575883bc497712becef2d0cba6ae0e2483244cf2680c06a8c9b661fb" [label=""];
  "sha256:c0b4b211575883bc497712becef2d0cba6ae0e2483244cf2680c06a8c9b661fb" -> "sha256:a0041c3b4e30e7a0aad9b1eb933d7750a877a227e7d8f12b7600ef83df739c6f" [label=""];
  "sha256:a0041c3b4e30e7a0aad9b1eb933d7750a877a227e7d8f12b7600ef83df739c6f" -> "sha256:385f7657170c2e72d546a44b2a74ed2af7109173a714af667c9e8d86f7f3d5db" [label=""];
  "sha256:385f7657170c2e72d546a44b2a74ed2af7109173a714af667c9e8d86f7f3d5db" -> "sha256:540890bbdc57927c345b29add93e57e525a71f7904aa399490434b7916aabe21" [label=""];
  "sha256:828ca3db2963300794df9caaf3d8dd8188a5084c470ee0bdf394ce27d082ba92" -> "sha256:540890bbdc57927c345b29add93e57e525a71f7904aa399490434b7916aabe21" [label=""];
  "sha256:540890bbdc57927c345b29add93e57e525a71f7904aa399490434b7916aabe21" -> "sha256:ed8b71b9bcfc30ec87866cb879bff79497fb1a832fd8a30f164fb46b7b5028b9" [label=""];
  "sha256:ed8b71b9bcfc30ec87866cb879bff79497fb1a832fd8a30f164fb46b7b5028b9" -> "sha256:95e8c39b45a209e971af1623b972aea9774674aa1dd0d575710506d9e8b6856e" [label=""];
  "sha256:95e8c39b45a209e971af1623b972aea9774674aa1dd0d575710506d9e8b6856e" -> "sha256:1b26417f0c9aecf669db57deda932b00d1c1a8596b8a58e86a3e371f93136a01" [label=""];
  "sha256:1b26417f0c9aecf669db57deda932b00d1c1a8596b8a58e86a3e371f93136a01" -> "sha256:6ed27a59a28105600352be8ac2e5dd85dfb90d997d72149f8219e42f59de581d" [label=""];
  "sha256:6ed27a59a28105600352be8ac2e5dd85dfb90d997d72149f8219e42f59de581d" -> "sha256:993e293b675c81f674cd48cb950fb464cd33be5820d87a5eab1c83423953edac" [label=""];
  "sha256:993e293b675c81f674cd48cb950fb464cd33be5820d87a5eab1c83423953edac" -> "sha256:606ea18f6ee82448c4cc17e473b82ebabfe0363175a0c75f7df5ac9171b765ac" [label=""];
}

