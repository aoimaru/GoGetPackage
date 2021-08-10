[app/sources/182965934.Dockerfile]
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
  "sha256:6f1a150266b8d56af24b24abecdc58feb26cfea82db62de71f261e9b2fc23bf6" [label="/bin/sh -c apt-get update && apt-get -y  install --only-upgrade    jderobot-camviz     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6bae2dd94e90564a6a18d0594b647c350e5cf706376ec2d30d483c561a48a77d" [label="local://context" shape="ellipse"];
  "sha256:1e6b6616fe62a6a1b40c17f14000b25bd0bc1bafa825cc2c9e61f829c49615a9" [label="copy{src=/search_file.sh, dest=/}" shape="note"];
  "sha256:b81365683d006ef43029fad80dea16e138fa13947ec8164006c56b2de52f92e8" [label="copy{src=/files.txt, dest=/}" shape="note"];
  "sha256:2a17031125f464e4e1c2670070787c3c2de8412c744e935682bfc2d2ed564be5" [label="/bin/sh -c ./search_file.sh files.txt" shape="box"];
  "sha256:d5f6fcfe04306d94da4232e5468eab5e6ed391f0c24755a2296e1a5e46421fc9" [label="sha256:d5f6fcfe04306d94da4232e5468eab5e6ed391f0c24755a2296e1a5e46421fc9" shape="plaintext"];
  "sha256:64718efe1bfae3dec534b0414f066c9eed1bebe9d8fc3999702ad9aeb48e83ca" -> "sha256:8e95395cab6bc4c67bffebf2bc595ee5ebe48125b8c919b330ce7dcc0a040ebc" [label=""];
  "sha256:8e95395cab6bc4c67bffebf2bc595ee5ebe48125b8c919b330ce7dcc0a040ebc" -> "sha256:2001a60954e4917ec304b8a8c093866fa73dd09737b2a9704bb2720bed6ffe0a" [label=""];
  "sha256:2001a60954e4917ec304b8a8c093866fa73dd09737b2a9704bb2720bed6ffe0a" -> "sha256:dc474d6bf55408f929539bc25e495aadee69825ebf10c074c28b2522b1d160fa" [label=""];
  "sha256:dc474d6bf55408f929539bc25e495aadee69825ebf10c074c28b2522b1d160fa" -> "sha256:d43c3ef9fa6d95e7e79df2db983b6eb9d4fe183bb58d571d1fe0a4967d466a12" [label=""];
  "sha256:d43c3ef9fa6d95e7e79df2db983b6eb9d4fe183bb58d571d1fe0a4967d466a12" -> "sha256:2585303b8dec705b7a678105dac52b36bc3ad772f85958e59684dc27f362d638" [label=""];
  "sha256:2585303b8dec705b7a678105dac52b36bc3ad772f85958e59684dc27f362d638" -> "sha256:4f3e9ddf5f9fd068caa14d4cf2fc7911eb553ee44cce880e57018d6a71551fa9" [label=""];
  "sha256:4f3e9ddf5f9fd068caa14d4cf2fc7911eb553ee44cce880e57018d6a71551fa9" -> "sha256:0cca5276608fdb302a114692fa0d86c3530cc5f371523726dfbc8ea13cd7b227" [label=""];
  "sha256:0cca5276608fdb302a114692fa0d86c3530cc5f371523726dfbc8ea13cd7b227" -> "sha256:6bdb5d9d7911ce5a079e988e9a080d8ef496283d66451c1cce2ce386f74ef6f2" [label=""];
  "sha256:6bdb5d9d7911ce5a079e988e9a080d8ef496283d66451c1cce2ce386f74ef6f2" -> "sha256:eb8896987e7c91045e0cd1d2d9b117e10f57ff057e06b7c85e09c3e5add6ff56" [label=""];
  "sha256:eb8896987e7c91045e0cd1d2d9b117e10f57ff057e06b7c85e09c3e5add6ff56" -> "sha256:6f1a150266b8d56af24b24abecdc58feb26cfea82db62de71f261e9b2fc23bf6" [label=""];
  "sha256:6f1a150266b8d56af24b24abecdc58feb26cfea82db62de71f261e9b2fc23bf6" -> "sha256:1e6b6616fe62a6a1b40c17f14000b25bd0bc1bafa825cc2c9e61f829c49615a9" [label=""];
  "sha256:6bae2dd94e90564a6a18d0594b647c350e5cf706376ec2d30d483c561a48a77d" -> "sha256:1e6b6616fe62a6a1b40c17f14000b25bd0bc1bafa825cc2c9e61f829c49615a9" [label=""];
  "sha256:1e6b6616fe62a6a1b40c17f14000b25bd0bc1bafa825cc2c9e61f829c49615a9" -> "sha256:b81365683d006ef43029fad80dea16e138fa13947ec8164006c56b2de52f92e8" [label=""];
  "sha256:6bae2dd94e90564a6a18d0594b647c350e5cf706376ec2d30d483c561a48a77d" -> "sha256:b81365683d006ef43029fad80dea16e138fa13947ec8164006c56b2de52f92e8" [label=""];
  "sha256:b81365683d006ef43029fad80dea16e138fa13947ec8164006c56b2de52f92e8" -> "sha256:2a17031125f464e4e1c2670070787c3c2de8412c744e935682bfc2d2ed564be5" [label=""];
  "sha256:2a17031125f464e4e1c2670070787c3c2de8412c744e935682bfc2d2ed564be5" -> "sha256:d5f6fcfe04306d94da4232e5468eab5e6ed391f0c24755a2296e1a5e46421fc9" [label=""];
}

