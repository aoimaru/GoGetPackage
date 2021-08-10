[app/sources/359250765.Dockerfile]
digraph {
  "sha256:1e773f26e996f1e9a7869b92d9637db5ab64f8b1021dc2081479442215946bf1" [label="docker-image://docker.io/stimela/base:1.0.1" shape="ellipse"];
  "sha256:11e52a2af422fbcb62a1c0713918ebcf98a5b114c52754e7d47037bb24b9a795" [label="/bin/sh -c docker-apt-install cmake     build-essential     cmake     gfortran     g++     libncurses5-dev     libreadline-dev     flex     bison     libblas-dev     liblapacke-dev     libcfitsio-dev     libgsl-dev     wcslib-dev     libhdf5-serial-dev     libfftw3-dev     python-numpy     libboost-python-dev     libboost-all-dev     libpython2.7-dev     liblog4cplus-dev     libhdf5-dev     casacore-dev     curl" shape="box"];
  "sha256:f27aa250dd7cf7d30352110d16cb1dd849a7c61a429eccba0883aaa7e1f3d5ca" [label="/bin/sh -c curl -o ${CHGCENTRE_NAME}.tar.bz2 ${CHGCENTRE_URL}" shape="box"];
  "sha256:aeb98d11d1469cc970ef91f84a67794f9b8ecc84a73cb8bfb922c61113490838" [label="/bin/sh -c mkdir /builds && tar xjf ${CHGCENTRE_NAME}.tar.bz2 -C /builds" shape="box"];
  "sha256:5ade5a9f26cd95fea4ac11516dd72e8b0310a23a659059e1487257ce8088505d" [label="/bin/sh -c mkdir /builds/chgcentre/build" shape="box"];
  "sha256:5b8f9c863063f08f37a74c26f5ca3cddd472c199153e8fecf706181764aa1214" [label="/bin/sh -c cd /builds/chgcentre/build && cmake ../ -DPORTABLE=True" shape="box"];
  "sha256:7f39a390ff4166c7d45cae337f02eab4d66857abb5f85e6a1797f3524391f03a" [label="/bin/sh -c cd  /builds/chgcentre/build && make" shape="box"];
  "sha256:f363f343786fff26e9a21f2cd03f89a3b78a1561b1f02f6e9c0fd41b60316653" [label="/bin/sh -c cd /builds/chgcentre/build && make install" shape="box"];
  "sha256:c3074b00fe7a8e3adbf7ebde1b9c171337c7c7fef9aa4cd516bc7ca2db5820dc" [label="/bin/sh -c chgcentre" shape="box"];
  "sha256:cb2c1e9fe353c965c7058f29cc2ac26b53883d4ef2ee464f1e65d715977b3cba" [label="sha256:cb2c1e9fe353c965c7058f29cc2ac26b53883d4ef2ee464f1e65d715977b3cba" shape="plaintext"];
  "sha256:1e773f26e996f1e9a7869b92d9637db5ab64f8b1021dc2081479442215946bf1" -> "sha256:11e52a2af422fbcb62a1c0713918ebcf98a5b114c52754e7d47037bb24b9a795" [label=""];
  "sha256:11e52a2af422fbcb62a1c0713918ebcf98a5b114c52754e7d47037bb24b9a795" -> "sha256:f27aa250dd7cf7d30352110d16cb1dd849a7c61a429eccba0883aaa7e1f3d5ca" [label=""];
  "sha256:f27aa250dd7cf7d30352110d16cb1dd849a7c61a429eccba0883aaa7e1f3d5ca" -> "sha256:aeb98d11d1469cc970ef91f84a67794f9b8ecc84a73cb8bfb922c61113490838" [label=""];
  "sha256:aeb98d11d1469cc970ef91f84a67794f9b8ecc84a73cb8bfb922c61113490838" -> "sha256:5ade5a9f26cd95fea4ac11516dd72e8b0310a23a659059e1487257ce8088505d" [label=""];
  "sha256:5ade5a9f26cd95fea4ac11516dd72e8b0310a23a659059e1487257ce8088505d" -> "sha256:5b8f9c863063f08f37a74c26f5ca3cddd472c199153e8fecf706181764aa1214" [label=""];
  "sha256:5b8f9c863063f08f37a74c26f5ca3cddd472c199153e8fecf706181764aa1214" -> "sha256:7f39a390ff4166c7d45cae337f02eab4d66857abb5f85e6a1797f3524391f03a" [label=""];
  "sha256:7f39a390ff4166c7d45cae337f02eab4d66857abb5f85e6a1797f3524391f03a" -> "sha256:f363f343786fff26e9a21f2cd03f89a3b78a1561b1f02f6e9c0fd41b60316653" [label=""];
  "sha256:f363f343786fff26e9a21f2cd03f89a3b78a1561b1f02f6e9c0fd41b60316653" -> "sha256:c3074b00fe7a8e3adbf7ebde1b9c171337c7c7fef9aa4cd516bc7ca2db5820dc" [label=""];
  "sha256:c3074b00fe7a8e3adbf7ebde1b9c171337c7c7fef9aa4cd516bc7ca2db5820dc" -> "sha256:cb2c1e9fe353c965c7058f29cc2ac26b53883d4ef2ee464f1e65d715977b3cba" [label=""];
}

