[app/sources/409052423.Dockerfile]
digraph {
  "sha256:856001c0237409e5477fe3723223e88a652e3cbdb76fa3d81cfb2590eedb1b3a" [label="local://context" shape="ellipse"];
  "sha256:2f545878fde61f37a1fd2603f38eaa3b7ea5c78a116badb1cc6d9bab3d4c8b42" [label="docker-image://docker.io/khanio/precise-oracle-jdk7:latest" shape="ellipse"];
  "sha256:8199395415faf5eda4c0870a61473b2a98524871c5c7c41ea248e8be71ca9ea7" [label="copy{src=/scripts/setup.sh, dest=/setup.sh}" shape="note"];
  "sha256:faed045d2bff4234cc10a3c116e3e2c629bd8d22fe49187e6a0bd2cdc6686e86" [label="/bin/sh -c sh /setup.sh" shape="box"];
  "sha256:9eeb1dc48181ea28674403ce51a1205752e17c33ccd38c8334bb2aaaec3dbd98" [label="copy{src=/confs/zookeeper/conf/zoo.cfg, dest=/usr/local/zookeeper/conf/zoo.cfg}" shape="note"];
  "sha256:e35ca5045c21df3b5051aa946dad21cfa477299ba6814664d571fc748c1c0890" [label="copy{src=/confs/storm/conf/storm.yaml, dest=/~/.storm/}" shape="note"];
  "sha256:a6b45a6118cb1a178bf005064721a403969e1ea27f1d191e51473319fa10b257" [label="copy{src=/confs/supervisor/conf.d/zookeeper.conf, dest=/etc/supervisor/conf.d/zookeeper.conf}" shape="note"];
  "sha256:ad1597eb325c02441b9875ab1bcbaa61ece5da6c012fd38cf70f1dea8767d714" [label="copy{src=/confs/supervisor/conf.d/storm_nimbus.conf, dest=/etc/supervisor/conf.d/storm_nimbus.conf}" shape="note"];
  "sha256:92916da8952aa11f59360879e67399620d20461851224d68651153d412645170" [label="copy{src=/confs/supervisor/conf.d/storm_ui.conf, dest=/etc/supervisor/conf.d/storm_ui.conf}" shape="note"];
  "sha256:24b94ea7a210af53650a42bfb0232172bde796059ec918b478236cc924fe57a3" [label="copy{src=/confs/supervisor/conf.d/storm_supervisor.conf, dest=/etc/supervisor/conf.d/storm_supervisor.conf}" shape="note"];
  "sha256:13189307063601a7f5f8c2f26250da5a412b7a6d0c69e3bedc571da9900748ca" [label="copy{src=/scripts/run.sh, dest=/run.sh}" shape="note"];
  "sha256:d66ab6414c6defeb8d4ba2523d8b59c80c3e716be2018ac37c7872702ceb8bca" [label="sha256:d66ab6414c6defeb8d4ba2523d8b59c80c3e716be2018ac37c7872702ceb8bca" shape="plaintext"];
  "sha256:2f545878fde61f37a1fd2603f38eaa3b7ea5c78a116badb1cc6d9bab3d4c8b42" -> "sha256:8199395415faf5eda4c0870a61473b2a98524871c5c7c41ea248e8be71ca9ea7" [label=""];
  "sha256:856001c0237409e5477fe3723223e88a652e3cbdb76fa3d81cfb2590eedb1b3a" -> "sha256:8199395415faf5eda4c0870a61473b2a98524871c5c7c41ea248e8be71ca9ea7" [label=""];
  "sha256:8199395415faf5eda4c0870a61473b2a98524871c5c7c41ea248e8be71ca9ea7" -> "sha256:faed045d2bff4234cc10a3c116e3e2c629bd8d22fe49187e6a0bd2cdc6686e86" [label=""];
  "sha256:faed045d2bff4234cc10a3c116e3e2c629bd8d22fe49187e6a0bd2cdc6686e86" -> "sha256:9eeb1dc48181ea28674403ce51a1205752e17c33ccd38c8334bb2aaaec3dbd98" [label=""];
  "sha256:856001c0237409e5477fe3723223e88a652e3cbdb76fa3d81cfb2590eedb1b3a" -> "sha256:9eeb1dc48181ea28674403ce51a1205752e17c33ccd38c8334bb2aaaec3dbd98" [label=""];
  "sha256:9eeb1dc48181ea28674403ce51a1205752e17c33ccd38c8334bb2aaaec3dbd98" -> "sha256:e35ca5045c21df3b5051aa946dad21cfa477299ba6814664d571fc748c1c0890" [label=""];
  "sha256:856001c0237409e5477fe3723223e88a652e3cbdb76fa3d81cfb2590eedb1b3a" -> "sha256:e35ca5045c21df3b5051aa946dad21cfa477299ba6814664d571fc748c1c0890" [label=""];
  "sha256:e35ca5045c21df3b5051aa946dad21cfa477299ba6814664d571fc748c1c0890" -> "sha256:a6b45a6118cb1a178bf005064721a403969e1ea27f1d191e51473319fa10b257" [label=""];
  "sha256:856001c0237409e5477fe3723223e88a652e3cbdb76fa3d81cfb2590eedb1b3a" -> "sha256:a6b45a6118cb1a178bf005064721a403969e1ea27f1d191e51473319fa10b257" [label=""];
  "sha256:a6b45a6118cb1a178bf005064721a403969e1ea27f1d191e51473319fa10b257" -> "sha256:ad1597eb325c02441b9875ab1bcbaa61ece5da6c012fd38cf70f1dea8767d714" [label=""];
  "sha256:856001c0237409e5477fe3723223e88a652e3cbdb76fa3d81cfb2590eedb1b3a" -> "sha256:ad1597eb325c02441b9875ab1bcbaa61ece5da6c012fd38cf70f1dea8767d714" [label=""];
  "sha256:ad1597eb325c02441b9875ab1bcbaa61ece5da6c012fd38cf70f1dea8767d714" -> "sha256:92916da8952aa11f59360879e67399620d20461851224d68651153d412645170" [label=""];
  "sha256:856001c0237409e5477fe3723223e88a652e3cbdb76fa3d81cfb2590eedb1b3a" -> "sha256:92916da8952aa11f59360879e67399620d20461851224d68651153d412645170" [label=""];
  "sha256:92916da8952aa11f59360879e67399620d20461851224d68651153d412645170" -> "sha256:24b94ea7a210af53650a42bfb0232172bde796059ec918b478236cc924fe57a3" [label=""];
  "sha256:856001c0237409e5477fe3723223e88a652e3cbdb76fa3d81cfb2590eedb1b3a" -> "sha256:24b94ea7a210af53650a42bfb0232172bde796059ec918b478236cc924fe57a3" [label=""];
  "sha256:24b94ea7a210af53650a42bfb0232172bde796059ec918b478236cc924fe57a3" -> "sha256:13189307063601a7f5f8c2f26250da5a412b7a6d0c69e3bedc571da9900748ca" [label=""];
  "sha256:856001c0237409e5477fe3723223e88a652e3cbdb76fa3d81cfb2590eedb1b3a" -> "sha256:13189307063601a7f5f8c2f26250da5a412b7a6d0c69e3bedc571da9900748ca" [label=""];
  "sha256:13189307063601a7f5f8c2f26250da5a412b7a6d0c69e3bedc571da9900748ca" -> "sha256:d66ab6414c6defeb8d4ba2523d8b59c80c3e716be2018ac37c7872702ceb8bca" [label=""];
}

