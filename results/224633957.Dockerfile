[app/sources/224633957.Dockerfile]
digraph {
  "sha256:15be03b74583c33781d3f8ef22f19a25561a4cfefa3ddd6462cdc80159493645" [label="docker-image://demoregistry.dataman-inc.com/library/centos7-jdk8:latest" shape="ellipse"];
  "sha256:3fdf42a9123943df5bc040bf226fc0cfa61ce98988af5823b8d04b55f1e5eda3" [label="/bin/sh -c curl -o - http://mirrors.hust.edu.cn/apache/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz|tar -zxf - -C /opt     && ln -s  /opt/zookeeper-3.4.6 /usr/local/zookeeper" shape="box"];
  "sha256:26599797dec77e3fd1ceabeb4a3e7839e68322b2e9032b21954bd545fed88b97" [label="/bin/sh -c mkdir -p /data/run &&     mkdir -p /data/logs &&     mkdir -p /data/zookeeper/zklog &&     mkdir -p /data/zookeeper/snapshot" shape="box"];
  "sha256:4b42619a40930cc55b3fa1f7f53d85b5b49ad0a90dc4c0e82c8833f135685874" [label="local://context" shape="ellipse"];
  "sha256:cef1bcd00662db080e8cec8ac2245370293714f8fdf22cc1156e93d06215b6ee" [label="copy{src=/zoo.cfg.template, dest=/usr/local/zookeeper/conf/zoo.cfg}" shape="note"];
  "sha256:58abb2458ca3943689b8139af753406f4a0d4c6f20ca548d0cf717794c8703bb" [label="copy{src=/zkServer.sh, dest=/usr/local/zookeeper/bin/}" shape="note"];
  "sha256:e2ddf365863d40bc30c4dfd1d6c08a84809b2b10c5aa6a0916a5dc773c58717b" [label="copy{src=/dataman_zookeeper.sh, dest=/data/run/}" shape="note"];
  "sha256:2ae8d59c469c0de985d7ffbce7866155538119df09fd8db598f6ec804d07eb91" [label="/bin/sh -c chmod 755 /data/run/dataman_zookeeper.sh" shape="box"];
  "sha256:9e7fbdcc414b9a42771f3a0112d039c216a5d67a7ff296b7223dd94112a3ca35" [label="mkdir{path=/usr/local/zookeeper}" shape="note"];
  "sha256:74059f50a9e7bb50bd411484e240af4c9f85a13c6502a0cb0ef84433ce654bee" [label="sha256:74059f50a9e7bb50bd411484e240af4c9f85a13c6502a0cb0ef84433ce654bee" shape="plaintext"];
  "sha256:15be03b74583c33781d3f8ef22f19a25561a4cfefa3ddd6462cdc80159493645" -> "sha256:3fdf42a9123943df5bc040bf226fc0cfa61ce98988af5823b8d04b55f1e5eda3" [label=""];
  "sha256:3fdf42a9123943df5bc040bf226fc0cfa61ce98988af5823b8d04b55f1e5eda3" -> "sha256:26599797dec77e3fd1ceabeb4a3e7839e68322b2e9032b21954bd545fed88b97" [label=""];
  "sha256:26599797dec77e3fd1ceabeb4a3e7839e68322b2e9032b21954bd545fed88b97" -> "sha256:cef1bcd00662db080e8cec8ac2245370293714f8fdf22cc1156e93d06215b6ee" [label=""];
  "sha256:4b42619a40930cc55b3fa1f7f53d85b5b49ad0a90dc4c0e82c8833f135685874" -> "sha256:cef1bcd00662db080e8cec8ac2245370293714f8fdf22cc1156e93d06215b6ee" [label=""];
  "sha256:cef1bcd00662db080e8cec8ac2245370293714f8fdf22cc1156e93d06215b6ee" -> "sha256:58abb2458ca3943689b8139af753406f4a0d4c6f20ca548d0cf717794c8703bb" [label=""];
  "sha256:4b42619a40930cc55b3fa1f7f53d85b5b49ad0a90dc4c0e82c8833f135685874" -> "sha256:58abb2458ca3943689b8139af753406f4a0d4c6f20ca548d0cf717794c8703bb" [label=""];
  "sha256:58abb2458ca3943689b8139af753406f4a0d4c6f20ca548d0cf717794c8703bb" -> "sha256:e2ddf365863d40bc30c4dfd1d6c08a84809b2b10c5aa6a0916a5dc773c58717b" [label=""];
  "sha256:4b42619a40930cc55b3fa1f7f53d85b5b49ad0a90dc4c0e82c8833f135685874" -> "sha256:e2ddf365863d40bc30c4dfd1d6c08a84809b2b10c5aa6a0916a5dc773c58717b" [label=""];
  "sha256:e2ddf365863d40bc30c4dfd1d6c08a84809b2b10c5aa6a0916a5dc773c58717b" -> "sha256:2ae8d59c469c0de985d7ffbce7866155538119df09fd8db598f6ec804d07eb91" [label=""];
  "sha256:2ae8d59c469c0de985d7ffbce7866155538119df09fd8db598f6ec804d07eb91" -> "sha256:9e7fbdcc414b9a42771f3a0112d039c216a5d67a7ff296b7223dd94112a3ca35" [label=""];
  "sha256:9e7fbdcc414b9a42771f3a0112d039c216a5d67a7ff296b7223dd94112a3ca35" -> "sha256:74059f50a9e7bb50bd411484e240af4c9f85a13c6502a0cb0ef84433ce654bee" [label=""];
}

