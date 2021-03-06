[app/sources/146431493.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:962702144b3cb26b5ef3a9d94b4eb8b6155453ea5f16dab97a6d78310ab6f6c0" [label="/bin/sh -c echo \"deb http://archive.ubuntu.com/ubuntu precise main universe\" > /etc/apt/sources.list" shape="box"];
  "sha256:aa1bb83821baa9b477f786e8190dd5dbdf68996e1a3547b2ea9274c9967b4c0d" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:c32f5ece78d506abf327d19b8245cce5b150ee75ab8d3f80ba4157b3fb0022ef" [label="/bin/sh -c apt-get upgrade -y" shape="box"];
  "sha256:17f0b526fa8a9b267b7478b03cd544811024a21dd25d4838434414466341b0fe" [label="/bin/sh -c apt-get -y -q install redis-server supervisor python-software-properties python g++ make git" shape="box"];
  "sha256:9799454c0162215b6e0cd445555b29d3ef613b4b3784f6e35469f3a7a7800235" [label="/bin/sh -c add-apt-repository ppa:chris-lea/node.js" shape="box"];
  "sha256:04d5eb699b74890050d9130b6871a4fcfd92d3416a0576cb0f9660fb66753b36" [label="/bin/sh -c apt-get -y -q update" shape="box"];
  "sha256:cc64cc4a71d0d548f151780d0c910f01d31cf882ccac479ad26628064f0d180e" [label="/bin/sh -c apt-get -y -q install nodejs" shape="box"];
  "sha256:3c8d28fcaea8b7520f61d6938405f0bfc388141b7473b5811b9a082ba5852817" [label="/bin/sh -c npm install -g Haraka" shape="box"];
  "sha256:cae58132a8dd2c21e0c3b77518be339ceafe33087a9474a8a3cdf6b82f398f99" [label="/bin/sh -c mkdir -p /var/log/supervisor" shape="box"];
  "sha256:806953f7418048ed53706b96f82a31b4dd2c3370f6e64769f011938075a997d4" [label="local://context" shape="ellipse"];
  "sha256:703217e16f717dc8ef1604c39ffbda97c04ab84c7b089c07181c0e681f0f996d" [label="copy{src=/supervisord.conf, dest=/etc/supervisor/conf.d/supervisord.conf}" shape="note"];
  "sha256:ce61b697fc2c5d852bcf766d2e23583f1723b8fe14f25d25c2674f0f0deb8121" [label="/bin/sh -c haraka -i /usr/local/haraka" shape="box"];
  "sha256:67ceb0c33895a6014029e98786b51e08dd81b42d236befb0e26d50651d514cd0" [label="copy{src=/config/data.http_forward.ini, dest=/usr/local/haraka/config/data.http_forward.ini}" shape="note"];
  "sha256:313cb49134978714430e5636d136b9ea6ca62d7ffc38f82df298a90a7deaea2e" [label="copy{src=/config/plugins, dest=/usr/local/haraka/config/plugins}" shape="note"];
  "sha256:47696ac7fc512353601c24eab5f4d0dbb9925d30717bb9a32c6ba41df3372f0b" [label="copy{src=/config/host_list, dest=/usr/local/haraka/config/host_list}" shape="note"];
  "sha256:90d946b0fb945b7cf60caa4bca118388f21e12b3e4de994c14eab6bfc4ac26c5" [label="copy{src=/docs/plugins/data.http_forward.md, dest=/usr/local/haraka/docs/plugins/data.http_forward.md}" shape="note"];
  "sha256:b8cb2bf08d76d7728ff592077d8684d2cdde295b80bb178d3163dcbacc655c7d" [label="copy{src=/plugins/data.http_forward.js, dest=/usr/local/haraka/plugins/data.http_forward.js}" shape="note"];
  "sha256:39aca9f0b531f46bd8c4647bf40f3734454b1647e4d86147a33485a0fc56e15a" [label="copy{src=/package.json, dest=/usr/local/haraka/package.json}" shape="note"];
  "sha256:1b6c4d90bb022d2aa2f14c69cfe3c631013df51836d53cb8a8205d035796db80" [label="/bin/sh -c cd /usr/local/haraka && npm install" shape="box"];
  "sha256:3f43fc8a6c1b0c9e99e1d456c9652891d39b22c610b8e4426bfd04ee39639f21" [label="sha256:3f43fc8a6c1b0c9e99e1d456c9652891d39b22c610b8e4426bfd04ee39639f21" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:962702144b3cb26b5ef3a9d94b4eb8b6155453ea5f16dab97a6d78310ab6f6c0" [label=""];
  "sha256:962702144b3cb26b5ef3a9d94b4eb8b6155453ea5f16dab97a6d78310ab6f6c0" -> "sha256:aa1bb83821baa9b477f786e8190dd5dbdf68996e1a3547b2ea9274c9967b4c0d" [label=""];
  "sha256:aa1bb83821baa9b477f786e8190dd5dbdf68996e1a3547b2ea9274c9967b4c0d" -> "sha256:c32f5ece78d506abf327d19b8245cce5b150ee75ab8d3f80ba4157b3fb0022ef" [label=""];
  "sha256:c32f5ece78d506abf327d19b8245cce5b150ee75ab8d3f80ba4157b3fb0022ef" -> "sha256:17f0b526fa8a9b267b7478b03cd544811024a21dd25d4838434414466341b0fe" [label=""];
  "sha256:17f0b526fa8a9b267b7478b03cd544811024a21dd25d4838434414466341b0fe" -> "sha256:9799454c0162215b6e0cd445555b29d3ef613b4b3784f6e35469f3a7a7800235" [label=""];
  "sha256:9799454c0162215b6e0cd445555b29d3ef613b4b3784f6e35469f3a7a7800235" -> "sha256:04d5eb699b74890050d9130b6871a4fcfd92d3416a0576cb0f9660fb66753b36" [label=""];
  "sha256:04d5eb699b74890050d9130b6871a4fcfd92d3416a0576cb0f9660fb66753b36" -> "sha256:cc64cc4a71d0d548f151780d0c910f01d31cf882ccac479ad26628064f0d180e" [label=""];
  "sha256:cc64cc4a71d0d548f151780d0c910f01d31cf882ccac479ad26628064f0d180e" -> "sha256:3c8d28fcaea8b7520f61d6938405f0bfc388141b7473b5811b9a082ba5852817" [label=""];
  "sha256:3c8d28fcaea8b7520f61d6938405f0bfc388141b7473b5811b9a082ba5852817" -> "sha256:cae58132a8dd2c21e0c3b77518be339ceafe33087a9474a8a3cdf6b82f398f99" [label=""];
  "sha256:cae58132a8dd2c21e0c3b77518be339ceafe33087a9474a8a3cdf6b82f398f99" -> "sha256:703217e16f717dc8ef1604c39ffbda97c04ab84c7b089c07181c0e681f0f996d" [label=""];
  "sha256:806953f7418048ed53706b96f82a31b4dd2c3370f6e64769f011938075a997d4" -> "sha256:703217e16f717dc8ef1604c39ffbda97c04ab84c7b089c07181c0e681f0f996d" [label=""];
  "sha256:703217e16f717dc8ef1604c39ffbda97c04ab84c7b089c07181c0e681f0f996d" -> "sha256:ce61b697fc2c5d852bcf766d2e23583f1723b8fe14f25d25c2674f0f0deb8121" [label=""];
  "sha256:ce61b697fc2c5d852bcf766d2e23583f1723b8fe14f25d25c2674f0f0deb8121" -> "sha256:67ceb0c33895a6014029e98786b51e08dd81b42d236befb0e26d50651d514cd0" [label=""];
  "sha256:806953f7418048ed53706b96f82a31b4dd2c3370f6e64769f011938075a997d4" -> "sha256:67ceb0c33895a6014029e98786b51e08dd81b42d236befb0e26d50651d514cd0" [label=""];
  "sha256:67ceb0c33895a6014029e98786b51e08dd81b42d236befb0e26d50651d514cd0" -> "sha256:313cb49134978714430e5636d136b9ea6ca62d7ffc38f82df298a90a7deaea2e" [label=""];
  "sha256:806953f7418048ed53706b96f82a31b4dd2c3370f6e64769f011938075a997d4" -> "sha256:313cb49134978714430e5636d136b9ea6ca62d7ffc38f82df298a90a7deaea2e" [label=""];
  "sha256:313cb49134978714430e5636d136b9ea6ca62d7ffc38f82df298a90a7deaea2e" -> "sha256:47696ac7fc512353601c24eab5f4d0dbb9925d30717bb9a32c6ba41df3372f0b" [label=""];
  "sha256:806953f7418048ed53706b96f82a31b4dd2c3370f6e64769f011938075a997d4" -> "sha256:47696ac7fc512353601c24eab5f4d0dbb9925d30717bb9a32c6ba41df3372f0b" [label=""];
  "sha256:47696ac7fc512353601c24eab5f4d0dbb9925d30717bb9a32c6ba41df3372f0b" -> "sha256:90d946b0fb945b7cf60caa4bca118388f21e12b3e4de994c14eab6bfc4ac26c5" [label=""];
  "sha256:806953f7418048ed53706b96f82a31b4dd2c3370f6e64769f011938075a997d4" -> "sha256:90d946b0fb945b7cf60caa4bca118388f21e12b3e4de994c14eab6bfc4ac26c5" [label=""];
  "sha256:90d946b0fb945b7cf60caa4bca118388f21e12b3e4de994c14eab6bfc4ac26c5" -> "sha256:b8cb2bf08d76d7728ff592077d8684d2cdde295b80bb178d3163dcbacc655c7d" [label=""];
  "sha256:806953f7418048ed53706b96f82a31b4dd2c3370f6e64769f011938075a997d4" -> "sha256:b8cb2bf08d76d7728ff592077d8684d2cdde295b80bb178d3163dcbacc655c7d" [label=""];
  "sha256:b8cb2bf08d76d7728ff592077d8684d2cdde295b80bb178d3163dcbacc655c7d" -> "sha256:39aca9f0b531f46bd8c4647bf40f3734454b1647e4d86147a33485a0fc56e15a" [label=""];
  "sha256:806953f7418048ed53706b96f82a31b4dd2c3370f6e64769f011938075a997d4" -> "sha256:39aca9f0b531f46bd8c4647bf40f3734454b1647e4d86147a33485a0fc56e15a" [label=""];
  "sha256:39aca9f0b531f46bd8c4647bf40f3734454b1647e4d86147a33485a0fc56e15a" -> "sha256:1b6c4d90bb022d2aa2f14c69cfe3c631013df51836d53cb8a8205d035796db80" [label=""];
  "sha256:1b6c4d90bb022d2aa2f14c69cfe3c631013df51836d53cb8a8205d035796db80" -> "sha256:3f43fc8a6c1b0c9e99e1d456c9652891d39b22c610b8e4426bfd04ee39639f21" [label=""];
}

