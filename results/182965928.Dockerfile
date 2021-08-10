[app/sources/182965928.Dockerfile]
digraph {
  "sha256:64718efe1bfae3dec534b0414f066c9eed1bebe9d8fc3999702ad9aeb48e83ca" [label="docker-image://docker.io/jderobot/jderobot:latest" shape="ellipse"];
  "sha256:8e95395cab6bc4c67bffebf2bc595ee5ebe48125b8c919b330ce7dcc0a040ebc" [label="/bin/sh -c apt-get update && apt-get -y  install     wget     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:2001a60954e4917ec304b8a8c093866fa73dd09737b2a9704bb2720bed6ffe0a" [label="/bin/sh -c apt-key adv --keyserver keyserver.ubuntu.com --recv-key 421C365BD9FF1F717815A3895523BAEEB01FA116" shape="box"];
  "sha256:dc474d6bf55408f929539bc25e495aadee69825ebf10c074c28b2522b1d160fa" [label="/bin/sh -c echo \"deb http://packages.ros.org/ros/ubuntu xenial main\" > /etc/apt/sources.list.d/ros-latest.list" shape="box"];
  "sha256:d43c3ef9fa6d95e7e79df2db983b6eb9d4fe183bb58d571d1fe0a4967d466a12" [label="/bin/sh -c sh -c 'echo deb http://zeroc.com/download/apt/ubuntu16.04 stable main > /etc/apt/sources.list.d/zeroc.list'" shape="box"];
  "sha256:2585303b8dec705b7a678105dac52b36bc3ad772f85958e59684dc27f362d638" [label="/bin/sh -c apt-key adv --keyserver keyserver.ubuntu.com --recv 5E6DA83306132997" shape="box"];
  "sha256:4f3e9ddf5f9fd068caa14d4cf2fc7911eb553ee44cce880e57018d6a71551fa9" [label="/bin/sh -c echo \"deb http://packages.osrfoundation.org/gazebo/ubuntu-stable xenial main\" > /etc/apt/sources.list.d/gazebo-stable.list" shape="box"];
  "sha256:0cca5276608fdb302a114692fa0d86c3530cc5f371523726dfbc8ea13cd7b227" [label="/bin/sh -c apt-key adv --keyserver keyserver.ubuntu.com --recv-key 67170598AF249743" shape="box"];
  "sha256:6bdb5d9d7911ce5a079e988e9a080d8ef496283d66451c1cce2ce386f74ef6f2" [label="/bin/sh -c sh -c 'echo \"deb http://jderobot.org/aptest xenial main\" > /etc/apt/sources.list.d/jderobot.list'" shape="box"];
  "sha256:eb8896987e7c91045e0cd1d2d9b117e10f57ff057e06b7c85e09c3e5add6ff56" [label="/bin/sh -c wget -qO - www.jderobot.org/aptest/aptest.key | apt-key add -" shape="box"];
  "sha256:a32ffda6071f408edeaab859bb1ee1e58cd7c00db9c4a71a7c6f77214a2ca471" [label="/bin/sh -c apt-get update && apt-get -y  install --only-upgrade    jderobot-camserver     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3b57bfef35a9e67a7479344d1bdd5e586f090d1d3dddb609caf51dc83632b28a" [label="local://context" shape="ellipse"];
  "sha256:1b932703009968e2152f9a3e78382bf191ea2be57686037a95133c714e8518b1" [label="copy{src=/search_file.sh, dest=/}" shape="note"];
  "sha256:1e4f07777397e80a1a4be48d399ad5a2b3577dde4a72a04830e1c1e9209df3d4" [label="copy{src=/camserver.txt, dest=/}" shape="note"];
  "sha256:b1729f8b3f42cb1de5bca289b2bd197b04a6aa8234af4015afa7e842b4e208f2" [label="/bin/sh -c ./search_file.sh camserver.txt" shape="box"];
  "sha256:3ecab85b4732f01d4ae76ab306508f13622e0e93a7f15d04d72003e25e7b9923" [label="sha256:3ecab85b4732f01d4ae76ab306508f13622e0e93a7f15d04d72003e25e7b9923" shape="plaintext"];
  "sha256:64718efe1bfae3dec534b0414f066c9eed1bebe9d8fc3999702ad9aeb48e83ca" -> "sha256:8e95395cab6bc4c67bffebf2bc595ee5ebe48125b8c919b330ce7dcc0a040ebc" [label=""];
  "sha256:8e95395cab6bc4c67bffebf2bc595ee5ebe48125b8c919b330ce7dcc0a040ebc" -> "sha256:2001a60954e4917ec304b8a8c093866fa73dd09737b2a9704bb2720bed6ffe0a" [label=""];
  "sha256:2001a60954e4917ec304b8a8c093866fa73dd09737b2a9704bb2720bed6ffe0a" -> "sha256:dc474d6bf55408f929539bc25e495aadee69825ebf10c074c28b2522b1d160fa" [label=""];
  "sha256:dc474d6bf55408f929539bc25e495aadee69825ebf10c074c28b2522b1d160fa" -> "sha256:d43c3ef9fa6d95e7e79df2db983b6eb9d4fe183bb58d571d1fe0a4967d466a12" [label=""];
  "sha256:d43c3ef9fa6d95e7e79df2db983b6eb9d4fe183bb58d571d1fe0a4967d466a12" -> "sha256:2585303b8dec705b7a678105dac52b36bc3ad772f85958e59684dc27f362d638" [label=""];
  "sha256:2585303b8dec705b7a678105dac52b36bc3ad772f85958e59684dc27f362d638" -> "sha256:4f3e9ddf5f9fd068caa14d4cf2fc7911eb553ee44cce880e57018d6a71551fa9" [label=""];
  "sha256:4f3e9ddf5f9fd068caa14d4cf2fc7911eb553ee44cce880e57018d6a71551fa9" -> "sha256:0cca5276608fdb302a114692fa0d86c3530cc5f371523726dfbc8ea13cd7b227" [label=""];
  "sha256:0cca5276608fdb302a114692fa0d86c3530cc5f371523726dfbc8ea13cd7b227" -> "sha256:6bdb5d9d7911ce5a079e988e9a080d8ef496283d66451c1cce2ce386f74ef6f2" [label=""];
  "sha256:6bdb5d9d7911ce5a079e988e9a080d8ef496283d66451c1cce2ce386f74ef6f2" -> "sha256:eb8896987e7c91045e0cd1d2d9b117e10f57ff057e06b7c85e09c3e5add6ff56" [label=""];
  "sha256:eb8896987e7c91045e0cd1d2d9b117e10f57ff057e06b7c85e09c3e5add6ff56" -> "sha256:a32ffda6071f408edeaab859bb1ee1e58cd7c00db9c4a71a7c6f77214a2ca471" [label=""];
  "sha256:a32ffda6071f408edeaab859bb1ee1e58cd7c00db9c4a71a7c6f77214a2ca471" -> "sha256:1b932703009968e2152f9a3e78382bf191ea2be57686037a95133c714e8518b1" [label=""];
  "sha256:3b57bfef35a9e67a7479344d1bdd5e586f090d1d3dddb609caf51dc83632b28a" -> "sha256:1b932703009968e2152f9a3e78382bf191ea2be57686037a95133c714e8518b1" [label=""];
  "sha256:1b932703009968e2152f9a3e78382bf191ea2be57686037a95133c714e8518b1" -> "sha256:1e4f07777397e80a1a4be48d399ad5a2b3577dde4a72a04830e1c1e9209df3d4" [label=""];
  "sha256:3b57bfef35a9e67a7479344d1bdd5e586f090d1d3dddb609caf51dc83632b28a" -> "sha256:1e4f07777397e80a1a4be48d399ad5a2b3577dde4a72a04830e1c1e9209df3d4" [label=""];
  "sha256:1e4f07777397e80a1a4be48d399ad5a2b3577dde4a72a04830e1c1e9209df3d4" -> "sha256:b1729f8b3f42cb1de5bca289b2bd197b04a6aa8234af4015afa7e842b4e208f2" [label=""];
  "sha256:b1729f8b3f42cb1de5bca289b2bd197b04a6aa8234af4015afa7e842b4e208f2" -> "sha256:3ecab85b4732f01d4ae76ab306508f13622e0e93a7f15d04d72003e25e7b9923" [label=""];
}

