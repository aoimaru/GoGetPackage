[app/sources/310722573.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:5ba8d43b9cd813c670abc0af82a94ac3e87381244c50aba3546dc96e1af12c82" [label="/bin/sh -c apt-get update && apt-get install -y python3.5 python3-pip git" shape="box"];
  "sha256:684065853cbc1386e68285e34399cb7009cdd2ed2c30558f40d4fabac02120e3" [label="/bin/sh -c apt-get install -y build-essential cmake" shape="box"];
  "sha256:8bc14e1765cffd31eb26123820fd031ac1f9f77594a8f051aa83bfc711045eaa" [label="/bin/sh -c apt-get install -y qt5-default libvtk6-dev" shape="box"];
  "sha256:b3bd99971015246742e557c357cb1f9e107718fc7d1b250f2c1db2762632d338" [label="/bin/sh -c apt-get install -y zlib1g-dev libjpeg-dev libwebp-dev libpng-dev libtiff5-dev libjasper-dev libopenexr-dev libgdal-dev" shape="box"];
  "sha256:5d64bb3939b969e273e5a386fea14ea1288a5a2b66a3a7a029db0ef37ccd144b" [label="/bin/sh -c apt-get install -y libdc1394-22-dev libavcodec-dev libavformat-dev libswscale-dev libtheora-dev libvorbis-dev libxvidcore-dev libx264-dev yasm libopencore-amrnb-dev libopencore-amrwb-dev libv4l-dev libxine2-dev" shape="box"];
  "sha256:e583489681940a95f4b8c6cfc6f26a5f681986413efc8a33e4a295eb0b6ec4f2" [label="/bin/sh -c apt-get install -y python-dev python-tk python-numpy python3-dev python3-tk python3-numpy" shape="box"];
  "sha256:58af83d0b4d3ff268076f5a1a563fa7b229dde91e1639ef930be264eb612c20c" [label="/bin/sh -c apt-get install -y unzip wget" shape="box"];
  "sha256:52a7987f9624fd5103ef1a66d274a4ea07fb1b5c748fd1c5355693a7d81ad3dc" [label="/bin/sh -c wget https://github.com/opencv/opencv/archive/3.4.0.zip" shape="box"];
  "sha256:7771763856335641541ff0077caf00ae7f420515c4226fc3c94cef45715f511f" [label="/bin/sh -c unzip 3.4.0.zip" shape="box"];
  "sha256:29fe5707cfbc6ef50dfe76213f25c7c992745ed6666b86c1e69d8558cbba0202" [label="/bin/sh -c rm 3.4.0.zip" shape="box"];
  "sha256:6110d2afb16ca42e2ef90a0ae45e75857b696e03485a4a933667852db9a4a048" [label="mkdir{path=/opencv-3.4.0}" shape="note"];
  "sha256:306add488026fd43ad263f7930aa5a132c04e37da9cc68d387beb808d4e78818" [label="/bin/sh -c mkdir build" shape="box"];
  "sha256:a9f55fd0a5fe3f58468e7eaa0f0c22fc34d2cee793a71c69ad49268cb3d47251" [label="mkdir{path=/opencv-3.4.0/build}" shape="note"];
  "sha256:63628b61c39b89fbc45ff560ef4ce5328e2634122bdadd7d06cfe47628ad3389" [label="/bin/sh -c cmake -DBUILD_EXAMPLES=OFF .." shape="box"];
  "sha256:90a836c78da7cb86c7f3ab2c42fddee2473b90a0311073adc1866d3c8b9c2a5a" [label="/bin/sh -c make -j4" shape="box"];
  "sha256:2262806aa8226da18d450a2b24c0ef91c94b3270ef7984c9033915d4079ef95d" [label="/bin/sh -c make install" shape="box"];
  "sha256:42ff78e1383da5597af5a7c651ab8edba939b25103acbd7617105317359051c8" [label="/bin/sh -c ldconfig" shape="box"];
  "sha256:2dedc72566fb8933b6f98dca267d52dba02cc3b2406ca7ad3ac64f1e621a78c3" [label="/bin/sh -c apt-get install -y git" shape="box"];
  "sha256:9df0bc8eec36eac83abafa08285ecdf1b318d8903ac258cadde521e2f9243789" [label="/bin/sh -c git clone https://github.com/pjreddie/darknet.git" shape="box"];
  "sha256:ecf4816eed79a7c046fd9831ccc3346813b98661674830037e9493a87e6a52b3" [label="mkdir{path=/darknet}" shape="note"];
  "sha256:cfdc992e2264f195beaff5f15f91e749e98ea46af58b01b28f90bee484ff199f" [label="/bin/sh -c sed -i '/OPENCV=0/c\\OPENCV=1' Makefile" shape="box"];
  "sha256:5de5a42ab4a76b05731c688b832359c6dbe6f665ae6155de469036b33c2b5cd9" [label="/bin/sh -c make" shape="box"];
  "sha256:4bf570987d36eb3a8ee33ce743fd670a2515a4b8d5ea48023a3425b14d025d68" [label="/bin/sh -c git clone https://github.com/madhawav/YOLO3-4-Py.git" shape="box"];
  "sha256:59f8e8bbd7ec4a7fe82e9c3939932547a00837d2d6db147f283ee5c97e70a9bc" [label="mkdir{path=/YOLO3-4-Py}" shape="note"];
  "sha256:3ec581727cceb768d56fd2958b105e97d0c949c7bdde99141cb276d2af708a0b" [label="/bin/sh -c pip3 install pkgconfig" shape="box"];
  "sha256:c4a8233db089b18e1eb6ba15763f3747d12e121fe9d23a2b6c94828c91e31886" [label="/bin/sh -c pip3 install cython" shape="box"];
  "sha256:389277bd9c3d1e361a3840d6244c5b19312c83b105d5df36487b3960807e611d" [label="/bin/sh -c python3 setup.py build_ext --inplace" shape="box"];
  "sha256:4863da197107c6eabd963c71e6e3d76cae83964705a3dfd71c659d9131ed9ed0" [label="/bin/sh -c sh download_models.sh" shape="box"];
  "sha256:cbfbd150e669354a5575749f0a4cdd16a2f31472ddb35842ae1539d64c49c49e" [label="local://context" shape="ellipse"];
  "sha256:e90235d3993531d6e8e25ca8e093ec1bacb005b362e04146135da42c11af3e8d" [label="copy{src=/docker_demo.py, dest=/YOLO3-4-Py/docker_demo.py}" shape="note"];
  "sha256:7eae7ae9d08fac172efffbbd659a99b65154951c2a5975bc33054fb7f8aebdf8" [label="sha256:7eae7ae9d08fac172efffbbd659a99b65154951c2a5975bc33054fb7f8aebdf8" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:5ba8d43b9cd813c670abc0af82a94ac3e87381244c50aba3546dc96e1af12c82" [label=""];
  "sha256:5ba8d43b9cd813c670abc0af82a94ac3e87381244c50aba3546dc96e1af12c82" -> "sha256:684065853cbc1386e68285e34399cb7009cdd2ed2c30558f40d4fabac02120e3" [label=""];
  "sha256:684065853cbc1386e68285e34399cb7009cdd2ed2c30558f40d4fabac02120e3" -> "sha256:8bc14e1765cffd31eb26123820fd031ac1f9f77594a8f051aa83bfc711045eaa" [label=""];
  "sha256:8bc14e1765cffd31eb26123820fd031ac1f9f77594a8f051aa83bfc711045eaa" -> "sha256:b3bd99971015246742e557c357cb1f9e107718fc7d1b250f2c1db2762632d338" [label=""];
  "sha256:b3bd99971015246742e557c357cb1f9e107718fc7d1b250f2c1db2762632d338" -> "sha256:5d64bb3939b969e273e5a386fea14ea1288a5a2b66a3a7a029db0ef37ccd144b" [label=""];
  "sha256:5d64bb3939b969e273e5a386fea14ea1288a5a2b66a3a7a029db0ef37ccd144b" -> "sha256:e583489681940a95f4b8c6cfc6f26a5f681986413efc8a33e4a295eb0b6ec4f2" [label=""];
  "sha256:e583489681940a95f4b8c6cfc6f26a5f681986413efc8a33e4a295eb0b6ec4f2" -> "sha256:58af83d0b4d3ff268076f5a1a563fa7b229dde91e1639ef930be264eb612c20c" [label=""];
  "sha256:58af83d0b4d3ff268076f5a1a563fa7b229dde91e1639ef930be264eb612c20c" -> "sha256:52a7987f9624fd5103ef1a66d274a4ea07fb1b5c748fd1c5355693a7d81ad3dc" [label=""];
  "sha256:52a7987f9624fd5103ef1a66d274a4ea07fb1b5c748fd1c5355693a7d81ad3dc" -> "sha256:7771763856335641541ff0077caf00ae7f420515c4226fc3c94cef45715f511f" [label=""];
  "sha256:7771763856335641541ff0077caf00ae7f420515c4226fc3c94cef45715f511f" -> "sha256:29fe5707cfbc6ef50dfe76213f25c7c992745ed6666b86c1e69d8558cbba0202" [label=""];
  "sha256:29fe5707cfbc6ef50dfe76213f25c7c992745ed6666b86c1e69d8558cbba0202" -> "sha256:6110d2afb16ca42e2ef90a0ae45e75857b696e03485a4a933667852db9a4a048" [label=""];
  "sha256:6110d2afb16ca42e2ef90a0ae45e75857b696e03485a4a933667852db9a4a048" -> "sha256:306add488026fd43ad263f7930aa5a132c04e37da9cc68d387beb808d4e78818" [label=""];
  "sha256:306add488026fd43ad263f7930aa5a132c04e37da9cc68d387beb808d4e78818" -> "sha256:a9f55fd0a5fe3f58468e7eaa0f0c22fc34d2cee793a71c69ad49268cb3d47251" [label=""];
  "sha256:a9f55fd0a5fe3f58468e7eaa0f0c22fc34d2cee793a71c69ad49268cb3d47251" -> "sha256:63628b61c39b89fbc45ff560ef4ce5328e2634122bdadd7d06cfe47628ad3389" [label=""];
  "sha256:63628b61c39b89fbc45ff560ef4ce5328e2634122bdadd7d06cfe47628ad3389" -> "sha256:90a836c78da7cb86c7f3ab2c42fddee2473b90a0311073adc1866d3c8b9c2a5a" [label=""];
  "sha256:90a836c78da7cb86c7f3ab2c42fddee2473b90a0311073adc1866d3c8b9c2a5a" -> "sha256:2262806aa8226da18d450a2b24c0ef91c94b3270ef7984c9033915d4079ef95d" [label=""];
  "sha256:2262806aa8226da18d450a2b24c0ef91c94b3270ef7984c9033915d4079ef95d" -> "sha256:42ff78e1383da5597af5a7c651ab8edba939b25103acbd7617105317359051c8" [label=""];
  "sha256:42ff78e1383da5597af5a7c651ab8edba939b25103acbd7617105317359051c8" -> "sha256:2dedc72566fb8933b6f98dca267d52dba02cc3b2406ca7ad3ac64f1e621a78c3" [label=""];
  "sha256:2dedc72566fb8933b6f98dca267d52dba02cc3b2406ca7ad3ac64f1e621a78c3" -> "sha256:9df0bc8eec36eac83abafa08285ecdf1b318d8903ac258cadde521e2f9243789" [label=""];
  "sha256:9df0bc8eec36eac83abafa08285ecdf1b318d8903ac258cadde521e2f9243789" -> "sha256:ecf4816eed79a7c046fd9831ccc3346813b98661674830037e9493a87e6a52b3" [label=""];
  "sha256:ecf4816eed79a7c046fd9831ccc3346813b98661674830037e9493a87e6a52b3" -> "sha256:cfdc992e2264f195beaff5f15f91e749e98ea46af58b01b28f90bee484ff199f" [label=""];
  "sha256:cfdc992e2264f195beaff5f15f91e749e98ea46af58b01b28f90bee484ff199f" -> "sha256:5de5a42ab4a76b05731c688b832359c6dbe6f665ae6155de469036b33c2b5cd9" [label=""];
  "sha256:5de5a42ab4a76b05731c688b832359c6dbe6f665ae6155de469036b33c2b5cd9" -> "sha256:4bf570987d36eb3a8ee33ce743fd670a2515a4b8d5ea48023a3425b14d025d68" [label=""];
  "sha256:4bf570987d36eb3a8ee33ce743fd670a2515a4b8d5ea48023a3425b14d025d68" -> "sha256:59f8e8bbd7ec4a7fe82e9c3939932547a00837d2d6db147f283ee5c97e70a9bc" [label=""];
  "sha256:59f8e8bbd7ec4a7fe82e9c3939932547a00837d2d6db147f283ee5c97e70a9bc" -> "sha256:3ec581727cceb768d56fd2958b105e97d0c949c7bdde99141cb276d2af708a0b" [label=""];
  "sha256:3ec581727cceb768d56fd2958b105e97d0c949c7bdde99141cb276d2af708a0b" -> "sha256:c4a8233db089b18e1eb6ba15763f3747d12e121fe9d23a2b6c94828c91e31886" [label=""];
  "sha256:c4a8233db089b18e1eb6ba15763f3747d12e121fe9d23a2b6c94828c91e31886" -> "sha256:389277bd9c3d1e361a3840d6244c5b19312c83b105d5df36487b3960807e611d" [label=""];
  "sha256:389277bd9c3d1e361a3840d6244c5b19312c83b105d5df36487b3960807e611d" -> "sha256:4863da197107c6eabd963c71e6e3d76cae83964705a3dfd71c659d9131ed9ed0" [label=""];
  "sha256:4863da197107c6eabd963c71e6e3d76cae83964705a3dfd71c659d9131ed9ed0" -> "sha256:e90235d3993531d6e8e25ca8e093ec1bacb005b362e04146135da42c11af3e8d" [label=""];
  "sha256:cbfbd150e669354a5575749f0a4cdd16a2f31472ddb35842ae1539d64c49c49e" -> "sha256:e90235d3993531d6e8e25ca8e093ec1bacb005b362e04146135da42c11af3e8d" [label=""];
  "sha256:e90235d3993531d6e8e25ca8e093ec1bacb005b362e04146135da42c11af3e8d" -> "sha256:7eae7ae9d08fac172efffbbd659a99b65154951c2a5975bc33054fb7f8aebdf8" [label=""];
}

