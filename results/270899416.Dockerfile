[app/sources/270899416.Dockerfile]
digraph {
  "sha256:f2ea6f0810360dfecf2f0bd5a4a0717f62b323cdeccc4ab275c43ddd55433252" [label="docker-image://docker.io/phusion/baseimage:0.9.19" shape="ellipse"];
  "sha256:042b94cf5aa9acdee71d9084280a38e7aabba7558dfa698749e80e5a74d8755e" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:9e06171528dc1d94ed65532acb7b5ede1f8f377194ce9959870603fb0e5d1dee" [label="/bin/sh -c apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils yasm" shape="box"];
  "sha256:51913e2383a2a6a7846d6374f4589a98483598d0c94b9367eb5160f0efe08388" [label="/bin/sh -c apt-get install -y libboost-all-dev libzmq3-dev curl wget" shape="box"];
  "sha256:657aa1a15cb9fca659bef7171021cb602523327367027ef6b640d4c87b751c19" [label="/bin/sh -c mkdir ~/source" shape="box"];
  "sha256:cd4f1da51f210ee092cf0cd160d02e76b00deb33e6986651db0dc8c8623d004d" [label="/bin/sh -c cd ~/source && wget https://github.com/Bitcoin-ABC/bitcoin-abc/archive/v0.14.6.tar.gz" shape="box"];
  "sha256:fb1e02b2bfa2066e3a135f798846af27143e0d16b7e93f1be1716f79977e64a0" [label="/bin/sh -c cd ~/source   && tar zxf v0.14.6.tar.gz && cd bitcoin-abc-0.14.6   && ./autogen.sh   && ./configure --disable-wallet --disable-tests   && make && make install" shape="box"];
  "sha256:80985bdfc1d56d295b9c1be78381821dd0bd1c133523d34823f26dc0c0759efc" [label="/bin/sh -c mkdir -p /root/.bitcoin" shape="box"];
  "sha256:a009735ab6980e1898985519dbd54483c59cae0086723008b490f6e67a8324dc" [label="/bin/sh -c mkdir -p /root/scripts" shape="box"];
  "sha256:5123c62870f4d3bc420bfb25ab24be7b26d6a86fc5e8c0e79cf51845e9da4f87" [label="local://context" shape="ellipse"];
  "sha256:02b7346c8fdd61b1c07ec7bf4dfa636c003109e38d60eb5ca79e106cefbe30ed" [label="copy{src=/bitmain-monitor-bitcoind.sh, dest=/root/scripts/bitmain-monitor-bitcoind.sh}" shape="note"];
  "sha256:8fe0142dd3180ad9cf95bd892ec84286860c31d4e0b43b434b38dc043cbc39b7" [label="copy{src=/crontab.txt, dest=/etc/cron.d/bitcoind}" shape="note"];
  "sha256:6252be8a7e9c0769206e251e40be3758b4ae98bb344fadeb32fd2a8d6c72e403" [label="copy{src=/logrotate-bitcoind, dest=/etc/logrotate.d/bitcoind}" shape="note"];
  "sha256:0a7e5c5d76decab946663f8410304c088044454d7c39d06f5ec1c1a4dc371a74" [label="/bin/sh -c mkdir    /etc/service/bitcoind" shape="box"];
  "sha256:2ab51d5050256c2f50bb8de531913fccfe9c97b825393386e90a540c235cbb6a" [label="copy{src=/run, dest=/etc/service/bitcoind/run}" shape="note"];
  "sha256:6fbded23435f14f1b2647d9c9d40e73c61e88faa32056f6d2205b67e2d1a5262" [label="/bin/sh -c chmod +x /etc/service/bitcoind/run" shape="box"];
  "sha256:86b38d89e0586187e42adcd00aba5ccee317d4ce0701239971e0f93d91fe20a5" [label="/bin/sh -c rm -rf ~/source" shape="box"];
  "sha256:aab86cb4902edffcdd89efac781e07149c2b898f9f01e5b4bdd502fc6ccc3992" [label="/bin/sh -c apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:bdc6710b26ab95047b6dd9f9a80b8489d7f67fd59e63dd95b4ac93218340e835" [label="sha256:bdc6710b26ab95047b6dd9f9a80b8489d7f67fd59e63dd95b4ac93218340e835" shape="plaintext"];
  "sha256:f2ea6f0810360dfecf2f0bd5a4a0717f62b323cdeccc4ab275c43ddd55433252" -> "sha256:042b94cf5aa9acdee71d9084280a38e7aabba7558dfa698749e80e5a74d8755e" [label=""];
  "sha256:042b94cf5aa9acdee71d9084280a38e7aabba7558dfa698749e80e5a74d8755e" -> "sha256:9e06171528dc1d94ed65532acb7b5ede1f8f377194ce9959870603fb0e5d1dee" [label=""];
  "sha256:9e06171528dc1d94ed65532acb7b5ede1f8f377194ce9959870603fb0e5d1dee" -> "sha256:51913e2383a2a6a7846d6374f4589a98483598d0c94b9367eb5160f0efe08388" [label=""];
  "sha256:51913e2383a2a6a7846d6374f4589a98483598d0c94b9367eb5160f0efe08388" -> "sha256:657aa1a15cb9fca659bef7171021cb602523327367027ef6b640d4c87b751c19" [label=""];
  "sha256:657aa1a15cb9fca659bef7171021cb602523327367027ef6b640d4c87b751c19" -> "sha256:cd4f1da51f210ee092cf0cd160d02e76b00deb33e6986651db0dc8c8623d004d" [label=""];
  "sha256:cd4f1da51f210ee092cf0cd160d02e76b00deb33e6986651db0dc8c8623d004d" -> "sha256:fb1e02b2bfa2066e3a135f798846af27143e0d16b7e93f1be1716f79977e64a0" [label=""];
  "sha256:fb1e02b2bfa2066e3a135f798846af27143e0d16b7e93f1be1716f79977e64a0" -> "sha256:80985bdfc1d56d295b9c1be78381821dd0bd1c133523d34823f26dc0c0759efc" [label=""];
  "sha256:80985bdfc1d56d295b9c1be78381821dd0bd1c133523d34823f26dc0c0759efc" -> "sha256:a009735ab6980e1898985519dbd54483c59cae0086723008b490f6e67a8324dc" [label=""];
  "sha256:a009735ab6980e1898985519dbd54483c59cae0086723008b490f6e67a8324dc" -> "sha256:02b7346c8fdd61b1c07ec7bf4dfa636c003109e38d60eb5ca79e106cefbe30ed" [label=""];
  "sha256:5123c62870f4d3bc420bfb25ab24be7b26d6a86fc5e8c0e79cf51845e9da4f87" -> "sha256:02b7346c8fdd61b1c07ec7bf4dfa636c003109e38d60eb5ca79e106cefbe30ed" [label=""];
  "sha256:02b7346c8fdd61b1c07ec7bf4dfa636c003109e38d60eb5ca79e106cefbe30ed" -> "sha256:8fe0142dd3180ad9cf95bd892ec84286860c31d4e0b43b434b38dc043cbc39b7" [label=""];
  "sha256:5123c62870f4d3bc420bfb25ab24be7b26d6a86fc5e8c0e79cf51845e9da4f87" -> "sha256:8fe0142dd3180ad9cf95bd892ec84286860c31d4e0b43b434b38dc043cbc39b7" [label=""];
  "sha256:8fe0142dd3180ad9cf95bd892ec84286860c31d4e0b43b434b38dc043cbc39b7" -> "sha256:6252be8a7e9c0769206e251e40be3758b4ae98bb344fadeb32fd2a8d6c72e403" [label=""];
  "sha256:5123c62870f4d3bc420bfb25ab24be7b26d6a86fc5e8c0e79cf51845e9da4f87" -> "sha256:6252be8a7e9c0769206e251e40be3758b4ae98bb344fadeb32fd2a8d6c72e403" [label=""];
  "sha256:6252be8a7e9c0769206e251e40be3758b4ae98bb344fadeb32fd2a8d6c72e403" -> "sha256:0a7e5c5d76decab946663f8410304c088044454d7c39d06f5ec1c1a4dc371a74" [label=""];
  "sha256:0a7e5c5d76decab946663f8410304c088044454d7c39d06f5ec1c1a4dc371a74" -> "sha256:2ab51d5050256c2f50bb8de531913fccfe9c97b825393386e90a540c235cbb6a" [label=""];
  "sha256:5123c62870f4d3bc420bfb25ab24be7b26d6a86fc5e8c0e79cf51845e9da4f87" -> "sha256:2ab51d5050256c2f50bb8de531913fccfe9c97b825393386e90a540c235cbb6a" [label=""];
  "sha256:2ab51d5050256c2f50bb8de531913fccfe9c97b825393386e90a540c235cbb6a" -> "sha256:6fbded23435f14f1b2647d9c9d40e73c61e88faa32056f6d2205b67e2d1a5262" [label=""];
  "sha256:6fbded23435f14f1b2647d9c9d40e73c61e88faa32056f6d2205b67e2d1a5262" -> "sha256:86b38d89e0586187e42adcd00aba5ccee317d4ce0701239971e0f93d91fe20a5" [label=""];
  "sha256:86b38d89e0586187e42adcd00aba5ccee317d4ce0701239971e0f93d91fe20a5" -> "sha256:aab86cb4902edffcdd89efac781e07149c2b898f9f01e5b4bdd502fc6ccc3992" [label=""];
  "sha256:aab86cb4902edffcdd89efac781e07149c2b898f9f01e5b4bdd502fc6ccc3992" -> "sha256:bdc6710b26ab95047b6dd9f9a80b8489d7f67fd59e63dd95b4ac93218340e835" [label=""];
}

