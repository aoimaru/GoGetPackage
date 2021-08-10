[app/sources/168269429.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:b166f999d632dded9ee6fdb8d5ebf20d054e17d8a5ac2d041d27f343c0d247e5" [label="/bin/sh -c apt-get update && apt-get install -y git wget vim tmux   python-virtualenv build-essential libprotobuf-dev   protobuf-compiler libboost-dev libtool automake autoconf   pkg-config libboost-system-dev libboost-program-options-dev   default-jdk openssh-server" shape="box"];
  "sha256:4e13ebc531bab325ee5d087cbcbf45dac0997f886ffabed796dcdb5160894c81" [label="/bin/sh -c mkdir /src" shape="box"];
  "sha256:aac4728c192c9fb08e1c81a9ff076bcb988f8e0eb1b954548a14895aa843d9f8" [label="/bin/sh -c git clone --recursive https://github.com/ceph/ceph.git /src/ceph" shape="box"];
  "sha256:bad0c55f490150a5dbe0d0d2a8eb2174ee5fbfdd5195698058bf38615db55953" [label="/bin/sh -c cd /src/ceph && apt-get update && ./install-deps.sh" shape="box"];
  "sha256:73ef3d5ef8ae747b0a3348fcc5f10ed81fa7f3ebb8e72cd74b221dc56bcf70ea" [label="/bin/sh -c sed -i 's/UsePAM yes/UsePAM no/g' /etc/ssh/sshd_config" shape="box"];
  "sha256:b7d47b5d732797a3e6909fac8f29e758af6c1d582aa43d7d8c7797c37540b766" [label="/bin/sh -c ssh-keygen -f $HOME/.ssh/id_rsa -t rsa -N '' &&   cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys &&   chmod 600 ~/.ssh/authorized_keys" shape="box"];
  "sha256:a8687ac44f0274aed3b6560a50d2244432258f6dca26f8e13d971e015369a643" [label="/bin/sh -c echo 'Host *\\n  StrictHostKeyChecking no' > ~/.ssh/config" shape="box"];
  "sha256:7fab96610721bd4616b34c4f7d75cc0c0705d8e0330c95867d500d7d7c8cdf22" [label="/bin/sh -c git clone https://github.com/ceph/ceph-deploy /src/ceph-deploy" shape="box"];
  "sha256:763007abf885519c13327c295ab3716adb2f24ba67da288903773afd76e3ed96" [label="/bin/sh -c cd /src/ceph-deploy && ./bootstrap" shape="box"];
  "sha256:ab01c89082326e82c74a200cbc10f2345eb3e72d5f3b001bd40e7d372ca242e7" [label="/bin/sh -c ln -s /src/ceph-deploy/ceph-deploy /usr/bin/ceph-deploy" shape="box"];
  "sha256:f08a8abe8856bd370fe185d5a0d6b3e24fe55bfec20d3ad4ffe16c10b94097c8" [label="/bin/sh -c ceph-deploy install --release ${CEPH_VERSION} `hostname`" shape="box"];
  "sha256:1f35866c893f7db2b9b7ebc1f27c422d2953fe3c39ef8e780b3bda8ed49b0833" [label="/bin/sh -c ceph-deploy pkg --install librados-dev `hostname`" shape="box"];
  "sha256:25429bf3734805eb74bb978d4cda07596275d6af241510012b3c9f7ce98e50ab" [label="/bin/sh -c cd /src/ceph &&   git remote add noahdesu https://github.com/noahdesu/ceph.git &&   git fetch noahdesu &&   git checkout -b zlog_bench/jewel noahdesu/zlog_bench/jewel &&   ./autogen.sh &&   ./configure --prefix=/usr --with-librocksdb-static" shape="box"];
  "sha256:5102dcd472db735a5227a9cfdc2c052d0626c625f24c50af093402e24f976fe2" [label="/bin/sh -c cd /src/ceph/src &&   make libcls_zlog_bench.la libcls_zlog_bench_client.la &&   cp .libs/libcls_zlog_bench.so /usr/lib/rados-classes/ &&   cp .libs/libcls_zlog_bench_client.* /usr/lib/ &&   cp cls/zlog_bench/cls_zlog_bench_client.h /usr/include/rados/" shape="box"];
  "sha256:f96ab6d66e4214391baaa3e959717ae3293c0f61f5b5cd3382d37d8c00168625" [label="/bin/sh -c git clone --branch=physical-design https://github.com/cruzdb/zlog.git /src/zlog" shape="box"];
  "sha256:efeed23681cf09e06ce10d5716d8a04ad0fd8e20843e98e5331b1f3d485a539c" [label="/bin/sh -c cd /src/zlog && ./makeconf.sh && ./configure --without-cls-zlog && make" shape="box"];
  "sha256:bcb700de98827ed96aab0fd31d967b75f94def8ab647186a69aea4252be79fd9" [label="local://context" shape="ellipse"];
  "sha256:467189b409f6311dd818a9b8f4cdf136e9f11b83bbfcca7e2cdcb679014fd9ec" [label="copy{src=/entrypoint.sh, dest=/entrypoint.sh}" shape="note"];
  "sha256:a2771764045b9fa87fc555cd6e515eea28cc96a98c8e17021aff21e5a7c86981" [label="sha256:a2771764045b9fa87fc555cd6e515eea28cc96a98c8e17021aff21e5a7c86981" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:b166f999d632dded9ee6fdb8d5ebf20d054e17d8a5ac2d041d27f343c0d247e5" [label=""];
  "sha256:b166f999d632dded9ee6fdb8d5ebf20d054e17d8a5ac2d041d27f343c0d247e5" -> "sha256:4e13ebc531bab325ee5d087cbcbf45dac0997f886ffabed796dcdb5160894c81" [label=""];
  "sha256:4e13ebc531bab325ee5d087cbcbf45dac0997f886ffabed796dcdb5160894c81" -> "sha256:aac4728c192c9fb08e1c81a9ff076bcb988f8e0eb1b954548a14895aa843d9f8" [label=""];
  "sha256:aac4728c192c9fb08e1c81a9ff076bcb988f8e0eb1b954548a14895aa843d9f8" -> "sha256:bad0c55f490150a5dbe0d0d2a8eb2174ee5fbfdd5195698058bf38615db55953" [label=""];
  "sha256:bad0c55f490150a5dbe0d0d2a8eb2174ee5fbfdd5195698058bf38615db55953" -> "sha256:73ef3d5ef8ae747b0a3348fcc5f10ed81fa7f3ebb8e72cd74b221dc56bcf70ea" [label=""];
  "sha256:73ef3d5ef8ae747b0a3348fcc5f10ed81fa7f3ebb8e72cd74b221dc56bcf70ea" -> "sha256:b7d47b5d732797a3e6909fac8f29e758af6c1d582aa43d7d8c7797c37540b766" [label=""];
  "sha256:b7d47b5d732797a3e6909fac8f29e758af6c1d582aa43d7d8c7797c37540b766" -> "sha256:a8687ac44f0274aed3b6560a50d2244432258f6dca26f8e13d971e015369a643" [label=""];
  "sha256:a8687ac44f0274aed3b6560a50d2244432258f6dca26f8e13d971e015369a643" -> "sha256:7fab96610721bd4616b34c4f7d75cc0c0705d8e0330c95867d500d7d7c8cdf22" [label=""];
  "sha256:7fab96610721bd4616b34c4f7d75cc0c0705d8e0330c95867d500d7d7c8cdf22" -> "sha256:763007abf885519c13327c295ab3716adb2f24ba67da288903773afd76e3ed96" [label=""];
  "sha256:763007abf885519c13327c295ab3716adb2f24ba67da288903773afd76e3ed96" -> "sha256:ab01c89082326e82c74a200cbc10f2345eb3e72d5f3b001bd40e7d372ca242e7" [label=""];
  "sha256:ab01c89082326e82c74a200cbc10f2345eb3e72d5f3b001bd40e7d372ca242e7" -> "sha256:f08a8abe8856bd370fe185d5a0d6b3e24fe55bfec20d3ad4ffe16c10b94097c8" [label=""];
  "sha256:f08a8abe8856bd370fe185d5a0d6b3e24fe55bfec20d3ad4ffe16c10b94097c8" -> "sha256:1f35866c893f7db2b9b7ebc1f27c422d2953fe3c39ef8e780b3bda8ed49b0833" [label=""];
  "sha256:1f35866c893f7db2b9b7ebc1f27c422d2953fe3c39ef8e780b3bda8ed49b0833" -> "sha256:25429bf3734805eb74bb978d4cda07596275d6af241510012b3c9f7ce98e50ab" [label=""];
  "sha256:25429bf3734805eb74bb978d4cda07596275d6af241510012b3c9f7ce98e50ab" -> "sha256:5102dcd472db735a5227a9cfdc2c052d0626c625f24c50af093402e24f976fe2" [label=""];
  "sha256:5102dcd472db735a5227a9cfdc2c052d0626c625f24c50af093402e24f976fe2" -> "sha256:f96ab6d66e4214391baaa3e959717ae3293c0f61f5b5cd3382d37d8c00168625" [label=""];
  "sha256:f96ab6d66e4214391baaa3e959717ae3293c0f61f5b5cd3382d37d8c00168625" -> "sha256:efeed23681cf09e06ce10d5716d8a04ad0fd8e20843e98e5331b1f3d485a539c" [label=""];
  "sha256:efeed23681cf09e06ce10d5716d8a04ad0fd8e20843e98e5331b1f3d485a539c" -> "sha256:467189b409f6311dd818a9b8f4cdf136e9f11b83bbfcca7e2cdcb679014fd9ec" [label=""];
  "sha256:bcb700de98827ed96aab0fd31d967b75f94def8ab647186a69aea4252be79fd9" -> "sha256:467189b409f6311dd818a9b8f4cdf136e9f11b83bbfcca7e2cdcb679014fd9ec" [label=""];
  "sha256:467189b409f6311dd818a9b8f4cdf136e9f11b83bbfcca7e2cdcb679014fd9ec" -> "sha256:a2771764045b9fa87fc555cd6e515eea28cc96a98c8e17021aff21e5a7c86981" [label=""];
}

