[app/sources/277376917.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:bd767a3923250de078350f32d820770e9c78cf66be2e97b5cf3d17a518cea9b5" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \tsudo         build-essential         cmake         git         wget \tcurl         libatlas-base-dev         libboost-all-dev         libgflags-dev         libgoogle-glog-dev         libhdf5-serial-dev         libleveldb-dev         liblmdb-dev         libopencv-dev         libprotobuf-dev         libsnappy-dev         protobuf-compiler         python-dev         python-numpy         python-pip         python-setuptools         python-scipy &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:42b680109f8e2ab5f3aa27160533ba6ef9bc68cf2a8bc0f4c88a88775faa23b4" [label="/bin/sh -c apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install gcc g++ gfortran wget cpio &&   cd /tmp &&   wget -q http://registrationcenter-download.intel.com/akdlm/irc_nas/tec/12070/l_mkl_2018.0.128.tgz &&   tar -xzf l_mkl_2018.0.128.tgz &&   cd l_mkl_2018.0.128 &&   sed -i 's/ACCEPT_EULA=decline/ACCEPT_EULA=accept/g' silent.cfg &&   sed -i 's/ARCH_SELECTED=ALL/ARCH_SELECTED=INTEL64/g' silent.cfg &&   sed -i 's/COMPONENTS=DEFAULTS/COMPONENTS=;intel-comp-l-all-vars__noarch;intel-comp-nomcu-vars__noarch;intel-openmp__x86_64;intel-tbb-libs__x86_64;intel-mkl-common__noarch;intel-mkl-installer-license__noarch;intel-mkl-core__x86_64;intel-mkl-core-rt__x86_64;intel-mkl-doc__noarch;intel-mkl-doc-ps__noarch;intel-mkl-gnu__x86_64;intel-mkl-gnu-rt__x86_64;intel-mkl-common-ps__noarch;intel-mkl-core-ps__x86_64;intel-mkl-common-c__noarch;intel-mkl-core-c__x86_64;intel-mkl-common-c-ps__noarch;intel-mkl-tbb__x86_64;intel-mkl-tbb-rt__x86_64;intel-mkl-gnu-c__x86_64;intel-mkl-common-f__noarch;intel-mkl-core-f__x86_64;intel-mkl-gnu-f-rt__x86_64;intel-mkl-gnu-f__x86_64;intel-mkl-f95-common__noarch;intel-mkl-f__x86_64;intel-mkl-psxe__noarch;intel-psxe-common__noarch;intel-psxe-common-doc__noarch;intel-compxe-pset/g' silent.cfg &&   ./install.sh -s silent.cfg &&   cd .. && rm -rf * &&   rm -rf /opt/intel/.*.log /opt/intel/compilers_and_libraries_2018.0.128/licensing &&   echo \"/opt/intel/mkl/lib/intel64\" >> /etc/ld.so.conf.d/intel.conf &&   ldconfig &&   echo \"source /opt/intel/mkl/bin/mklvars.sh intel64\" >> /etc/bash.bashrc" shape="box"];
  "sha256:b0075bdafed8fdac203e068175700da46b18942819ddc74b6126f3b7a483d09a" [label="mkdir{path=/opt/caffe}" shape="note"];
  "sha256:f9315b0afe4284ce744cb87c169a1ca55a75219a259f54781f87ac86f24d27dc" [label="/bin/sh -c git clone -b ${CLONE_TAG} --depth 1 https://github.com/BVLC/caffe.git . &&     pip install --upgrade pip &&     cd python && for req in $(cat requirements.txt) pydot; do pip install $req; done && cd .. &&     mkdir build && cd build &&     cmake -DCMAKE_BUILD_TYPE=Release -DCPU_ONLY=1 -DBLAS=MKL .. &&     make -j\"$(nproc)\"" shape="box"];
  "sha256:2c86ae1a76f3e2a90fdd17661f53d44819ef3b40b413a0f7676081c455b95cd6" [label="/bin/sh -c echo \"$CAFFE_ROOT/build/lib\" >> /etc/ld.so.conf.d/caffe.conf && ldconfig" shape="box"];
  "sha256:47e588282ac9a39ec34ad69cc5a4575d89c9ad00afbbfcaf7a9bb9b046922955" [label="/bin/sh -c pip install tqdm" shape="box"];
  "sha256:dcd9f813c1ca36d4c31d968bb667f465b970daffdf33b15c591ece0603ab8f53" [label="sha256:dcd9f813c1ca36d4c31d968bb667f465b970daffdf33b15c591ece0603ab8f53" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:bd767a3923250de078350f32d820770e9c78cf66be2e97b5cf3d17a518cea9b5" [label=""];
  "sha256:bd767a3923250de078350f32d820770e9c78cf66be2e97b5cf3d17a518cea9b5" -> "sha256:42b680109f8e2ab5f3aa27160533ba6ef9bc68cf2a8bc0f4c88a88775faa23b4" [label=""];
  "sha256:42b680109f8e2ab5f3aa27160533ba6ef9bc68cf2a8bc0f4c88a88775faa23b4" -> "sha256:b0075bdafed8fdac203e068175700da46b18942819ddc74b6126f3b7a483d09a" [label=""];
  "sha256:b0075bdafed8fdac203e068175700da46b18942819ddc74b6126f3b7a483d09a" -> "sha256:f9315b0afe4284ce744cb87c169a1ca55a75219a259f54781f87ac86f24d27dc" [label=""];
  "sha256:f9315b0afe4284ce744cb87c169a1ca55a75219a259f54781f87ac86f24d27dc" -> "sha256:2c86ae1a76f3e2a90fdd17661f53d44819ef3b40b413a0f7676081c455b95cd6" [label=""];
  "sha256:2c86ae1a76f3e2a90fdd17661f53d44819ef3b40b413a0f7676081c455b95cd6" -> "sha256:47e588282ac9a39ec34ad69cc5a4575d89c9ad00afbbfcaf7a9bb9b046922955" [label=""];
  "sha256:47e588282ac9a39ec34ad69cc5a4575d89c9ad00afbbfcaf7a9bb9b046922955" -> "sha256:dcd9f813c1ca36d4c31d968bb667f465b970daffdf33b15c591ece0603ab8f53" [label=""];
}
