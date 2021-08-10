[app/sources/157251933.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:34c592445314082dd5c59425b71ab057592a74dea8ca07d2524d9b09ba87c839" [label="local://context" shape="ellipse"];
  "sha256:6ead7488cc4f535582781efc79684d71ad2c65210b216a36da3ccb0ea1d6e00b" [label="copy{src=/bin, dest=/usr/bin}" shape="note"];
  "sha256:d087a926088fd9fb879764bf9ad18f300fdd1dbfc27b221f8613d41756cead8c" [label="/bin/sh -c locale-gen $LANG; echo \"LANG=\\\"${LANG}\\\"\" > /etc/default/locale; dpkg-reconfigure locales" shape="box"];
  "sha256:2eb74c9b3238c7c02a799a5b24c3194a1496a4c8f3a56c08db3630f977c39d7f" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:264822defb6ee5d4265f686884ae71de11908eda7a0de495e97c26d9b9d88fc7" [label="/bin/sh -c apt-get -y install redis-server redis-tools" shape="box"];
  "sha256:59ee420e4a21ddc39d1da32c85d09cd952d82be90a6861689b4768acca4afcec" [label="/bin/sh -c sed -i 's@bind 127.0.0.1@bind 0.0.0.0@' /etc/redis/redis.conf" shape="box"];
  "sha256:e4ee122379b28ef07028dedf7d94daa3c7d0d543d5dbd236849b696f197b6af5" [label="/bin/sh -c sed -i 's@daemonize yes@daemonize no@' /etc/redis/redis.conf" shape="box"];
  "sha256:ea8d706c1bda48fe19419f7801ae5c77b1fe38be6653ca270fc195822a42294a" [label="/bin/sh -c sed -i 's@daemonize yes@daemonize no@' /etc/redis/redis.conf" shape="box"];
  "sha256:8ca80f39fbebcb0e3e7e0202dad00b996d0fa45a12057844a5916b3e72cad629" [label="/bin/sh -c sed -i 's@databases 16@databases 100@'  /etc/redis/redis.conf" shape="box"];
  "sha256:5a65f9a09bf0fdbcd65fba3293dfa7419e3cdd6269e0affa4e96fc1d5c0e576d" [label="sha256:5a65f9a09bf0fdbcd65fba3293dfa7419e3cdd6269e0affa4e96fc1d5c0e576d" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:6ead7488cc4f535582781efc79684d71ad2c65210b216a36da3ccb0ea1d6e00b" [label=""];
  "sha256:34c592445314082dd5c59425b71ab057592a74dea8ca07d2524d9b09ba87c839" -> "sha256:6ead7488cc4f535582781efc79684d71ad2c65210b216a36da3ccb0ea1d6e00b" [label=""];
  "sha256:6ead7488cc4f535582781efc79684d71ad2c65210b216a36da3ccb0ea1d6e00b" -> "sha256:d087a926088fd9fb879764bf9ad18f300fdd1dbfc27b221f8613d41756cead8c" [label=""];
  "sha256:d087a926088fd9fb879764bf9ad18f300fdd1dbfc27b221f8613d41756cead8c" -> "sha256:2eb74c9b3238c7c02a799a5b24c3194a1496a4c8f3a56c08db3630f977c39d7f" [label=""];
  "sha256:2eb74c9b3238c7c02a799a5b24c3194a1496a4c8f3a56c08db3630f977c39d7f" -> "sha256:264822defb6ee5d4265f686884ae71de11908eda7a0de495e97c26d9b9d88fc7" [label=""];
  "sha256:264822defb6ee5d4265f686884ae71de11908eda7a0de495e97c26d9b9d88fc7" -> "sha256:59ee420e4a21ddc39d1da32c85d09cd952d82be90a6861689b4768acca4afcec" [label=""];
  "sha256:59ee420e4a21ddc39d1da32c85d09cd952d82be90a6861689b4768acca4afcec" -> "sha256:e4ee122379b28ef07028dedf7d94daa3c7d0d543d5dbd236849b696f197b6af5" [label=""];
  "sha256:e4ee122379b28ef07028dedf7d94daa3c7d0d543d5dbd236849b696f197b6af5" -> "sha256:ea8d706c1bda48fe19419f7801ae5c77b1fe38be6653ca270fc195822a42294a" [label=""];
  "sha256:ea8d706c1bda48fe19419f7801ae5c77b1fe38be6653ca270fc195822a42294a" -> "sha256:8ca80f39fbebcb0e3e7e0202dad00b996d0fa45a12057844a5916b3e72cad629" [label=""];
  "sha256:8ca80f39fbebcb0e3e7e0202dad00b996d0fa45a12057844a5916b3e72cad629" -> "sha256:5a65f9a09bf0fdbcd65fba3293dfa7419e3cdd6269e0affa4e96fc1d5c0e576d" [label=""];
}

