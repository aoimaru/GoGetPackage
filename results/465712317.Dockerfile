[app/sources/465712317.Dockerfile]
digraph {
  "sha256:c39e8302a8f121742f4d4e5c84bc72bb5e3d1bcfdc24a1644bf9d449c9b7c0f3" [label="docker-image://daocloud.io/library/ubuntu:14.04@sha256:881afbae521c910f764f7187dbfbca3cc10c26f8bafa458c76dda009a901c29d" shape="ellipse"];
  "sha256:09e3dedae1fa29261e36ab4351e24d19396e926d3b48626d5ae68d2be051a67b" [label="/bin/sh -c sh -c \"echo 'Asia/Shanghai' > /etc/timezone\" &&     dpkg-reconfigure -f noninteractive tzdata" shape="box"];
  "sha256:48440d35ba4b9e3696e28cedf7f0dc1c3067c693ef4b26f8ce3697224673bf9d" [label="/bin/sh -c echo '\\ndeb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse\\ndeb http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse\\ndeb http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse\\ndeb http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse\\ndeb http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse\\ndeb-src http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse\\ndeb-src http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse\\ndeb-src http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse\\ndeb-src http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse\\ndeb-src http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse\\n'> /etc/apt/sources.list" shape="box"];
  "sha256:3dc0f1ca44f08ec94dd0058f280d6f946deb51adccef5decb86459712be22d6e" [label="/bin/sh -c sudo apt-get update &&     sudo apt-get install -y wget" shape="box"];
  "sha256:b89929f1092b29c1ae47d709e610cfec5dbf91df48bf99b79b549306411f285d" [label="/bin/sh -c wget https://npm.taobao.org/mirrors/node/v8.9.1/node-v8.9.1-linux-x64.tar.gz &&     tar -C /usr/local --strip-components 1 -xzf node-v8.9.1-linux-x64.tar.gz &&     rm node-v8.9.1-linux-x64.tar.gz" shape="box"];
  "sha256:8962123869fbe857a4f6a03c22eee04e24315b65583ba0c39651011a223fe0ac" [label="mkdir{path=/app}" shape="note"];
  "sha256:57963bb560e4c151cbe282618f645638986fe9b38f4a2381f71f1ca3db4d0cc5" [label="local://context" shape="ellipse"];
  "sha256:fefe3b761440dca28d26ce7fe27b213b40eb090efddc02b73cc56e40a9af98a4" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:275c5b630da334c03eb04dd8e8362ba5dc33bbff45eb1d9ce55f1ffef1457d0e" [label="/bin/sh -c npm install --production -d --registry=https://registry.npm.taobao.org" shape="box"];
  "sha256:f71f0db4367f7949336955a852648c25a52d335b44090eb65b2fbb6bfa828d08" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:f18a290ae2fe9cc6a9472fdc92a2ad59202debcae0111b501e4577646917f86d" [label="sha256:f18a290ae2fe9cc6a9472fdc92a2ad59202debcae0111b501e4577646917f86d" shape="plaintext"];
  "sha256:c39e8302a8f121742f4d4e5c84bc72bb5e3d1bcfdc24a1644bf9d449c9b7c0f3" -> "sha256:09e3dedae1fa29261e36ab4351e24d19396e926d3b48626d5ae68d2be051a67b" [label=""];
  "sha256:09e3dedae1fa29261e36ab4351e24d19396e926d3b48626d5ae68d2be051a67b" -> "sha256:48440d35ba4b9e3696e28cedf7f0dc1c3067c693ef4b26f8ce3697224673bf9d" [label=""];
  "sha256:48440d35ba4b9e3696e28cedf7f0dc1c3067c693ef4b26f8ce3697224673bf9d" -> "sha256:3dc0f1ca44f08ec94dd0058f280d6f946deb51adccef5decb86459712be22d6e" [label=""];
  "sha256:3dc0f1ca44f08ec94dd0058f280d6f946deb51adccef5decb86459712be22d6e" -> "sha256:b89929f1092b29c1ae47d709e610cfec5dbf91df48bf99b79b549306411f285d" [label=""];
  "sha256:b89929f1092b29c1ae47d709e610cfec5dbf91df48bf99b79b549306411f285d" -> "sha256:8962123869fbe857a4f6a03c22eee04e24315b65583ba0c39651011a223fe0ac" [label=""];
  "sha256:8962123869fbe857a4f6a03c22eee04e24315b65583ba0c39651011a223fe0ac" -> "sha256:fefe3b761440dca28d26ce7fe27b213b40eb090efddc02b73cc56e40a9af98a4" [label=""];
  "sha256:57963bb560e4c151cbe282618f645638986fe9b38f4a2381f71f1ca3db4d0cc5" -> "sha256:fefe3b761440dca28d26ce7fe27b213b40eb090efddc02b73cc56e40a9af98a4" [label=""];
  "sha256:fefe3b761440dca28d26ce7fe27b213b40eb090efddc02b73cc56e40a9af98a4" -> "sha256:275c5b630da334c03eb04dd8e8362ba5dc33bbff45eb1d9ce55f1ffef1457d0e" [label=""];
  "sha256:275c5b630da334c03eb04dd8e8362ba5dc33bbff45eb1d9ce55f1ffef1457d0e" -> "sha256:f71f0db4367f7949336955a852648c25a52d335b44090eb65b2fbb6bfa828d08" [label=""];
  "sha256:57963bb560e4c151cbe282618f645638986fe9b38f4a2381f71f1ca3db4d0cc5" -> "sha256:f71f0db4367f7949336955a852648c25a52d335b44090eb65b2fbb6bfa828d08" [label=""];
  "sha256:f71f0db4367f7949336955a852648c25a52d335b44090eb65b2fbb6bfa828d08" -> "sha256:f18a290ae2fe9cc6a9472fdc92a2ad59202debcae0111b501e4577646917f86d" [label=""];
}

