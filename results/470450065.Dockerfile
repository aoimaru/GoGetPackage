[app/sources/470450065.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:07e383a92fdccddad5afec41af29bcb977f3f871eb66f9508b122856031891ca" [label="/bin/sh -c apt-get install -y apache2" shape="box"];
  "sha256:5bd8ca1b1babea0f745b9bd5829a20728ff522d120335e204b1e25649a55b1a0" [label="mkdir{path=/mitsuba}" shape="note"];
  "sha256:b9c8a354ab657521db3b335ae19c526312debf06f814202a3b425e884956bae7" [label="/bin/sh -c apt-get install -y \tqt4-dev-tools \tlibpng12-dev \tlibjpeg-dev \tlibilmbase-dev \tlibxerces-c-dev \tlibboost-all-dev \tlibopenexr-dev \tlibglewmx-dev \tlibxxf86vm-dev \tlibpcrecpp0 \tlibeigen3-dev \tlibfftw3-dev \tlibpython3.4" shape="box"];
  "sha256:18f22ab46b1bfd3bcb2ba1445ceafc544b2e8c82f787b2d44892b6c285bc0fec" [label="/bin/sh -c apt-get install -y wget" shape="box"];
  "sha256:5b94b3943a8cb899947a78dbab7ea540a11d9db1d956cf70510fc0f8c1b5a129" [label="/bin/sh -c wget https://www.mitsuba-renderer.org/releases/current/trusty/collada-dom-dev_2.4.0-1_amd64.deb \t&& wget https://www.mitsuba-renderer.org/releases/current/trusty/collada-dom_2.4.0-1_amd64.deb \t&& wget https://www.mitsuba-renderer.org/releases/current/trusty/mitsuba_0.5.0-1_amd64.deb" shape="box"];
  "sha256:9380fbc0f8b4b13f70fea103d0d8694b3932b756480dadc5ef08e5d6840da9cb" [label="/bin/sh -c dpkg --install collada-dom*.deb" shape="box"];
  "sha256:47785f20911a4018949a8114921f0dd043eef25c9756359d1b095c55acc0b74a" [label="/bin/sh -c dpkg --install mitsuba_0.5.0-1_amd64.deb" shape="box"];
  "sha256:1be15e6f08b2f6a0c5f9684b0f9b09b683af2b7c017992e003dca09f79084012" [label="/bin/sh -c apt-get install -y git libav-tools gnuplot build-essential ocl-icd-opencl-dev libglfw-dev freeglut3-dev \tlibboost-all-dev libtbb-dev libgsl0-dev gnuplot libpng-dev zlib1g-dev libopenexr-dev libblas-dev" shape="box"];
  "sha256:fda9ac9b215806f8f97562edd25e146d19fedaf5b2a17ca89070f6f69918239e" [label="/bin/sh -c apt-get install -y \tsoftware-properties-common \t&& add-apt-repository -y ppa:ubuntu-toolchain-r/test \t&& apt-get update \t&& apt-get -y install g++-6 \t&& apt-get install -y gcc-4.8 g++-4.8 \t&& update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 60 --slave /usr/bin/g++ g++ /usr/bin/g++-6 \t&& update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.8 60 --slave /usr/bin/g++ g++ /usr/bin/g++-4.8" shape="box"];
  "sha256:9b5824de786a2025f8dddce1af64e8171c9ecfcf0ee8d224868e6c312943802b" [label="/bin/sh -c apt-get clean \t&& apt-get autoclean \t&& apt-get autoremove" shape="box"];
  "sha256:481d43bb74d1cf7ca2aeb51080fe587d90b3d864dba1cebe8f833118bdd1030e" [label="/bin/sh -c echo \"service apache2 start > /dev/null 2>&1\" > ~/.bash_aliases" shape="box"];
  "sha256:202ab858e99f114b8a1456ba955286ff6afb81ecde1acbc3ef0195f24c3621fb" [label="mkdir{path=/var/www/html}" shape="note"];
  "sha256:767a7297a89cac572b5f81d5072dd8f093a4a41cd66fdb30e1472bb5faf99519" [label="sha256:767a7297a89cac572b5f81d5072dd8f093a4a41cd66fdb30e1472bb5faf99519" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label=""];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" -> "sha256:07e383a92fdccddad5afec41af29bcb977f3f871eb66f9508b122856031891ca" [label=""];
  "sha256:07e383a92fdccddad5afec41af29bcb977f3f871eb66f9508b122856031891ca" -> "sha256:5bd8ca1b1babea0f745b9bd5829a20728ff522d120335e204b1e25649a55b1a0" [label=""];
  "sha256:5bd8ca1b1babea0f745b9bd5829a20728ff522d120335e204b1e25649a55b1a0" -> "sha256:b9c8a354ab657521db3b335ae19c526312debf06f814202a3b425e884956bae7" [label=""];
  "sha256:b9c8a354ab657521db3b335ae19c526312debf06f814202a3b425e884956bae7" -> "sha256:18f22ab46b1bfd3bcb2ba1445ceafc544b2e8c82f787b2d44892b6c285bc0fec" [label=""];
  "sha256:18f22ab46b1bfd3bcb2ba1445ceafc544b2e8c82f787b2d44892b6c285bc0fec" -> "sha256:5b94b3943a8cb899947a78dbab7ea540a11d9db1d956cf70510fc0f8c1b5a129" [label=""];
  "sha256:5b94b3943a8cb899947a78dbab7ea540a11d9db1d956cf70510fc0f8c1b5a129" -> "sha256:9380fbc0f8b4b13f70fea103d0d8694b3932b756480dadc5ef08e5d6840da9cb" [label=""];
  "sha256:9380fbc0f8b4b13f70fea103d0d8694b3932b756480dadc5ef08e5d6840da9cb" -> "sha256:47785f20911a4018949a8114921f0dd043eef25c9756359d1b095c55acc0b74a" [label=""];
  "sha256:47785f20911a4018949a8114921f0dd043eef25c9756359d1b095c55acc0b74a" -> "sha256:1be15e6f08b2f6a0c5f9684b0f9b09b683af2b7c017992e003dca09f79084012" [label=""];
  "sha256:1be15e6f08b2f6a0c5f9684b0f9b09b683af2b7c017992e003dca09f79084012" -> "sha256:fda9ac9b215806f8f97562edd25e146d19fedaf5b2a17ca89070f6f69918239e" [label=""];
  "sha256:fda9ac9b215806f8f97562edd25e146d19fedaf5b2a17ca89070f6f69918239e" -> "sha256:9b5824de786a2025f8dddce1af64e8171c9ecfcf0ee8d224868e6c312943802b" [label=""];
  "sha256:9b5824de786a2025f8dddce1af64e8171c9ecfcf0ee8d224868e6c312943802b" -> "sha256:481d43bb74d1cf7ca2aeb51080fe587d90b3d864dba1cebe8f833118bdd1030e" [label=""];
  "sha256:481d43bb74d1cf7ca2aeb51080fe587d90b3d864dba1cebe8f833118bdd1030e" -> "sha256:202ab858e99f114b8a1456ba955286ff6afb81ecde1acbc3ef0195f24c3621fb" [label=""];
  "sha256:202ab858e99f114b8a1456ba955286ff6afb81ecde1acbc3ef0195f24c3621fb" -> "sha256:767a7297a89cac572b5f81d5072dd8f093a4a41cd66fdb30e1472bb5faf99519" [label=""];
}

