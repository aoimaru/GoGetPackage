[app/sources/258508269.Dockerfile]
digraph {
  "sha256:f15a89f5fad12f006681a59f10f9a9aa79cc7162be1e7924b6a2c7cefde97d2c" [label="docker-image://dckreg:5000/spark:1.6.3" shape="ellipse"];
  "sha256:5335580ef3997c1808ee05c1967f69f15927f6d37e02ce3f86d261ad75bc64fe" [label="https://dl.bintray.com/sbt/native-packages/sbt/0.13.13/sbt-0.13.13.tgz" shape="ellipse"];
  "sha256:46aa3c1d6b9d97dc8e73f14e00d3b231c6036f922f0cac260e3b1cf4b5ff39b9" [label="copy{src=/sbt-0.13.13.tgz, dest=/sbt-0.13.13.tgz}" shape="note"];
  "sha256:0db6177271003d2778521d9403d265bd5999159bd58928aa5830e42ba22aa17b" [label="/bin/sh -c tar xvf sbt-$SBT_VERSION.tgz" shape="box"];
  "sha256:c88e037340a608d1e637d18b4b32647ab3b86c4bcab346d3b81dcbef2caf8c17" [label="/bin/sh -c mv sbt /opt/sbt" shape="box"];
  "sha256:26ef8a96379b726fde92f1a96603520c347f7e57e63b1f51105da7beeaeb41b5" [label="/bin/sh -c rm sbt-$SBT_VERSION.tgz" shape="box"];
  "sha256:5e06aa347fa389895afba078ca7be2b2246f7e18958dad9373e7f4610404ba09" [label="/bin/sh -c mkdir /root/project" shape="box"];
  "sha256:6942e21ecea29c6c703e2d70c2e7463b8ceb827e316da3a06fcc4a3f22ce3382" [label="local://context" shape="ellipse"];
  "sha256:d9c50bb309f4c3afe89f65efe8ec2dd2ab536cfd2f1024197a0cd0a2c3a62d68" [label="copy{src=/sbtfile, dest=/root/build.sbt}" shape="note"];
  "sha256:1ad11687d8007315d0f5f422985219acc52fbc13f0e2b098be28cd17965038be" [label="copy{src=/plugins.sbt, dest=/root/project/plugins.sbt}" shape="note"];
  "sha256:291f237a2dd8630bb3678552dc5e5272a85bb2284a6c16e44920b70a14982c5e" [label="mkdir{path=/root}" shape="note"];
  "sha256:ed7e543331e15a77af8510e173866f31c1ea0534d06dba751b2a0aff856912b5" [label="/bin/sh -c sbt" shape="box"];
  "sha256:e6c2b57c5899fc47100266bbcc7b0aaa7d626b33f7e36adbacb92fa3b0ebfb1e" [label="/bin/sh -c echo \"console\" | sbt" shape="box"];
  "sha256:c43444ed8387f49762cf800d2265b43bc0a69ce0ff4b043362579a8faacfa1b4" [label="/bin/sh -c apt install -y vim" shape="box"];
  "sha256:64f6d1f19cb1ee4c1e01ac3f85a619e2bd030870ec1c62ab47e00f3b705d26c3" [label="sha256:64f6d1f19cb1ee4c1e01ac3f85a619e2bd030870ec1c62ab47e00f3b705d26c3" shape="plaintext"];
  "sha256:f15a89f5fad12f006681a59f10f9a9aa79cc7162be1e7924b6a2c7cefde97d2c" -> "sha256:46aa3c1d6b9d97dc8e73f14e00d3b231c6036f922f0cac260e3b1cf4b5ff39b9" [label=""];
  "sha256:5335580ef3997c1808ee05c1967f69f15927f6d37e02ce3f86d261ad75bc64fe" -> "sha256:46aa3c1d6b9d97dc8e73f14e00d3b231c6036f922f0cac260e3b1cf4b5ff39b9" [label=""];
  "sha256:46aa3c1d6b9d97dc8e73f14e00d3b231c6036f922f0cac260e3b1cf4b5ff39b9" -> "sha256:0db6177271003d2778521d9403d265bd5999159bd58928aa5830e42ba22aa17b" [label=""];
  "sha256:0db6177271003d2778521d9403d265bd5999159bd58928aa5830e42ba22aa17b" -> "sha256:c88e037340a608d1e637d18b4b32647ab3b86c4bcab346d3b81dcbef2caf8c17" [label=""];
  "sha256:c88e037340a608d1e637d18b4b32647ab3b86c4bcab346d3b81dcbef2caf8c17" -> "sha256:26ef8a96379b726fde92f1a96603520c347f7e57e63b1f51105da7beeaeb41b5" [label=""];
  "sha256:26ef8a96379b726fde92f1a96603520c347f7e57e63b1f51105da7beeaeb41b5" -> "sha256:5e06aa347fa389895afba078ca7be2b2246f7e18958dad9373e7f4610404ba09" [label=""];
  "sha256:5e06aa347fa389895afba078ca7be2b2246f7e18958dad9373e7f4610404ba09" -> "sha256:d9c50bb309f4c3afe89f65efe8ec2dd2ab536cfd2f1024197a0cd0a2c3a62d68" [label=""];
  "sha256:6942e21ecea29c6c703e2d70c2e7463b8ceb827e316da3a06fcc4a3f22ce3382" -> "sha256:d9c50bb309f4c3afe89f65efe8ec2dd2ab536cfd2f1024197a0cd0a2c3a62d68" [label=""];
  "sha256:d9c50bb309f4c3afe89f65efe8ec2dd2ab536cfd2f1024197a0cd0a2c3a62d68" -> "sha256:1ad11687d8007315d0f5f422985219acc52fbc13f0e2b098be28cd17965038be" [label=""];
  "sha256:6942e21ecea29c6c703e2d70c2e7463b8ceb827e316da3a06fcc4a3f22ce3382" -> "sha256:1ad11687d8007315d0f5f422985219acc52fbc13f0e2b098be28cd17965038be" [label=""];
  "sha256:1ad11687d8007315d0f5f422985219acc52fbc13f0e2b098be28cd17965038be" -> "sha256:291f237a2dd8630bb3678552dc5e5272a85bb2284a6c16e44920b70a14982c5e" [label=""];
  "sha256:291f237a2dd8630bb3678552dc5e5272a85bb2284a6c16e44920b70a14982c5e" -> "sha256:ed7e543331e15a77af8510e173866f31c1ea0534d06dba751b2a0aff856912b5" [label=""];
  "sha256:ed7e543331e15a77af8510e173866f31c1ea0534d06dba751b2a0aff856912b5" -> "sha256:e6c2b57c5899fc47100266bbcc7b0aaa7d626b33f7e36adbacb92fa3b0ebfb1e" [label=""];
  "sha256:e6c2b57c5899fc47100266bbcc7b0aaa7d626b33f7e36adbacb92fa3b0ebfb1e" -> "sha256:c43444ed8387f49762cf800d2265b43bc0a69ce0ff4b043362579a8faacfa1b4" [label=""];
  "sha256:c43444ed8387f49762cf800d2265b43bc0a69ce0ff4b043362579a8faacfa1b4" -> "sha256:64f6d1f19cb1ee4c1e01ac3f85a619e2bd030870ec1c62ab47e00f3b705d26c3" [label=""];
}

