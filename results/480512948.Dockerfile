[app/sources/480512948.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:b402dba674f3c9b0c3e8168515d4a91b3a4583d75fb073e2a489a3741a39a1ee" [label="/bin/sh -c apt-get update &&    apt-get install -y build-essential python-dev python-setuptools python-pip     libboost-python-dev libboost-thread-dev wget cmake uuid-dev" shape="box"];
  "sha256:dcf430d20d231d257157462e72c65a6d8cc04872791bbc15a66d8275cf8b840c" [label="/bin/sh -c mkdir /code" shape="box"];
  "sha256:cc8b0b6bf3c0ecffe1b0834f5b7270747a5ef01893482301db44e4c21ff55548" [label="mkdir{path=/code}" shape="note"];
  "sha256:4e6361c1df46766f37bed99b3aa9d8e86ecc6c1ccba75d65b603caff6e18ad1d" [label="/bin/sh -c wget https://github.com/DDMAL/libmei/archive/3.1.0.tar.gz &&    tar xvfz 3.1.0.tar.gz &&    rm 3.1.0.tar.gz &&    mkdir libmei-3.1.0/build" shape="box"];
  "sha256:180cc4f7ccb808d834d412f330602334c0fb87b62bbcb15840188dbb60a840bd" [label="mkdir{path=/code/libmei-3.1.0}" shape="note"];
  "sha256:01f79a801a13ee9ce85fc9aa419fcd7cc9fa60f2a94fe9c47b5615c3b1bec0bb" [label="/bin/sh -c sed -zi 's/if (CMAKE_COMPILER_IS_GNUCXX)\\n    add_definitions( -Werror )\\nendif (CMAKE_COMPILER_IS_GNUCXX)//' CMakeLists.txt" shape="box"];
  "sha256:830c869ccbfcee00384fecb16e0cdb5dd66d210c63db3be4f9d0b19ceb48b520" [label="mkdir{path=/code/libmei-3.1.0/build}" shape="note"];
  "sha256:50952429f523a248fc1032a70e98ddc131c9c5fb804960c40a93559816914b9f" [label="/bin/sh -c cmake .. && make && make install" shape="box"];
  "sha256:cec272c57cd81f3d3ac3dc470ed5eca36c5d098c02af83936f95e38c64df6420" [label="mkdir{path=/code/libmei-3.1.0/python}" shape="note"];
  "sha256:4d3f9b129c22adcd30356bdf7743a4f8445d3b1dc9a5b9b1575c9f62cee3dd8a" [label="/bin/sh -c sed -zi 's/python27-mt/python27/' setup.py &&    sed -zi 's/boost_python-mt-py/boost_python-py/' setup.py" shape="box"];
  "sha256:0374abb50498311d9a76811382ad8685368db46d7e0cbabb1906cabe34e8b974" [label="/bin/sh -c python setup.py build && python setup.py install" shape="box"];
  "sha256:76019a012663c841ad9955c56db71c3c4fd8ec3349ec6d9e8e6393d43c81d062" [label="mkdir{path=/code}" shape="note"];
  "sha256:a34f15f82314d7fc043096312678c03987067f4f6a2f1341206d3b0b03ebdb58" [label="/bin/sh -c wget https://github.com/umd-mith/ema/archive/v1.0.3.tar.gz &&    tar xvfz v1.0.3.tar.gz &&    rm v1.0.3.tar.gz" shape="box"];
  "sha256:0a7b1c4dd251c35021dbd9a9a012eef8a140b90b71f9c07c4ff7de1b7617d370" [label="mkdir{path=/code/ema-1.0.3/Omas}" shape="note"];
  "sha256:39eafa00b5053d11152e5feb7830758faae64c16515fc3c913ee823569d5269b" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:f656949031d82a122b1fae03c101bc64856719964847c9b61f1834db1abd17c6" [label="sha256:f656949031d82a122b1fae03c101bc64856719964847c9b61f1834db1abd17c6" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:b402dba674f3c9b0c3e8168515d4a91b3a4583d75fb073e2a489a3741a39a1ee" [label=""];
  "sha256:b402dba674f3c9b0c3e8168515d4a91b3a4583d75fb073e2a489a3741a39a1ee" -> "sha256:dcf430d20d231d257157462e72c65a6d8cc04872791bbc15a66d8275cf8b840c" [label=""];
  "sha256:dcf430d20d231d257157462e72c65a6d8cc04872791bbc15a66d8275cf8b840c" -> "sha256:cc8b0b6bf3c0ecffe1b0834f5b7270747a5ef01893482301db44e4c21ff55548" [label=""];
  "sha256:cc8b0b6bf3c0ecffe1b0834f5b7270747a5ef01893482301db44e4c21ff55548" -> "sha256:4e6361c1df46766f37bed99b3aa9d8e86ecc6c1ccba75d65b603caff6e18ad1d" [label=""];
  "sha256:4e6361c1df46766f37bed99b3aa9d8e86ecc6c1ccba75d65b603caff6e18ad1d" -> "sha256:180cc4f7ccb808d834d412f330602334c0fb87b62bbcb15840188dbb60a840bd" [label=""];
  "sha256:180cc4f7ccb808d834d412f330602334c0fb87b62bbcb15840188dbb60a840bd" -> "sha256:01f79a801a13ee9ce85fc9aa419fcd7cc9fa60f2a94fe9c47b5615c3b1bec0bb" [label=""];
  "sha256:01f79a801a13ee9ce85fc9aa419fcd7cc9fa60f2a94fe9c47b5615c3b1bec0bb" -> "sha256:830c869ccbfcee00384fecb16e0cdb5dd66d210c63db3be4f9d0b19ceb48b520" [label=""];
  "sha256:830c869ccbfcee00384fecb16e0cdb5dd66d210c63db3be4f9d0b19ceb48b520" -> "sha256:50952429f523a248fc1032a70e98ddc131c9c5fb804960c40a93559816914b9f" [label=""];
  "sha256:50952429f523a248fc1032a70e98ddc131c9c5fb804960c40a93559816914b9f" -> "sha256:cec272c57cd81f3d3ac3dc470ed5eca36c5d098c02af83936f95e38c64df6420" [label=""];
  "sha256:cec272c57cd81f3d3ac3dc470ed5eca36c5d098c02af83936f95e38c64df6420" -> "sha256:4d3f9b129c22adcd30356bdf7743a4f8445d3b1dc9a5b9b1575c9f62cee3dd8a" [label=""];
  "sha256:4d3f9b129c22adcd30356bdf7743a4f8445d3b1dc9a5b9b1575c9f62cee3dd8a" -> "sha256:0374abb50498311d9a76811382ad8685368db46d7e0cbabb1906cabe34e8b974" [label=""];
  "sha256:0374abb50498311d9a76811382ad8685368db46d7e0cbabb1906cabe34e8b974" -> "sha256:76019a012663c841ad9955c56db71c3c4fd8ec3349ec6d9e8e6393d43c81d062" [label=""];
  "sha256:76019a012663c841ad9955c56db71c3c4fd8ec3349ec6d9e8e6393d43c81d062" -> "sha256:a34f15f82314d7fc043096312678c03987067f4f6a2f1341206d3b0b03ebdb58" [label=""];
  "sha256:a34f15f82314d7fc043096312678c03987067f4f6a2f1341206d3b0b03ebdb58" -> "sha256:0a7b1c4dd251c35021dbd9a9a012eef8a140b90b71f9c07c4ff7de1b7617d370" [label=""];
  "sha256:0a7b1c4dd251c35021dbd9a9a012eef8a140b90b71f9c07c4ff7de1b7617d370" -> "sha256:39eafa00b5053d11152e5feb7830758faae64c16515fc3c913ee823569d5269b" [label=""];
  "sha256:39eafa00b5053d11152e5feb7830758faae64c16515fc3c913ee823569d5269b" -> "sha256:f656949031d82a122b1fae03c101bc64856719964847c9b61f1834db1abd17c6" [label=""];
}

