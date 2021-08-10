[app/sources/429798592.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:e2550f3bb17be5807a67a8478e0867975dcc952ecb356188ffe63826dd46e532" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive     apt-get update && apt-get install --no-install-recommends -y language-pack-en-base" shape="box"];
  "sha256:5fe0e3f63e12134115c1394c45f53730e6cc34cf93b1bffb9e06b73a218ce812" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y \tlibcurl4-openssl-dev \tpython-numpy \tpython-opencv \tlibopencv-dev \tlibjpeg-dev \tlibpng-dev \tlibx264-dev \tlibass-dev \tlibvpx1 \tlibvpx-dev \tlibwebp-dev \twebp \tgifsicle \tmemcached \tlibmemcache-dev \tlibmemcached-dev \tpython-scipy \tpython-pyexiv2 \tcython" shape="box"];
  "sha256:e4b25aa92c76d7550b48747db2397d37374f2aa2c814f1cf5112606198f38c4e" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y \tlibpngwriter libfaac libtiffxx0c2 libavcodec53 libavformat53 gstreamer0.10-ffmpeg libtiff4 redis-server" shape="box"];
  "sha256:d3cc2293dde68a1caac6c3067fa4f0de18d09cfaf6c5e851d14f655bb09b7246" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y     wget unzip python-dev python-pip && apt-get clean" shape="box"];
  "sha256:79e3f66cea4389f28eb8167142f906184c9a3759f02e0236e5643b3c9398fe1f" [label="local://context" shape="ellipse"];
  "sha256:187ff001038bc1fd7c63eb7be5174114dfbbeef3ae141ae8692766b556df3f02" [label="copy{src=/setup.sh, dest=/setup}" shape="note"];
  "sha256:71a62be79dc94dff789c986086fc0b9d0cc03aa21a0e18fb712bb58e9ce6b7c5" [label="copy{src=/thumbor.conf, dest=/thumbor.conf}" shape="note"];
  "sha256:b59dba3d69857a5432f50f6bd8504d752b2c5468765454f7a7345712f3f8071a" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive         /setup" shape="box"];
  "sha256:64ea71ef2518652e47d7abc0e8fe59fe086f52650d7cea93873367c7a8a70025" [label="copy{src=/init, dest=/init}" shape="note"];
  "sha256:60568421956eea2521babf633e5d4d04eb5a11463c276749ddb6d4f643903d9c" [label="sha256:60568421956eea2521babf633e5d4d04eb5a11463c276749ddb6d4f643903d9c" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:e2550f3bb17be5807a67a8478e0867975dcc952ecb356188ffe63826dd46e532" [label=""];
  "sha256:e2550f3bb17be5807a67a8478e0867975dcc952ecb356188ffe63826dd46e532" -> "sha256:5fe0e3f63e12134115c1394c45f53730e6cc34cf93b1bffb9e06b73a218ce812" [label=""];
  "sha256:5fe0e3f63e12134115c1394c45f53730e6cc34cf93b1bffb9e06b73a218ce812" -> "sha256:e4b25aa92c76d7550b48747db2397d37374f2aa2c814f1cf5112606198f38c4e" [label=""];
  "sha256:e4b25aa92c76d7550b48747db2397d37374f2aa2c814f1cf5112606198f38c4e" -> "sha256:d3cc2293dde68a1caac6c3067fa4f0de18d09cfaf6c5e851d14f655bb09b7246" [label=""];
  "sha256:d3cc2293dde68a1caac6c3067fa4f0de18d09cfaf6c5e851d14f655bb09b7246" -> "sha256:187ff001038bc1fd7c63eb7be5174114dfbbeef3ae141ae8692766b556df3f02" [label=""];
  "sha256:79e3f66cea4389f28eb8167142f906184c9a3759f02e0236e5643b3c9398fe1f" -> "sha256:187ff001038bc1fd7c63eb7be5174114dfbbeef3ae141ae8692766b556df3f02" [label=""];
  "sha256:187ff001038bc1fd7c63eb7be5174114dfbbeef3ae141ae8692766b556df3f02" -> "sha256:71a62be79dc94dff789c986086fc0b9d0cc03aa21a0e18fb712bb58e9ce6b7c5" [label=""];
  "sha256:79e3f66cea4389f28eb8167142f906184c9a3759f02e0236e5643b3c9398fe1f" -> "sha256:71a62be79dc94dff789c986086fc0b9d0cc03aa21a0e18fb712bb58e9ce6b7c5" [label=""];
  "sha256:71a62be79dc94dff789c986086fc0b9d0cc03aa21a0e18fb712bb58e9ce6b7c5" -> "sha256:b59dba3d69857a5432f50f6bd8504d752b2c5468765454f7a7345712f3f8071a" [label=""];
  "sha256:b59dba3d69857a5432f50f6bd8504d752b2c5468765454f7a7345712f3f8071a" -> "sha256:64ea71ef2518652e47d7abc0e8fe59fe086f52650d7cea93873367c7a8a70025" [label=""];
  "sha256:79e3f66cea4389f28eb8167142f906184c9a3759f02e0236e5643b3c9398fe1f" -> "sha256:64ea71ef2518652e47d7abc0e8fe59fe086f52650d7cea93873367c7a8a70025" [label=""];
  "sha256:64ea71ef2518652e47d7abc0e8fe59fe086f52650d7cea93873367c7a8a70025" -> "sha256:60568421956eea2521babf633e5d4d04eb5a11463c276749ddb6d4f643903d9c" [label=""];
}

