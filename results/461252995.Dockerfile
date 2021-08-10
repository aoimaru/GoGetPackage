[app/sources/461252995.Dockerfile]
digraph {
  "sha256:f35d663e7ec6c9466769b85e1ebcaaaa69f0aff2187ea90f0aa793bcd6c1063a" [label="docker-image://docker.io/nvidia/cuda:8.0-cudnn5-devel-ubuntu16.04" shape="ellipse"];
  "sha256:7ff85d3de97fba3ee988cc57aaf8a1d6abbe06e6d716aedcc2e963ae406cbaab" [label="mkdir{path=/flownet2}" shape="note"];
  "sha256:e330e81f596e4d5fd681aa8c8b4a565e29e3fef485c4f376425ad877893ecdec" [label="local://context" shape="ellipse"];
  "sha256:c4ef4912461c412d6b2c4b7a7ed7e8ef495ebfa69e3976b8cce0696f5febd0e9" [label="copy{src=/FN2_Makefile.config, dest=/flownet2/}" shape="note"];
  "sha256:0271abafaea777f1ae4c4f932ed01e5b977a01afc443a25c3a716b1342219d22" [label="copy{src=/FN2_run-flownet-docker.py, dest=/flownet2/}" shape="note"];
  "sha256:5d62dfd940b686929eb61fe3e88d4ca895ce2d1e3b8d3a61bd0527a2e81b5024" [label="/bin/sh -c apt-get update &&     apt-get install -y --no-install-recommends         module-init-tools         build-essential         ca-certificates         wget         git         libatlas-base-dev         libboost-all-dev         libgflags-dev         libgoogle-glog-dev         libhdf5-serial-dev         libleveldb-dev         liblmdb-dev         libopencv-dev         libprotobuf-dev         libsnappy-dev         protobuf-compiler         python-dev         python-numpy         python-scipy         python-protobuf         python-pillow         python-skimage &&     git clone https://github.com/lmb-freiburg/flownet2 &&     cp ./FN2_Makefile.config ./flownet2/Makefile.config &&     cp ./FN2_run-flownet-docker.py ./flownet2/scripts/run-flownet-docker.py &&     cd flownet2 &&     rm -rf .git &&     cd models &&     bash download-models.sh &&     rm flownet2-models.tar.gz &&     cd .. &&     make -j`nproc` &&     make -j`nproc` pycaffe &&     apt-get remove -y         module-init-tools         build-essential         ca-certificates         git         wget &&     apt-get autoremove -y &&     apt-get autoclean -y &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:decd413d44436466b3ebd95701a7cc73485d0f30415c54c6b4d003c30ff39b57" [label="sha256:decd413d44436466b3ebd95701a7cc73485d0f30415c54c6b4d003c30ff39b57" shape="plaintext"];
  "sha256:f35d663e7ec6c9466769b85e1ebcaaaa69f0aff2187ea90f0aa793bcd6c1063a" -> "sha256:7ff85d3de97fba3ee988cc57aaf8a1d6abbe06e6d716aedcc2e963ae406cbaab" [label=""];
  "sha256:7ff85d3de97fba3ee988cc57aaf8a1d6abbe06e6d716aedcc2e963ae406cbaab" -> "sha256:c4ef4912461c412d6b2c4b7a7ed7e8ef495ebfa69e3976b8cce0696f5febd0e9" [label=""];
  "sha256:e330e81f596e4d5fd681aa8c8b4a565e29e3fef485c4f376425ad877893ecdec" -> "sha256:c4ef4912461c412d6b2c4b7a7ed7e8ef495ebfa69e3976b8cce0696f5febd0e9" [label=""];
  "sha256:c4ef4912461c412d6b2c4b7a7ed7e8ef495ebfa69e3976b8cce0696f5febd0e9" -> "sha256:0271abafaea777f1ae4c4f932ed01e5b977a01afc443a25c3a716b1342219d22" [label=""];
  "sha256:e330e81f596e4d5fd681aa8c8b4a565e29e3fef485c4f376425ad877893ecdec" -> "sha256:0271abafaea777f1ae4c4f932ed01e5b977a01afc443a25c3a716b1342219d22" [label=""];
  "sha256:0271abafaea777f1ae4c4f932ed01e5b977a01afc443a25c3a716b1342219d22" -> "sha256:5d62dfd940b686929eb61fe3e88d4ca895ce2d1e3b8d3a61bd0527a2e81b5024" [label=""];
  "sha256:5d62dfd940b686929eb61fe3e88d4ca895ce2d1e3b8d3a61bd0527a2e81b5024" -> "sha256:decd413d44436466b3ebd95701a7cc73485d0f30415c54c6b4d003c30ff39b57" [label=""];
}

