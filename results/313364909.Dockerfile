[app/sources/313364909.Dockerfile]
digraph {
  "sha256:a8bbe4e361f46a3b9b2cfc1eb4960c8058252bff32041c05f8e99d2a009c3c6a" [label="docker-image://docker.io/library/debian:9-slim@sha256:570dd3f7c2b1db4e34f54b3aa89c50cb7cbbf610a412844fbe961060800bfdd1" shape="ellipse"];
  "sha256:0a1de662445946724ffe12391a7e86a846153ed9e0b167375801ed6f421bf53b" [label="/bin/sh -c apt-get update && apt-get install openssl libmediainfo0v5 -y" shape="box"];
  "sha256:14d07c1433a2663bb751b6c213b3b8a730992d7f84e60cc5c8247b21461e337f" [label="docker-image://docker.io/library/debian:9@sha256:06f9296409de8cfecaff43aaee6d608ed48a95c0cac0da2a418ff526acedf67b" shape="ellipse"];
  "sha256:2aa844eab652083396583f88972218c641f5c79c3a59a4a5edfbb9a9b582b977" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:9f0d3504d4a322bd40efaa68f8aefd6c6518cd32701ed9d0fe5b196405906cde" [label="/bin/sh -c apt-get install build-essential git meson ninja-build gcc cpp cmake libssl-dev libmediainfo-dev -y" shape="box"];
  "sha256:44d074d97fd91173013e9e020c9f6f6782e48b601d16c8546ca4d2efabfcbc3c" [label="/bin/sh -c apt-get install openjdk-8-jre-headless perl -y" shape="box"];
  "sha256:50370f95ee13aae0ce28fdcc0b0496806e260b4a50b094dc1dcb6b39d7159c9c" [label="/bin/sh -c mkdir /libmpdclient-dist" shape="box"];
  "sha256:181675a4f06dfb83e500e1e77809d4ae81c69495c96e239239ba9441f62ed134" [label="/bin/sh -c git clone https://github.com/MusicPlayerDaemon/libmpdclient.git" shape="box"];
  "sha256:f81a45fa366d6b9b41afe184c6ac48f7382f34e52b11782a551b5c89b327c194" [label="mkdir{path=/libmpdclient}" shape="note"];
  "sha256:ef525545f22e0002a330fed0184e816481105222322061b6f5225888f02b0a73" [label="/bin/sh -c meson . output" shape="box"];
  "sha256:c1fbe95e33d845dd1b8a9d3c1032ed9e4ff409c282b0558a84668855bfe43f8a" [label="/bin/sh -c ninja -C output" shape="box"];
  "sha256:e87841deb492d3824b6e0bb5013fad0e9c61b20db2fb94d7fda88ed25c7bcbe7" [label="/bin/sh -c ninja -C output install" shape="box"];
  "sha256:8444aae408b492780ac80efaed5bd402849863a5f9af28bcbeeed2ff1751a9a2" [label="/bin/sh -c mesonconf output -Dprefix=/libmpdclient-dist" shape="box"];
  "sha256:9901d94c99f56b5dd1d763a1e6f43a8766efce1e068ccc9ea381def47b5b0a03" [label="/bin/sh -c ninja -C output" shape="box"];
  "sha256:9d6352a9d9e8fb758a80ded627d2184c8e8887869b3508b55f1be4a359b0d0c7" [label="/bin/sh -c ninja -C output install" shape="box"];
  "sha256:93db5cf2aa05f13bc80f7bdafad1b396673a6a507d2529f8f305750576ee1641" [label="/bin/sh -c tar -czvf /libmpdclient-master.tar.gz -C /libmpdclient-dist ." shape="box"];
  "sha256:d7f906320285e30e310970e39400709f228ac726408d8d11e968ca817d231200" [label="local://context" shape="ellipse"];
  "sha256:f613b67213087d383d7c652f148d8ac4ebc82b6781637cb89e48731b0296642d" [label="copy{src=/, dest=/myMPD/}" shape="note"];
  "sha256:0c178e0e713ceb4f0b7ffaade0f9665038b279500dd2712ce71da758ff82c7b7" [label="/bin/sh -c mkdir -p $DESTDIR" shape="box"];
  "sha256:cd883b611733a8a2e332c19efbf4982dc81b33650d8b080f0beeba5b1824b662" [label="mkdir{path=/myMPD}" shape="note"];
  "sha256:c8ecf208467965cc9f066359c506cd47b1919b76e69e4edd705cd0a38fe27bd6" [label="/bin/sh -c ./mkrelease.sh" shape="box"];
  "sha256:c884f140f9bad209e0aee396067b3cafdd55f772ca46c1e297d206ed91111765" [label="/bin/sh -c tar -czvf /mympd.tar.gz -C /myMPD-dist ." shape="box"];
  "sha256:999b200303f7b28876e017d907b5f390542a44cd1f731733e3acf1e51d84a595" [label="copy{src=/libmpdclient-master.tar.gz, dest=/}" shape="note"];
  "sha256:57051e8e0fe8464a015b5776a398197000591599427f4ac1bd6d7abfaca8201d" [label="copy{src=/mympd.tar.gz, dest=/}" shape="note"];
  "sha256:2ce61f64fd0e3758ee5f46f7615120bf76dd3a40d34ecaaa50c8904a2d434cc2" [label="copy{src=/myMPD/debian/postinst, dest=/}" shape="note"];
  "sha256:bef720875513aad0b51feddf478468975015f6897600a5b4f8b6dc6f88c015cd" [label="/bin/sh -c tar xfv libmpdclient-master.tar.gz -C /" shape="box"];
  "sha256:216521a2c5f06e982dbd126cf5fbb2b3d3f52829a565be27b7bde58d295d1f4e" [label="/bin/sh -c tar xfv mympd.tar.gz -C /" shape="box"];
  "sha256:505e5035fadb73db0706015fa80be1e1d56342d02eac2f189a758b47d865b991" [label="/bin/sh -c rm libmpdclient-master.tar.gz" shape="box"];
  "sha256:768d6e1829b8b3fcd83e421a5c3aa727d89ecae9637f95cad466a28d6407fdc4" [label="/bin/sh -c rm mympd.tar.gz" shape="box"];
  "sha256:030343b28d8023576a7116c8abf13956fc42ae5f24ea4def394f7d8cf84fa9cd" [label="copy{src=/contrib/docker/init.sh, dest=/}" shape="note"];
  "sha256:3153a0fe806e2a147dfa1066e7dce4aa4ff1f241e7f148d1f0c6fb31d0e6e59e" [label="/bin/sh -c chmod +x /init.sh" shape="box"];
  "sha256:b09f910283a6a8e17458bafd4a33156eb40d116cd9f78b3f2f0b881c66e7e229" [label="sha256:b09f910283a6a8e17458bafd4a33156eb40d116cd9f78b3f2f0b881c66e7e229" shape="plaintext"];
  "sha256:a8bbe4e361f46a3b9b2cfc1eb4960c8058252bff32041c05f8e99d2a009c3c6a" -> "sha256:0a1de662445946724ffe12391a7e86a846153ed9e0b167375801ed6f421bf53b" [label=""];
  "sha256:14d07c1433a2663bb751b6c213b3b8a730992d7f84e60cc5c8247b21461e337f" -> "sha256:2aa844eab652083396583f88972218c641f5c79c3a59a4a5edfbb9a9b582b977" [label=""];
  "sha256:2aa844eab652083396583f88972218c641f5c79c3a59a4a5edfbb9a9b582b977" -> "sha256:9f0d3504d4a322bd40efaa68f8aefd6c6518cd32701ed9d0fe5b196405906cde" [label=""];
  "sha256:9f0d3504d4a322bd40efaa68f8aefd6c6518cd32701ed9d0fe5b196405906cde" -> "sha256:44d074d97fd91173013e9e020c9f6f6782e48b601d16c8546ca4d2efabfcbc3c" [label=""];
  "sha256:44d074d97fd91173013e9e020c9f6f6782e48b601d16c8546ca4d2efabfcbc3c" -> "sha256:50370f95ee13aae0ce28fdcc0b0496806e260b4a50b094dc1dcb6b39d7159c9c" [label=""];
  "sha256:50370f95ee13aae0ce28fdcc0b0496806e260b4a50b094dc1dcb6b39d7159c9c" -> "sha256:181675a4f06dfb83e500e1e77809d4ae81c69495c96e239239ba9441f62ed134" [label=""];
  "sha256:181675a4f06dfb83e500e1e77809d4ae81c69495c96e239239ba9441f62ed134" -> "sha256:f81a45fa366d6b9b41afe184c6ac48f7382f34e52b11782a551b5c89b327c194" [label=""];
  "sha256:f81a45fa366d6b9b41afe184c6ac48f7382f34e52b11782a551b5c89b327c194" -> "sha256:ef525545f22e0002a330fed0184e816481105222322061b6f5225888f02b0a73" [label=""];
  "sha256:ef525545f22e0002a330fed0184e816481105222322061b6f5225888f02b0a73" -> "sha256:c1fbe95e33d845dd1b8a9d3c1032ed9e4ff409c282b0558a84668855bfe43f8a" [label=""];
  "sha256:c1fbe95e33d845dd1b8a9d3c1032ed9e4ff409c282b0558a84668855bfe43f8a" -> "sha256:e87841deb492d3824b6e0bb5013fad0e9c61b20db2fb94d7fda88ed25c7bcbe7" [label=""];
  "sha256:e87841deb492d3824b6e0bb5013fad0e9c61b20db2fb94d7fda88ed25c7bcbe7" -> "sha256:8444aae408b492780ac80efaed5bd402849863a5f9af28bcbeeed2ff1751a9a2" [label=""];
  "sha256:8444aae408b492780ac80efaed5bd402849863a5f9af28bcbeeed2ff1751a9a2" -> "sha256:9901d94c99f56b5dd1d763a1e6f43a8766efce1e068ccc9ea381def47b5b0a03" [label=""];
  "sha256:9901d94c99f56b5dd1d763a1e6f43a8766efce1e068ccc9ea381def47b5b0a03" -> "sha256:9d6352a9d9e8fb758a80ded627d2184c8e8887869b3508b55f1be4a359b0d0c7" [label=""];
  "sha256:9d6352a9d9e8fb758a80ded627d2184c8e8887869b3508b55f1be4a359b0d0c7" -> "sha256:93db5cf2aa05f13bc80f7bdafad1b396673a6a507d2529f8f305750576ee1641" [label=""];
  "sha256:93db5cf2aa05f13bc80f7bdafad1b396673a6a507d2529f8f305750576ee1641" -> "sha256:f613b67213087d383d7c652f148d8ac4ebc82b6781637cb89e48731b0296642d" [label=""];
  "sha256:d7f906320285e30e310970e39400709f228ac726408d8d11e968ca817d231200" -> "sha256:f613b67213087d383d7c652f148d8ac4ebc82b6781637cb89e48731b0296642d" [label=""];
  "sha256:f613b67213087d383d7c652f148d8ac4ebc82b6781637cb89e48731b0296642d" -> "sha256:0c178e0e713ceb4f0b7ffaade0f9665038b279500dd2712ce71da758ff82c7b7" [label=""];
  "sha256:0c178e0e713ceb4f0b7ffaade0f9665038b279500dd2712ce71da758ff82c7b7" -> "sha256:cd883b611733a8a2e332c19efbf4982dc81b33650d8b080f0beeba5b1824b662" [label=""];
  "sha256:cd883b611733a8a2e332c19efbf4982dc81b33650d8b080f0beeba5b1824b662" -> "sha256:c8ecf208467965cc9f066359c506cd47b1919b76e69e4edd705cd0a38fe27bd6" [label=""];
  "sha256:c8ecf208467965cc9f066359c506cd47b1919b76e69e4edd705cd0a38fe27bd6" -> "sha256:c884f140f9bad209e0aee396067b3cafdd55f772ca46c1e297d206ed91111765" [label=""];
  "sha256:0a1de662445946724ffe12391a7e86a846153ed9e0b167375801ed6f421bf53b" -> "sha256:999b200303f7b28876e017d907b5f390542a44cd1f731733e3acf1e51d84a595" [label=""];
  "sha256:c884f140f9bad209e0aee396067b3cafdd55f772ca46c1e297d206ed91111765" -> "sha256:999b200303f7b28876e017d907b5f390542a44cd1f731733e3acf1e51d84a595" [label=""];
  "sha256:999b200303f7b28876e017d907b5f390542a44cd1f731733e3acf1e51d84a595" -> "sha256:57051e8e0fe8464a015b5776a398197000591599427f4ac1bd6d7abfaca8201d" [label=""];
  "sha256:c884f140f9bad209e0aee396067b3cafdd55f772ca46c1e297d206ed91111765" -> "sha256:57051e8e0fe8464a015b5776a398197000591599427f4ac1bd6d7abfaca8201d" [label=""];
  "sha256:57051e8e0fe8464a015b5776a398197000591599427f4ac1bd6d7abfaca8201d" -> "sha256:2ce61f64fd0e3758ee5f46f7615120bf76dd3a40d34ecaaa50c8904a2d434cc2" [label=""];
  "sha256:c884f140f9bad209e0aee396067b3cafdd55f772ca46c1e297d206ed91111765" -> "sha256:2ce61f64fd0e3758ee5f46f7615120bf76dd3a40d34ecaaa50c8904a2d434cc2" [label=""];
  "sha256:2ce61f64fd0e3758ee5f46f7615120bf76dd3a40d34ecaaa50c8904a2d434cc2" -> "sha256:bef720875513aad0b51feddf478468975015f6897600a5b4f8b6dc6f88c015cd" [label=""];
  "sha256:bef720875513aad0b51feddf478468975015f6897600a5b4f8b6dc6f88c015cd" -> "sha256:216521a2c5f06e982dbd126cf5fbb2b3d3f52829a565be27b7bde58d295d1f4e" [label=""];
  "sha256:216521a2c5f06e982dbd126cf5fbb2b3d3f52829a565be27b7bde58d295d1f4e" -> "sha256:505e5035fadb73db0706015fa80be1e1d56342d02eac2f189a758b47d865b991" [label=""];
  "sha256:505e5035fadb73db0706015fa80be1e1d56342d02eac2f189a758b47d865b991" -> "sha256:768d6e1829b8b3fcd83e421a5c3aa727d89ecae9637f95cad466a28d6407fdc4" [label=""];
  "sha256:768d6e1829b8b3fcd83e421a5c3aa727d89ecae9637f95cad466a28d6407fdc4" -> "sha256:030343b28d8023576a7116c8abf13956fc42ae5f24ea4def394f7d8cf84fa9cd" [label=""];
  "sha256:d7f906320285e30e310970e39400709f228ac726408d8d11e968ca817d231200" -> "sha256:030343b28d8023576a7116c8abf13956fc42ae5f24ea4def394f7d8cf84fa9cd" [label=""];
  "sha256:030343b28d8023576a7116c8abf13956fc42ae5f24ea4def394f7d8cf84fa9cd" -> "sha256:3153a0fe806e2a147dfa1066e7dce4aa4ff1f241e7f148d1f0c6fb31d0e6e59e" [label=""];
  "sha256:3153a0fe806e2a147dfa1066e7dce4aa4ff1f241e7f148d1f0c6fb31d0e6e59e" -> "sha256:b09f910283a6a8e17458bafd4a33156eb40d116cd9f78b3f2f0b881c66e7e229" [label=""];
}
