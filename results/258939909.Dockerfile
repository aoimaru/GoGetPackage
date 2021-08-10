[app/sources/258939909.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:3fe961a86be05f49c2612dc1a8534c7749d895b8bb519cc31e2bfb15c42a19af" [label="/bin/sh -c echo 'APT::Install-Recommends \"0\";\\nAPT::Install-Suggests \"0\";' > /etc/apt/apt.conf.d/01norecommends" shape="box"];
  "sha256:3b3655f922fa09cc97fd3b094fb911b53c715b28d93ce240690bfd0b9f7b967a" [label="/bin/sh -c apt-get update && apt-get upgrade -y" shape="box"];
  "sha256:61f882a167ab00bfbc6b298928191751852693fd52460f84ebe157b9fa176461" [label="/bin/sh -c echo \"mysql-server mysql-server/root_password password root\" | debconf-set-selections" shape="box"];
  "sha256:b2ce72699518921f790a655d1c5780ee200c94f58ad3ddf869fc556fb6c5b1fe" [label="/bin/sh -c echo \"mysql-server mysql-server/root_password_again password root\" | debconf-set-selections" shape="box"];
  "sha256:048eae7c028bc49e4b036d9b74b1780cb0ed8a394dbcc5fa19e4a7499aa68570" [label="/bin/sh -c apt-get install -y gcc g++ make autoconf automake autotools-dev git libc6-dev libdb5.3-dev libreadline-dev libmysqlclient-dev libssl-dev git vim openjdk-7-jre-headless gdb gccxml mysql-server" shape="box"];
  "sha256:75c082e5052b952b1e5ad6c33f44e743ff0c89211978bdbec2ec08ccc8c20cf0" [label="/bin/sh -c mkdir -p /swgemu/MMOEngine && mkdir -p /swgemu/MMOCoreORB" shape="box"];
  "sha256:6e9813d16f5d96213f1875f33e48a21220c29f968dea4e858bd03970cbdeab14" [label="/bin/sh -c apt-get install -y wget && wget http://www.lua.org/ftp/lua-5.3.3.tar.gz && tar -xvf lua-5.3.3.tar.gz && cd lua-5.3.3 && make linux install && cd .. && rm -R lua-5.3.3 && rm lua-5.3.3.tar.gz && ldconfig" shape="box"];
  "sha256:6bd39f4cc9b4575c6580bce85058161d78ab803076e7d6d7d2c76fc9588e5b11" [label="/bin/sh -c mkdir -p /home/swgemu/workspace/tre" shape="box"];
  "sha256:9a08b3bff97c23fbd1ae593471f3fb239d2b0a5feeb911d8de03f642b5cf442a" [label="/bin/sh -c mkdir git && cd git && git clone http://review.swgemu.com/p/Core3.git && git clone http://review.swgemu.com/p/PublicEngine.git && cd PublicEngine/MMOEngine && make && chmod +x bin/idlc && cp bin/idlc /usr/local/bin/idlc && cd ../../Core3 && git checkout unstable && ln -s ../PublicEngine/MMOEngine MMOEngine" shape="box"];
  "sha256:a7050855ebd29420a021976d3d322d2ea02f8c93f5d571ab28cd24a5a0908d59" [label="/bin/sh -c echo 'export CLASSPATH=\"/git/PublicEngine/MMOEngine/bin/idlc.jar\"' >> /root/.profile" shape="box"];
  "sha256:f1fd6d3495c0d0aae8cdbb96774ea805306a1c81a7b0c8b6c5ee6bc24ef6bb34" [label="/bin/sh -c cd git/Core3/MMOCoreORB && make config && make build" shape="box"];
  "sha256:7c9886661bd51b73a7d7ae124019536bc2840dc56d32df617bc5166b62040df4" [label="/bin/sh -c apt-get install -y supervisor" shape="box"];
  "sha256:a84bc20141c3b522842638f7e7cfc5d51c93e89099f4fa0e2564599231fedd5c" [label="local://context" shape="ellipse"];
  "sha256:e2138788d05243708a6fbdabbe2d237070aff728c86f6755c3b23d8dd78a1fa2" [label="copy{src=/scripts/supervisord-core3.conf, dest=/etc/supervisor/conf.d/supervisord-core3.conf}" shape="note"];
  "sha256:c085752475c370816ce9a0bd9141cf98e0ee121b15f73cab7ac0cd3e777d2fb2" [label="copy{src=/scripts/run.sh, dest=/tmp/}" shape="note"];
  "sha256:a29e78ce7addd4fcee9266ba1b9fd8bc050b08a62346630c276caec643dc6560" [label="/bin/sh -c /bin/chmod +x /tmp/run.sh" shape="box"];
  "sha256:1412bfe6d9da16c107585b0f34bd0bfddafbe57cb9f3109a04c7f686c73e1926" [label="sha256:1412bfe6d9da16c107585b0f34bd0bfddafbe57cb9f3109a04c7f686c73e1926" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:3fe961a86be05f49c2612dc1a8534c7749d895b8bb519cc31e2bfb15c42a19af" [label=""];
  "sha256:3fe961a86be05f49c2612dc1a8534c7749d895b8bb519cc31e2bfb15c42a19af" -> "sha256:3b3655f922fa09cc97fd3b094fb911b53c715b28d93ce240690bfd0b9f7b967a" [label=""];
  "sha256:3b3655f922fa09cc97fd3b094fb911b53c715b28d93ce240690bfd0b9f7b967a" -> "sha256:61f882a167ab00bfbc6b298928191751852693fd52460f84ebe157b9fa176461" [label=""];
  "sha256:61f882a167ab00bfbc6b298928191751852693fd52460f84ebe157b9fa176461" -> "sha256:b2ce72699518921f790a655d1c5780ee200c94f58ad3ddf869fc556fb6c5b1fe" [label=""];
  "sha256:b2ce72699518921f790a655d1c5780ee200c94f58ad3ddf869fc556fb6c5b1fe" -> "sha256:048eae7c028bc49e4b036d9b74b1780cb0ed8a394dbcc5fa19e4a7499aa68570" [label=""];
  "sha256:048eae7c028bc49e4b036d9b74b1780cb0ed8a394dbcc5fa19e4a7499aa68570" -> "sha256:75c082e5052b952b1e5ad6c33f44e743ff0c89211978bdbec2ec08ccc8c20cf0" [label=""];
  "sha256:75c082e5052b952b1e5ad6c33f44e743ff0c89211978bdbec2ec08ccc8c20cf0" -> "sha256:6e9813d16f5d96213f1875f33e48a21220c29f968dea4e858bd03970cbdeab14" [label=""];
  "sha256:6e9813d16f5d96213f1875f33e48a21220c29f968dea4e858bd03970cbdeab14" -> "sha256:6bd39f4cc9b4575c6580bce85058161d78ab803076e7d6d7d2c76fc9588e5b11" [label=""];
  "sha256:6bd39f4cc9b4575c6580bce85058161d78ab803076e7d6d7d2c76fc9588e5b11" -> "sha256:9a08b3bff97c23fbd1ae593471f3fb239d2b0a5feeb911d8de03f642b5cf442a" [label=""];
  "sha256:9a08b3bff97c23fbd1ae593471f3fb239d2b0a5feeb911d8de03f642b5cf442a" -> "sha256:a7050855ebd29420a021976d3d322d2ea02f8c93f5d571ab28cd24a5a0908d59" [label=""];
  "sha256:a7050855ebd29420a021976d3d322d2ea02f8c93f5d571ab28cd24a5a0908d59" -> "sha256:f1fd6d3495c0d0aae8cdbb96774ea805306a1c81a7b0c8b6c5ee6bc24ef6bb34" [label=""];
  "sha256:f1fd6d3495c0d0aae8cdbb96774ea805306a1c81a7b0c8b6c5ee6bc24ef6bb34" -> "sha256:7c9886661bd51b73a7d7ae124019536bc2840dc56d32df617bc5166b62040df4" [label=""];
  "sha256:7c9886661bd51b73a7d7ae124019536bc2840dc56d32df617bc5166b62040df4" -> "sha256:e2138788d05243708a6fbdabbe2d237070aff728c86f6755c3b23d8dd78a1fa2" [label=""];
  "sha256:a84bc20141c3b522842638f7e7cfc5d51c93e89099f4fa0e2564599231fedd5c" -> "sha256:e2138788d05243708a6fbdabbe2d237070aff728c86f6755c3b23d8dd78a1fa2" [label=""];
  "sha256:e2138788d05243708a6fbdabbe2d237070aff728c86f6755c3b23d8dd78a1fa2" -> "sha256:c085752475c370816ce9a0bd9141cf98e0ee121b15f73cab7ac0cd3e777d2fb2" [label=""];
  "sha256:a84bc20141c3b522842638f7e7cfc5d51c93e89099f4fa0e2564599231fedd5c" -> "sha256:c085752475c370816ce9a0bd9141cf98e0ee121b15f73cab7ac0cd3e777d2fb2" [label=""];
  "sha256:c085752475c370816ce9a0bd9141cf98e0ee121b15f73cab7ac0cd3e777d2fb2" -> "sha256:a29e78ce7addd4fcee9266ba1b9fd8bc050b08a62346630c276caec643dc6560" [label=""];
  "sha256:a29e78ce7addd4fcee9266ba1b9fd8bc050b08a62346630c276caec643dc6560" -> "sha256:1412bfe6d9da16c107585b0f34bd0bfddafbe57cb9f3109a04c7f686c73e1926" [label=""];
}

