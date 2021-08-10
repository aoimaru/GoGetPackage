[app/sources/254457912.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:dc808271b1f1b70891a3578ff1f74a1e3506fa6eaa11197dc45e0abea53e0a0d" [label="local://context" shape="ellipse"];
  "sha256:cf52bb456e238e5a6f87967af02b11dfd085d4df49724684decdcbdcc061d96e" [label="copy{src=/docker/timezone, dest=/etc/timezone}" shape="note"];
  "sha256:36d5abd0fce2c97c51a33a82013135695da75ff72ed96cca0a5df056b7ab840f" [label="/bin/sh -c dpkg-reconfigure -f noninteractive tzdata" shape="box"];
  "sha256:91ecd2d360f16ce19e285528a1693942e1cb356c143da499a63bd8e0fc7d79d7" [label="/bin/sh -c apt-get update && apt-get install -y    build-essential    lsb-release" shape="box"];
  "sha256:2fcad4477a7cd56355bb2f66a9d8515990e7c98e1a6d48955958deafb2ba56e1" [label="/bin/sh -c useradd -ms /bin/bash -u 50990 apisrv" shape="box"];
  "sha256:4e4371d2c43bcf12a22c58b322f1ab17869ee7a40b9da9b912f9948960c99995" [label="/bin/sh -c mkdir -p /opt/apisrv /etc/apisrv /var/log/apisrv" shape="box"];
  "sha256:9fb6ce46c1a32c1f11a32125eb9cade09b14d110e482fc7c4115716349033974" [label="mkdir{path=/opt/apisrv}" shape="note"];
  "sha256:ed26c9cfceb252da78f29b5da5708c13a7db20c92a39b8bd79cc01bdd6454cce" [label="copy{src=/requirements.txt, dest=/opt/apisrv/}" shape="note"];
  "sha256:479365fea061144a10ce7e366a3bd385af5471fd1d998b63e0c7b53d8ce25492" [label="/bin/sh -c pip3 install --upgrade pip &&  pip3 install -r requirements.txt" shape="box"];
  "sha256:9c6322bc0b6e08fe7f130ae371ee2ae8babe746d72861a9967a6e3d8f35db869" [label="copy{src=/apisrv.ini, dest=/etc/apisrv/}" shape="note"];
  "sha256:9275e3978b80041853d5e5c9d7cfab70eb9e2f844bbc0ec9d2986283a65aef80" [label="copy{src=/apisrv, dest=/opt/apisrv/apisrv/}" shape="note"];
  "sha256:46a904ce78a57b8ac952d876ebe1716e62cfd26aaecc51719cc5fd097c802303" [label="copy{src=/test, dest=/opt/apisrv/test/}" shape="note"];
  "sha256:27a6a6315cca340e0a686e84572fdcbcd924ff5c01665ba51ab4255361693d01" [label="copy{src=/extra, dest=/opt/apisrv/extra/}" shape="note"];
  "sha256:b025ad1717300f7e1fb7e5c4055054978c94f0047d7476824477e190a8f1f1d7" [label="copy{src=/lib, dest=/opt/apisrv/lib/}" shape="note"];
  "sha256:08a667a646e2a3a7680e1310f936d2c314d631d34cb907aca8427bd8f539e366" [label="copy{src=/*.py, dest=/opt/apisrv/}" shape="note"];
  "sha256:c10cddd08a9238c758700ebbc295fc73ab0a533583ccf6756cdc2dd1d0657dd7" [label="/bin/sh -c chown -R apisrv /opt/apisrv" shape="box"];
  "sha256:9281a7d0449dace6df8fff6ef0d0f9c10da612b8e2e51d21d5e7dabd21aacb3f" [label="/bin/sh -c chgrp -R apisrv /opt/apisrv" shape="box"];
  "sha256:f5aae5fc594fd00a83c9af0d124c4630b1bfa3a10420a9c87a41c1620668a964" [label="sha256:f5aae5fc594fd00a83c9af0d124c4630b1bfa3a10420a9c87a41c1620668a964" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:cf52bb456e238e5a6f87967af02b11dfd085d4df49724684decdcbdcc061d96e" [label=""];
  "sha256:dc808271b1f1b70891a3578ff1f74a1e3506fa6eaa11197dc45e0abea53e0a0d" -> "sha256:cf52bb456e238e5a6f87967af02b11dfd085d4df49724684decdcbdcc061d96e" [label=""];
  "sha256:cf52bb456e238e5a6f87967af02b11dfd085d4df49724684decdcbdcc061d96e" -> "sha256:36d5abd0fce2c97c51a33a82013135695da75ff72ed96cca0a5df056b7ab840f" [label=""];
  "sha256:36d5abd0fce2c97c51a33a82013135695da75ff72ed96cca0a5df056b7ab840f" -> "sha256:91ecd2d360f16ce19e285528a1693942e1cb356c143da499a63bd8e0fc7d79d7" [label=""];
  "sha256:91ecd2d360f16ce19e285528a1693942e1cb356c143da499a63bd8e0fc7d79d7" -> "sha256:2fcad4477a7cd56355bb2f66a9d8515990e7c98e1a6d48955958deafb2ba56e1" [label=""];
  "sha256:2fcad4477a7cd56355bb2f66a9d8515990e7c98e1a6d48955958deafb2ba56e1" -> "sha256:4e4371d2c43bcf12a22c58b322f1ab17869ee7a40b9da9b912f9948960c99995" [label=""];
  "sha256:4e4371d2c43bcf12a22c58b322f1ab17869ee7a40b9da9b912f9948960c99995" -> "sha256:9fb6ce46c1a32c1f11a32125eb9cade09b14d110e482fc7c4115716349033974" [label=""];
  "sha256:9fb6ce46c1a32c1f11a32125eb9cade09b14d110e482fc7c4115716349033974" -> "sha256:ed26c9cfceb252da78f29b5da5708c13a7db20c92a39b8bd79cc01bdd6454cce" [label=""];
  "sha256:dc808271b1f1b70891a3578ff1f74a1e3506fa6eaa11197dc45e0abea53e0a0d" -> "sha256:ed26c9cfceb252da78f29b5da5708c13a7db20c92a39b8bd79cc01bdd6454cce" [label=""];
  "sha256:ed26c9cfceb252da78f29b5da5708c13a7db20c92a39b8bd79cc01bdd6454cce" -> "sha256:479365fea061144a10ce7e366a3bd385af5471fd1d998b63e0c7b53d8ce25492" [label=""];
  "sha256:479365fea061144a10ce7e366a3bd385af5471fd1d998b63e0c7b53d8ce25492" -> "sha256:9c6322bc0b6e08fe7f130ae371ee2ae8babe746d72861a9967a6e3d8f35db869" [label=""];
  "sha256:dc808271b1f1b70891a3578ff1f74a1e3506fa6eaa11197dc45e0abea53e0a0d" -> "sha256:9c6322bc0b6e08fe7f130ae371ee2ae8babe746d72861a9967a6e3d8f35db869" [label=""];
  "sha256:9c6322bc0b6e08fe7f130ae371ee2ae8babe746d72861a9967a6e3d8f35db869" -> "sha256:9275e3978b80041853d5e5c9d7cfab70eb9e2f844bbc0ec9d2986283a65aef80" [label=""];
  "sha256:dc808271b1f1b70891a3578ff1f74a1e3506fa6eaa11197dc45e0abea53e0a0d" -> "sha256:9275e3978b80041853d5e5c9d7cfab70eb9e2f844bbc0ec9d2986283a65aef80" [label=""];
  "sha256:9275e3978b80041853d5e5c9d7cfab70eb9e2f844bbc0ec9d2986283a65aef80" -> "sha256:46a904ce78a57b8ac952d876ebe1716e62cfd26aaecc51719cc5fd097c802303" [label=""];
  "sha256:dc808271b1f1b70891a3578ff1f74a1e3506fa6eaa11197dc45e0abea53e0a0d" -> "sha256:46a904ce78a57b8ac952d876ebe1716e62cfd26aaecc51719cc5fd097c802303" [label=""];
  "sha256:46a904ce78a57b8ac952d876ebe1716e62cfd26aaecc51719cc5fd097c802303" -> "sha256:27a6a6315cca340e0a686e84572fdcbcd924ff5c01665ba51ab4255361693d01" [label=""];
  "sha256:dc808271b1f1b70891a3578ff1f74a1e3506fa6eaa11197dc45e0abea53e0a0d" -> "sha256:27a6a6315cca340e0a686e84572fdcbcd924ff5c01665ba51ab4255361693d01" [label=""];
  "sha256:27a6a6315cca340e0a686e84572fdcbcd924ff5c01665ba51ab4255361693d01" -> "sha256:b025ad1717300f7e1fb7e5c4055054978c94f0047d7476824477e190a8f1f1d7" [label=""];
  "sha256:dc808271b1f1b70891a3578ff1f74a1e3506fa6eaa11197dc45e0abea53e0a0d" -> "sha256:b025ad1717300f7e1fb7e5c4055054978c94f0047d7476824477e190a8f1f1d7" [label=""];
  "sha256:b025ad1717300f7e1fb7e5c4055054978c94f0047d7476824477e190a8f1f1d7" -> "sha256:08a667a646e2a3a7680e1310f936d2c314d631d34cb907aca8427bd8f539e366" [label=""];
  "sha256:dc808271b1f1b70891a3578ff1f74a1e3506fa6eaa11197dc45e0abea53e0a0d" -> "sha256:08a667a646e2a3a7680e1310f936d2c314d631d34cb907aca8427bd8f539e366" [label=""];
  "sha256:08a667a646e2a3a7680e1310f936d2c314d631d34cb907aca8427bd8f539e366" -> "sha256:c10cddd08a9238c758700ebbc295fc73ab0a533583ccf6756cdc2dd1d0657dd7" [label=""];
  "sha256:c10cddd08a9238c758700ebbc295fc73ab0a533583ccf6756cdc2dd1d0657dd7" -> "sha256:9281a7d0449dace6df8fff6ef0d0f9c10da612b8e2e51d21d5e7dabd21aacb3f" [label=""];
  "sha256:9281a7d0449dace6df8fff6ef0d0f9c10da612b8e2e51d21d5e7dabd21aacb3f" -> "sha256:f5aae5fc594fd00a83c9af0d124c4630b1bfa3a10420a9c87a41c1620668a964" [label=""];
}

