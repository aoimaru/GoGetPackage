[app/sources/291757856.Dockerfile]
digraph {
  "sha256:209c4934f3ae4e486410245fb2c3892f19f006117516bf0632fcbb0ab12e015e" [label="local://context" shape="ellipse"];
  "sha256:f2bc79a8841d9b054152764da0422f83ee87aeea835c357f2cd9c965319760f2" [label="docker-image://docker.io/nvidia/cuda:8.0-cudnn5-devel" shape="ellipse"];
  "sha256:226b99a017d1d5fec64b5def33fd99dfc84d4952ef01a0c0e0488c6472abd5ae" [label="copy{src=/install/ubuntu_install_core.sh, dest=/install/}" shape="note"];
  "sha256:dde3508309e313d80e45408ca8832993173d8b125f5c9206d30339d228b32daa" [label="/bin/sh -c /install/ubuntu_install_core.sh" shape="box"];
  "sha256:b5a45618dd30319c994b6a6c2e08248223bfe0fe2db681aa64689f34151acf2e" [label="copy{src=/install/ubuntu_install_python.sh, dest=/install/}" shape="note"];
  "sha256:aec2925bc12b494a617f8c2389802fbf1d13a54baadbb9250fb4703c6adabe6a" [label="/bin/sh -c /install/ubuntu_install_python.sh" shape="box"];
  "sha256:95a5bfa484bfec687eecd3dfb8d0e3bb3453d38eba068a02a4f4bbbdf342e221" [label="/bin/sh -c apt-get install -y libprotobuf-dev libleveldb-dev     libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler     libatlas-base-dev python-dev libgflags-dev libgoogle-glog-dev liblmdb-dev     python-numpy python-opencv" shape="box"];
  "sha256:b865f3b1c4abdcac3704c2e70ef960df73fb31f9912ff3a5718bcb6a3637bed6" [label="/bin/sh -c apt-get install -y --no-install-recommends libboost-all-dev" shape="box"];
  "sha256:02cdd4620949b343791ab98f242c023dfd42602f66bb98bc6a9a718b20411b79" [label="/bin/sh -c cd /; git clone http://github.com/BVLC/caffe.git; cd caffe;     cp Makefile.config.example Makefile.config" shape="box"];
  "sha256:3d6dfd5cf01a1e6f2a385caa52704744b045e012da925a9cf733634ed22ce703" [label="/bin/sh -c echo \"CPU_ONLY := 1\" >> /caffe/Makefile.config" shape="box"];
  "sha256:3ac928fe271017e6563c0726a708f4a6946455cdf5dc2ee94ac461770abc2b31" [label="/bin/sh -c echo \"INCLUDE_DIRS += /usr/lib /usr/lib/x86_64-linux-gnu /usr/include/hdf5/serial/ \" >> /caffe/Makefile.config" shape="box"];
  "sha256:b5600f301f3ff6ecd361156eaa940c7f55c7de9cc3aab0f222e78221a3e09d53" [label="/bin/sh -c echo \"LIBRARY_DIRS += /usr/lib /usr/lib/x86_64-linux-gnu /usr/lib/x86_64-linux-gnu/hdf5/serial \" >> /caffe/Makefile.config" shape="box"];
  "sha256:bfe1129eb3d0b5f4a8e3315f1f2d5020a1ddd1c916ce03ae8a87955f54a7552c" [label="/bin/sh -c ln -s /usr/lib/x86_64-linux-gnu/libhdf5_serial.so.10.0.2 /usr/lib/x86_64-linux-gnu/libhdf5.so" shape="box"];
  "sha256:f5b266d68b8051f636b51d0606776fdcb5d2f85713883e3b005f51225753c260" [label="/bin/sh -c ln -s /usr/lib/x86_64-linux-gnu/libhdf5_serial_hl.so.10.0.2 /usr/lib/x86_64-linux-gnu/libhdf5_hl.so" shape="box"];
  "sha256:26313d90d31ade9b7b0fe2eee11207c94057b077cf9eb48d504db315ee77b71e" [label="/bin/sh -c cd caffe; make all pycaffe -j$(nproc)" shape="box"];
  "sha256:728b1baee68ecbf6c4545ca1e1ad9c50adeca41c67974714f11e5c47fc57ff93" [label="/bin/sh -c cd caffe/python; for req in $(cat requirements.txt); do pip2 install $req; done" shape="box"];
  "sha256:7ce2d8581f775f0fb7a7680d6c21ecca6f5a4d551688862c1c547290060b8a25" [label="sha256:7ce2d8581f775f0fb7a7680d6c21ecca6f5a4d551688862c1c547290060b8a25" shape="plaintext"];
  "sha256:f2bc79a8841d9b054152764da0422f83ee87aeea835c357f2cd9c965319760f2" -> "sha256:226b99a017d1d5fec64b5def33fd99dfc84d4952ef01a0c0e0488c6472abd5ae" [label=""];
  "sha256:209c4934f3ae4e486410245fb2c3892f19f006117516bf0632fcbb0ab12e015e" -> "sha256:226b99a017d1d5fec64b5def33fd99dfc84d4952ef01a0c0e0488c6472abd5ae" [label=""];
  "sha256:226b99a017d1d5fec64b5def33fd99dfc84d4952ef01a0c0e0488c6472abd5ae" -> "sha256:dde3508309e313d80e45408ca8832993173d8b125f5c9206d30339d228b32daa" [label=""];
  "sha256:dde3508309e313d80e45408ca8832993173d8b125f5c9206d30339d228b32daa" -> "sha256:b5a45618dd30319c994b6a6c2e08248223bfe0fe2db681aa64689f34151acf2e" [label=""];
  "sha256:209c4934f3ae4e486410245fb2c3892f19f006117516bf0632fcbb0ab12e015e" -> "sha256:b5a45618dd30319c994b6a6c2e08248223bfe0fe2db681aa64689f34151acf2e" [label=""];
  "sha256:b5a45618dd30319c994b6a6c2e08248223bfe0fe2db681aa64689f34151acf2e" -> "sha256:aec2925bc12b494a617f8c2389802fbf1d13a54baadbb9250fb4703c6adabe6a" [label=""];
  "sha256:aec2925bc12b494a617f8c2389802fbf1d13a54baadbb9250fb4703c6adabe6a" -> "sha256:95a5bfa484bfec687eecd3dfb8d0e3bb3453d38eba068a02a4f4bbbdf342e221" [label=""];
  "sha256:95a5bfa484bfec687eecd3dfb8d0e3bb3453d38eba068a02a4f4bbbdf342e221" -> "sha256:b865f3b1c4abdcac3704c2e70ef960df73fb31f9912ff3a5718bcb6a3637bed6" [label=""];
  "sha256:b865f3b1c4abdcac3704c2e70ef960df73fb31f9912ff3a5718bcb6a3637bed6" -> "sha256:02cdd4620949b343791ab98f242c023dfd42602f66bb98bc6a9a718b20411b79" [label=""];
  "sha256:02cdd4620949b343791ab98f242c023dfd42602f66bb98bc6a9a718b20411b79" -> "sha256:3d6dfd5cf01a1e6f2a385caa52704744b045e012da925a9cf733634ed22ce703" [label=""];
  "sha256:3d6dfd5cf01a1e6f2a385caa52704744b045e012da925a9cf733634ed22ce703" -> "sha256:3ac928fe271017e6563c0726a708f4a6946455cdf5dc2ee94ac461770abc2b31" [label=""];
  "sha256:3ac928fe271017e6563c0726a708f4a6946455cdf5dc2ee94ac461770abc2b31" -> "sha256:b5600f301f3ff6ecd361156eaa940c7f55c7de9cc3aab0f222e78221a3e09d53" [label=""];
  "sha256:b5600f301f3ff6ecd361156eaa940c7f55c7de9cc3aab0f222e78221a3e09d53" -> "sha256:bfe1129eb3d0b5f4a8e3315f1f2d5020a1ddd1c916ce03ae8a87955f54a7552c" [label=""];
  "sha256:bfe1129eb3d0b5f4a8e3315f1f2d5020a1ddd1c916ce03ae8a87955f54a7552c" -> "sha256:f5b266d68b8051f636b51d0606776fdcb5d2f85713883e3b005f51225753c260" [label=""];
  "sha256:f5b266d68b8051f636b51d0606776fdcb5d2f85713883e3b005f51225753c260" -> "sha256:26313d90d31ade9b7b0fe2eee11207c94057b077cf9eb48d504db315ee77b71e" [label=""];
  "sha256:26313d90d31ade9b7b0fe2eee11207c94057b077cf9eb48d504db315ee77b71e" -> "sha256:728b1baee68ecbf6c4545ca1e1ad9c50adeca41c67974714f11e5c47fc57ff93" [label=""];
  "sha256:728b1baee68ecbf6c4545ca1e1ad9c50adeca41c67974714f11e5c47fc57ff93" -> "sha256:7ce2d8581f775f0fb7a7680d6c21ecca6f5a4d551688862c1c547290060b8a25" [label=""];
}

