[app/sources/448750007.Dockerfile]
digraph {
  "sha256:17ee79e4093a406984f49ed3810028c03f6bc1ec8f375a15ee99696b42445dfb" [label="docker-image://docker.io/library/ubuntu:14.04.1" shape="ellipse"];
  "sha256:284a4e79916b2994133dfccaebb366f76fd2358e2b1f143011d125dc2c2719f9" [label="/bin/sh -c apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10" shape="box"];
  "sha256:f8eacd90b4a351b1198e9eae2d7a3b5437a1974b8529093d8b2a50e0dba79ef0" [label="/bin/sh -c echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | tee /etc/apt/sources.list.d/mongodb.list" shape="box"];
  "sha256:c11861feafccfb57e2eafe56ac4a89fb38b51200aaf9588e06f0ccd0f44efe12" [label="/bin/sh -c apt-get update -qq &&   apt-get upgrade -yqq &&   apt-get -yqq install mongodb-org &&   apt-get -yqq clean" shape="box"];
  "sha256:45f093b9236ac9aa9921347633a543db2ea1393e545a6ba1d7d5d884b6c095b5" [label="/bin/sh -c mkdir -p /data/db" shape="box"];
  "sha256:9875cd7dc1120171a023f1e980f3d0102f62e97d1433991619bea6f8b9ae9321" [label="local://context" shape="ellipse"];
  "sha256:5e0366c55df9c35b11f65e59e067a008dedd87d31552df19178bca38a5e93c8f" [label="copy{src=/js/initiate.js, dest=/initiate.js}" shape="note"];
  "sha256:659ac9b26e9407161fc330c542bbf4dc24a98d3176e45b70f218d5fee0bb086f" [label="copy{src=/js/setupReplicaSet1.js, dest=/setupReplicaSet1.js}" shape="note"];
  "sha256:469fd73e3e560885fb6b6720f2f5bd19299931f25c8399f3848690fbcd72f267" [label="copy{src=/js/setupReplicaSet2.js, dest=/setupReplicaSet2.js}" shape="note"];
  "sha256:6b9909d44580dc45f34817f400864000ca07a134c8ee46f33cd2dec0d698ddee" [label="copy{src=/js/setupReplicaSet3.js, dest=/setupReplicaSet3.js}" shape="note"];
  "sha256:dfcccab1ec2462a322362c971c84dd960c2db77fdda01628406186bed4dd9c93" [label="copy{src=/js/addShard.js, dest=/addShard.js}" shape="note"];
  "sha256:0fa8530de87ed7cbbd2441096913c95d255364b0f3c7d645fb07e6e85947af0e" [label="copy{src=/js/addDBs.js, dest=/addDBs.js}" shape="note"];
  "sha256:74b7592f76552be6e933f0b2562d67fdd3d305560c847789427ada966622b559" [label="copy{src=/js/enabelSharding.js, dest=/enabelSharding.js}" shape="note"];
  "sha256:45c6be38aedbd1ac4e1bf4dbcc48d192f3041ee0df9d1046c47ac77eaa3c1786" [label="copy{src=/js/addIndexes.js, dest=/addIndexes.js}" shape="note"];
  "sha256:04a04b0aa1f9d6e70c7eebb417c91a6c8df2c21b2d9edd17a389a5c0f3d42777" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:7014bf370816bea3d77065bd23a10eaa2594d86276a30059107b28fab8299f13" [label="sha256:7014bf370816bea3d77065bd23a10eaa2594d86276a30059107b28fab8299f13" shape="plaintext"];
  "sha256:17ee79e4093a406984f49ed3810028c03f6bc1ec8f375a15ee99696b42445dfb" -> "sha256:284a4e79916b2994133dfccaebb366f76fd2358e2b1f143011d125dc2c2719f9" [label=""];
  "sha256:284a4e79916b2994133dfccaebb366f76fd2358e2b1f143011d125dc2c2719f9" -> "sha256:f8eacd90b4a351b1198e9eae2d7a3b5437a1974b8529093d8b2a50e0dba79ef0" [label=""];
  "sha256:f8eacd90b4a351b1198e9eae2d7a3b5437a1974b8529093d8b2a50e0dba79ef0" -> "sha256:c11861feafccfb57e2eafe56ac4a89fb38b51200aaf9588e06f0ccd0f44efe12" [label=""];
  "sha256:c11861feafccfb57e2eafe56ac4a89fb38b51200aaf9588e06f0ccd0f44efe12" -> "sha256:45f093b9236ac9aa9921347633a543db2ea1393e545a6ba1d7d5d884b6c095b5" [label=""];
  "sha256:45f093b9236ac9aa9921347633a543db2ea1393e545a6ba1d7d5d884b6c095b5" -> "sha256:5e0366c55df9c35b11f65e59e067a008dedd87d31552df19178bca38a5e93c8f" [label=""];
  "sha256:9875cd7dc1120171a023f1e980f3d0102f62e97d1433991619bea6f8b9ae9321" -> "sha256:5e0366c55df9c35b11f65e59e067a008dedd87d31552df19178bca38a5e93c8f" [label=""];
  "sha256:5e0366c55df9c35b11f65e59e067a008dedd87d31552df19178bca38a5e93c8f" -> "sha256:659ac9b26e9407161fc330c542bbf4dc24a98d3176e45b70f218d5fee0bb086f" [label=""];
  "sha256:9875cd7dc1120171a023f1e980f3d0102f62e97d1433991619bea6f8b9ae9321" -> "sha256:659ac9b26e9407161fc330c542bbf4dc24a98d3176e45b70f218d5fee0bb086f" [label=""];
  "sha256:659ac9b26e9407161fc330c542bbf4dc24a98d3176e45b70f218d5fee0bb086f" -> "sha256:469fd73e3e560885fb6b6720f2f5bd19299931f25c8399f3848690fbcd72f267" [label=""];
  "sha256:9875cd7dc1120171a023f1e980f3d0102f62e97d1433991619bea6f8b9ae9321" -> "sha256:469fd73e3e560885fb6b6720f2f5bd19299931f25c8399f3848690fbcd72f267" [label=""];
  "sha256:469fd73e3e560885fb6b6720f2f5bd19299931f25c8399f3848690fbcd72f267" -> "sha256:6b9909d44580dc45f34817f400864000ca07a134c8ee46f33cd2dec0d698ddee" [label=""];
  "sha256:9875cd7dc1120171a023f1e980f3d0102f62e97d1433991619bea6f8b9ae9321" -> "sha256:6b9909d44580dc45f34817f400864000ca07a134c8ee46f33cd2dec0d698ddee" [label=""];
  "sha256:6b9909d44580dc45f34817f400864000ca07a134c8ee46f33cd2dec0d698ddee" -> "sha256:dfcccab1ec2462a322362c971c84dd960c2db77fdda01628406186bed4dd9c93" [label=""];
  "sha256:9875cd7dc1120171a023f1e980f3d0102f62e97d1433991619bea6f8b9ae9321" -> "sha256:dfcccab1ec2462a322362c971c84dd960c2db77fdda01628406186bed4dd9c93" [label=""];
  "sha256:dfcccab1ec2462a322362c971c84dd960c2db77fdda01628406186bed4dd9c93" -> "sha256:0fa8530de87ed7cbbd2441096913c95d255364b0f3c7d645fb07e6e85947af0e" [label=""];
  "sha256:9875cd7dc1120171a023f1e980f3d0102f62e97d1433991619bea6f8b9ae9321" -> "sha256:0fa8530de87ed7cbbd2441096913c95d255364b0f3c7d645fb07e6e85947af0e" [label=""];
  "sha256:0fa8530de87ed7cbbd2441096913c95d255364b0f3c7d645fb07e6e85947af0e" -> "sha256:74b7592f76552be6e933f0b2562d67fdd3d305560c847789427ada966622b559" [label=""];
  "sha256:9875cd7dc1120171a023f1e980f3d0102f62e97d1433991619bea6f8b9ae9321" -> "sha256:74b7592f76552be6e933f0b2562d67fdd3d305560c847789427ada966622b559" [label=""];
  "sha256:74b7592f76552be6e933f0b2562d67fdd3d305560c847789427ada966622b559" -> "sha256:45c6be38aedbd1ac4e1bf4dbcc48d192f3041ee0df9d1046c47ac77eaa3c1786" [label=""];
  "sha256:9875cd7dc1120171a023f1e980f3d0102f62e97d1433991619bea6f8b9ae9321" -> "sha256:45c6be38aedbd1ac4e1bf4dbcc48d192f3041ee0df9d1046c47ac77eaa3c1786" [label=""];
  "sha256:45c6be38aedbd1ac4e1bf4dbcc48d192f3041ee0df9d1046c47ac77eaa3c1786" -> "sha256:04a04b0aa1f9d6e70c7eebb417c91a6c8df2c21b2d9edd17a389a5c0f3d42777" [label=""];
  "sha256:9875cd7dc1120171a023f1e980f3d0102f62e97d1433991619bea6f8b9ae9321" -> "sha256:04a04b0aa1f9d6e70c7eebb417c91a6c8df2c21b2d9edd17a389a5c0f3d42777" [label=""];
  "sha256:04a04b0aa1f9d6e70c7eebb417c91a6c8df2c21b2d9edd17a389a5c0f3d42777" -> "sha256:7014bf370816bea3d77065bd23a10eaa2594d86276a30059107b28fab8299f13" [label=""];
}

