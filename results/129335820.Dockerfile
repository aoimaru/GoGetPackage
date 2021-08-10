[app/sources/129335820.Dockerfile]
digraph {
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" [label="docker-image://docker.io/library/ubuntu:12.04" shape="ellipse"];
  "sha256:0f9e535e2a2df5c5ab5067a7f80aac89b8946995a5f38c4c325fcfca5943bcbf" [label="/bin/sh -c echo RUN" shape="box"];
  "sha256:7a496c0bbe8bdf7dfc93b5edae32fe2c1599c6bf4fcd969d4bf96b715ea7c528" [label="/bin/sh -c echo stdout" shape="box"];
  "sha256:3cdfbfe79fa862df994a49709d377550545345cee0bce7e94c18ce9a9bf01426" [label="/bin/sh -c cd / && date > date" shape="box"];
  "sha256:1c6a621fb23083637c0c6fe609610a6dd993e7c196ab40b7e3e000dac2354444" [label="/bin/sh -c cd / && date > date2" shape="box"];
  "sha256:5673f2487b9531e532c88113822eb7e7228929c965aed78af175c499fabb3512" [label="/bin/sh -c cd /" shape="box"];
  "sha256:824f8d740f9407d777383b804759ae4732355bc913455625981f1af076285749" [label="/bin/sh -c cd /tmp" shape="box"];
  "sha256:1039fb5fd567e224ea4101efd02836fc7299b903c6f2efd01c9b9524aef65ce1" [label="/bin/sh -c pwd" shape="box"];
  "sha256:3ebd99e25f15f9f15beb1b1aa5f0ca1395629437b004d2f5e08475b748e96428" [label="/bin/sh -c echo WORKDIR" shape="box"];
  "sha256:86da58c0d65ccba5b79b8a41ac60ebdde9c6dacfd3f2ef34ce2266ac0b6b4aaf" [label="mkdir{path=/etc}" shape="note"];
  "sha256:031c8708fd7bd71de2a7d8fff1ad38745f32d1d30ed2407734611263c76d2e4b" [label="/bin/sh -c pwd" shape="box"];
  "sha256:f9e1ea24cf3d6fa3eec42aecac8e6e37269f73d305ba4d1a36aeed6b31901d03" [label="mkdir{path=/etc/nginx}" shape="note"];
  "sha256:818711b13a8181a29055213451a1da79d5da93433c99c9f99efadf5e3f758671" [label="/bin/sh -c pwd" shape="box"];
  "sha256:5cc19f74662c0c45f46c2aeec42efb7f8e720c69846f3eb0ae8ab99a6c4e916d" [label="/bin/sh -c apt-get update &&   apt-get install -y nginx &&   printf \"\\ndaemon off;\\n\" >> /etc/nginx/nginx.conf" shape="box"];
  "sha256:55fade079f598badeeab750359ae3908d9bad86f4242a71c4a44448c43e0653a" [label="/bin/sh -c ls /tmp" shape="box"];
  "sha256:f285243628825caf18f8f756ac50c2e14c376774a32789e7332430c399e9c3b1" [label="local://context" shape="ellipse"];
  "sha256:173c4a5062fc6ba201bc6e5056679955b7fb2da95b63b67030e087cd3d6c4fae" [label="copy{src=/add.txt, dest=/add.txt}" shape="note"];
  "sha256:40d9eb4bf7f2cb565ab46f3af07780cd32832f38d1acb394e7f1814601764a99" [label="/bin/sh -c echo env" shape="box"];
  "sha256:cf1f17e70ce154bcec8b22aa56df269ff59358435ab47dfba2ed0a6bc77d40c3" [label="/bin/sh -c env" shape="box"];
  "sha256:27b20db27d3a72dd47c3a27e5fe9df2c75c88efa913e1d86150922a2c2e202c1" [label="sha256:27b20db27d3a72dd47c3a27e5fe9df2c75c88efa913e1d86150922a2c2e202c1" shape="plaintext"];
  "sha256:f64d4a83486b304343e8de0d7e7b1839790c56b7cd76739707e98bbc871f9b3f" -> "sha256:0f9e535e2a2df5c5ab5067a7f80aac89b8946995a5f38c4c325fcfca5943bcbf" [label=""];
  "sha256:0f9e535e2a2df5c5ab5067a7f80aac89b8946995a5f38c4c325fcfca5943bcbf" -> "sha256:7a496c0bbe8bdf7dfc93b5edae32fe2c1599c6bf4fcd969d4bf96b715ea7c528" [label=""];
  "sha256:7a496c0bbe8bdf7dfc93b5edae32fe2c1599c6bf4fcd969d4bf96b715ea7c528" -> "sha256:3cdfbfe79fa862df994a49709d377550545345cee0bce7e94c18ce9a9bf01426" [label=""];
  "sha256:3cdfbfe79fa862df994a49709d377550545345cee0bce7e94c18ce9a9bf01426" -> "sha256:1c6a621fb23083637c0c6fe609610a6dd993e7c196ab40b7e3e000dac2354444" [label=""];
  "sha256:1c6a621fb23083637c0c6fe609610a6dd993e7c196ab40b7e3e000dac2354444" -> "sha256:5673f2487b9531e532c88113822eb7e7228929c965aed78af175c499fabb3512" [label=""];
  "sha256:5673f2487b9531e532c88113822eb7e7228929c965aed78af175c499fabb3512" -> "sha256:824f8d740f9407d777383b804759ae4732355bc913455625981f1af076285749" [label=""];
  "sha256:824f8d740f9407d777383b804759ae4732355bc913455625981f1af076285749" -> "sha256:1039fb5fd567e224ea4101efd02836fc7299b903c6f2efd01c9b9524aef65ce1" [label=""];
  "sha256:1039fb5fd567e224ea4101efd02836fc7299b903c6f2efd01c9b9524aef65ce1" -> "sha256:3ebd99e25f15f9f15beb1b1aa5f0ca1395629437b004d2f5e08475b748e96428" [label=""];
  "sha256:3ebd99e25f15f9f15beb1b1aa5f0ca1395629437b004d2f5e08475b748e96428" -> "sha256:86da58c0d65ccba5b79b8a41ac60ebdde9c6dacfd3f2ef34ce2266ac0b6b4aaf" [label=""];
  "sha256:86da58c0d65ccba5b79b8a41ac60ebdde9c6dacfd3f2ef34ce2266ac0b6b4aaf" -> "sha256:031c8708fd7bd71de2a7d8fff1ad38745f32d1d30ed2407734611263c76d2e4b" [label=""];
  "sha256:031c8708fd7bd71de2a7d8fff1ad38745f32d1d30ed2407734611263c76d2e4b" -> "sha256:f9e1ea24cf3d6fa3eec42aecac8e6e37269f73d305ba4d1a36aeed6b31901d03" [label=""];
  "sha256:f9e1ea24cf3d6fa3eec42aecac8e6e37269f73d305ba4d1a36aeed6b31901d03" -> "sha256:818711b13a8181a29055213451a1da79d5da93433c99c9f99efadf5e3f758671" [label=""];
  "sha256:818711b13a8181a29055213451a1da79d5da93433c99c9f99efadf5e3f758671" -> "sha256:5cc19f74662c0c45f46c2aeec42efb7f8e720c69846f3eb0ae8ab99a6c4e916d" [label=""];
  "sha256:5cc19f74662c0c45f46c2aeec42efb7f8e720c69846f3eb0ae8ab99a6c4e916d" -> "sha256:55fade079f598badeeab750359ae3908d9bad86f4242a71c4a44448c43e0653a" [label=""];
  "sha256:55fade079f598badeeab750359ae3908d9bad86f4242a71c4a44448c43e0653a" -> "sha256:173c4a5062fc6ba201bc6e5056679955b7fb2da95b63b67030e087cd3d6c4fae" [label=""];
  "sha256:f285243628825caf18f8f756ac50c2e14c376774a32789e7332430c399e9c3b1" -> "sha256:173c4a5062fc6ba201bc6e5056679955b7fb2da95b63b67030e087cd3d6c4fae" [label=""];
  "sha256:173c4a5062fc6ba201bc6e5056679955b7fb2da95b63b67030e087cd3d6c4fae" -> "sha256:40d9eb4bf7f2cb565ab46f3af07780cd32832f38d1acb394e7f1814601764a99" [label=""];
  "sha256:40d9eb4bf7f2cb565ab46f3af07780cd32832f38d1acb394e7f1814601764a99" -> "sha256:cf1f17e70ce154bcec8b22aa56df269ff59358435ab47dfba2ed0a6bc77d40c3" [label=""];
  "sha256:cf1f17e70ce154bcec8b22aa56df269ff59358435ab47dfba2ed0a6bc77d40c3" -> "sha256:27b20db27d3a72dd47c3a27e5fe9df2c75c88efa913e1d86150922a2c2e202c1" [label=""];
}

