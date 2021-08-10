[app/sources/249575744.Dockerfile]
digraph {
  "sha256:f7f5a9c397d2e5abd759f9719f862151579b5aeb7705ecb4de33bea57f675124" [label="local://context" shape="ellipse"];
  "sha256:a940a83ac56d42caf5383589b7e7ed601aeaee01b76f1bf834ed22db7b1f468b" [label="docker-image://docker.io/phusion/baseimage:0.10.2" shape="ellipse"];
  "sha256:dd2e2af1471365672afbf2fd18653fa23135eebfe22ac1bf680b7e36ab5f4d56" [label="copy{src=/sources-aliyun.com.list, dest=/etc/apt/sources.list}" shape="note"];
  "sha256:5c4f0f98f4568ea174989cf4d65226d537adeb9f91109abec5773478a7905c68" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:6ca76457e9d648a28a37e9d16a126fafc2d7e32fe37803db3a076059c64a78bd" [label="/bin/sh -c apt-get install -y build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils yasm" shape="box"];
  "sha256:614f72872a991c77161069efcf6fca55a0ff83749723a9e71364ca78a86103cc" [label="/bin/sh -c apt-get install -y libboost-all-dev libzmq3-dev curl wget" shape="box"];
  "sha256:1450a68d655734e048defea093429e75d905d8b70d69665e8323fd0883b9b754" [label="/bin/sh -c mkdir ~/source" shape="box"];
  "sha256:aded7d25a4b03014512465708a8350fa751bb78fb3790da86496b1cbd28a227b" [label="/bin/sh -c cd ~/source && wget https://github.com/namecoin/namecoin-core/archive/nc0.16.3.tar.gz -O nc0.16.3.tar.gz   && tar zxf nc0.16.3.tar.gz" shape="box"];
  "sha256:969680db2a97a0f7d29aec96714c907f51c7017dd51785f48ea35dc0078fadf6" [label="/bin/sh -c cd ~/source/namecoin-core-nc0.16.3   && mkdir -p /usr/local/db4   && wget 'http://download.oracle.com/berkeley-db/db-4.8.30.NC.tar.gz'   && tar -xzvf db-4.8.30.NC.tar.gz   && cd db-4.8.30.NC/build_unix   && ../dist/configure --enable-cxx --disable-shared --with-pic --prefix=/usr/local/db4   && make install" shape="box"];
  "sha256:784b24c98299968cf253ffedcbdc759509f26e8811d5f8ae99a67496d1983f5f" [label="/bin/sh -c cd ~/source/namecoin-core-nc0.16.3   && ./autogen.sh   && ./configure LDFLAGS=\"-L/usr/local/db4/lib\" CPPFLAGS=\"-I/usr/local/db4/include\" --without-miniupnpc   && make -j2 && make install" shape="box"];
  "sha256:678f513d7e26ad767a888641bd59f6d29a830a0916f04fc0d27379875a01674a" [label="/bin/sh -c mkdir -p /root/.namecoin" shape="box"];
  "sha256:1d4392ebe5867c6b22a289026c689a2771c59a6b22b0676f41ca273fe6ef6ab5" [label="/bin/sh -c mkdir -p /root/scripts" shape="box"];
  "sha256:c4f24090a6538059ce516da49d2e936893450e9ff32611742c8e1125415680f1" [label="copy{src=/watch-namecoind.sh, dest=/root/scripts/watch-namecoind.sh}" shape="note"];
  "sha256:182878c9d9898ed09293ca534bb5e992a77d3b662f3df30f280818efcde2d039" [label="copy{src=/crontab.txt, dest=/etc/cron.d/namecoind}" shape="note"];
  "sha256:2794dc0bf353317628a93f7b90c9173d828e8488afe962e80c6f135bb86319da" [label="copy{src=/logrotate-namecoind, dest=/etc/logrotate.d/namecoind}" shape="note"];
  "sha256:a0661ad8b437f20be12f04092e5bfc7e21292e5e2efa6358341233060fbfcb0e" [label="/bin/sh -c mkdir /etc/service/namecoind" shape="box"];
  "sha256:8a691d08d091d7acb8229700f2a2a98bf497844bc8191e3926a8f5d17946e299" [label="copy{src=/run, dest=/etc/service/namecoind/run}" shape="note"];
  "sha256:fd7d796ddfc5ecd6634ede2e98ca2a35ed6731783cc83fa5f8e32ebac92d5efd" [label="/bin/sh -c chmod +x /etc/service/namecoind/run" shape="box"];
  "sha256:c2dbcc43f34895771bd024c5b57fd509c1f1fad00bc3c8010bafd3207881fc62" [label="sha256:c2dbcc43f34895771bd024c5b57fd509c1f1fad00bc3c8010bafd3207881fc62" shape="plaintext"];
  "sha256:a940a83ac56d42caf5383589b7e7ed601aeaee01b76f1bf834ed22db7b1f468b" -> "sha256:dd2e2af1471365672afbf2fd18653fa23135eebfe22ac1bf680b7e36ab5f4d56" [label=""];
  "sha256:f7f5a9c397d2e5abd759f9719f862151579b5aeb7705ecb4de33bea57f675124" -> "sha256:dd2e2af1471365672afbf2fd18653fa23135eebfe22ac1bf680b7e36ab5f4d56" [label=""];
  "sha256:dd2e2af1471365672afbf2fd18653fa23135eebfe22ac1bf680b7e36ab5f4d56" -> "sha256:5c4f0f98f4568ea174989cf4d65226d537adeb9f91109abec5773478a7905c68" [label=""];
  "sha256:5c4f0f98f4568ea174989cf4d65226d537adeb9f91109abec5773478a7905c68" -> "sha256:6ca76457e9d648a28a37e9d16a126fafc2d7e32fe37803db3a076059c64a78bd" [label=""];
  "sha256:6ca76457e9d648a28a37e9d16a126fafc2d7e32fe37803db3a076059c64a78bd" -> "sha256:614f72872a991c77161069efcf6fca55a0ff83749723a9e71364ca78a86103cc" [label=""];
  "sha256:614f72872a991c77161069efcf6fca55a0ff83749723a9e71364ca78a86103cc" -> "sha256:1450a68d655734e048defea093429e75d905d8b70d69665e8323fd0883b9b754" [label=""];
  "sha256:1450a68d655734e048defea093429e75d905d8b70d69665e8323fd0883b9b754" -> "sha256:aded7d25a4b03014512465708a8350fa751bb78fb3790da86496b1cbd28a227b" [label=""];
  "sha256:aded7d25a4b03014512465708a8350fa751bb78fb3790da86496b1cbd28a227b" -> "sha256:969680db2a97a0f7d29aec96714c907f51c7017dd51785f48ea35dc0078fadf6" [label=""];
  "sha256:969680db2a97a0f7d29aec96714c907f51c7017dd51785f48ea35dc0078fadf6" -> "sha256:784b24c98299968cf253ffedcbdc759509f26e8811d5f8ae99a67496d1983f5f" [label=""];
  "sha256:784b24c98299968cf253ffedcbdc759509f26e8811d5f8ae99a67496d1983f5f" -> "sha256:678f513d7e26ad767a888641bd59f6d29a830a0916f04fc0d27379875a01674a" [label=""];
  "sha256:678f513d7e26ad767a888641bd59f6d29a830a0916f04fc0d27379875a01674a" -> "sha256:1d4392ebe5867c6b22a289026c689a2771c59a6b22b0676f41ca273fe6ef6ab5" [label=""];
  "sha256:1d4392ebe5867c6b22a289026c689a2771c59a6b22b0676f41ca273fe6ef6ab5" -> "sha256:c4f24090a6538059ce516da49d2e936893450e9ff32611742c8e1125415680f1" [label=""];
  "sha256:f7f5a9c397d2e5abd759f9719f862151579b5aeb7705ecb4de33bea57f675124" -> "sha256:c4f24090a6538059ce516da49d2e936893450e9ff32611742c8e1125415680f1" [label=""];
  "sha256:c4f24090a6538059ce516da49d2e936893450e9ff32611742c8e1125415680f1" -> "sha256:182878c9d9898ed09293ca534bb5e992a77d3b662f3df30f280818efcde2d039" [label=""];
  "sha256:f7f5a9c397d2e5abd759f9719f862151579b5aeb7705ecb4de33bea57f675124" -> "sha256:182878c9d9898ed09293ca534bb5e992a77d3b662f3df30f280818efcde2d039" [label=""];
  "sha256:182878c9d9898ed09293ca534bb5e992a77d3b662f3df30f280818efcde2d039" -> "sha256:2794dc0bf353317628a93f7b90c9173d828e8488afe962e80c6f135bb86319da" [label=""];
  "sha256:f7f5a9c397d2e5abd759f9719f862151579b5aeb7705ecb4de33bea57f675124" -> "sha256:2794dc0bf353317628a93f7b90c9173d828e8488afe962e80c6f135bb86319da" [label=""];
  "sha256:2794dc0bf353317628a93f7b90c9173d828e8488afe962e80c6f135bb86319da" -> "sha256:a0661ad8b437f20be12f04092e5bfc7e21292e5e2efa6358341233060fbfcb0e" [label=""];
  "sha256:a0661ad8b437f20be12f04092e5bfc7e21292e5e2efa6358341233060fbfcb0e" -> "sha256:8a691d08d091d7acb8229700f2a2a98bf497844bc8191e3926a8f5d17946e299" [label=""];
  "sha256:f7f5a9c397d2e5abd759f9719f862151579b5aeb7705ecb4de33bea57f675124" -> "sha256:8a691d08d091d7acb8229700f2a2a98bf497844bc8191e3926a8f5d17946e299" [label=""];
  "sha256:8a691d08d091d7acb8229700f2a2a98bf497844bc8191e3926a8f5d17946e299" -> "sha256:fd7d796ddfc5ecd6634ede2e98ca2a35ed6731783cc83fa5f8e32ebac92d5efd" [label=""];
  "sha256:fd7d796ddfc5ecd6634ede2e98ca2a35ed6731783cc83fa5f8e32ebac92d5efd" -> "sha256:c2dbcc43f34895771bd024c5b57fd509c1f1fad00bc3c8010bafd3207881fc62" [label=""];
}

