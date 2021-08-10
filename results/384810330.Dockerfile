[app/sources/384810330.Dockerfile]
digraph {
  "sha256:31860f0c01b98091e0277ff393a808ddfce211abd7d1bc567d7c6efd107639fb" [label="docker-image://docker.io/cogrob/omnimapper-dox:latest" shape="ellipse"];
  "sha256:89667153f22766fcd733661320d4ecf4a2ed93cfaf07521bb959ebcddffe3622" [label="mkdir{path=/home/dox}" shape="note"];
  "sha256:3993375b918449d492d8db7fdd72cc5f3db82309acc517c5c4d6979eb24e7269" [label="/bin/sh -c wget https://research.cc.gatech.edu/borg/sites/edu.borg/files/downloads/gtsam-${GTSAM_VERSION}.tgz \t&& mkdir gtsam \t&& tar -xvzf gtsam-${GTSAM_VERSION}.tgz --strip=1 -C gtsam/ \t&& rm gtsam-${GTSAM_VERSION}.tgz" shape="box"];
  "sha256:09a74fa7cead66102ca4d38b494fb4961c17aa475ff8a1c31132298ae33057e7" [label="/bin/sh -c cd /home/dox/gtsam/ \t&& mkdir build \t&& cd build \t&& cmake .. \t&& make -j8 \t&& sudo make install" shape="box"];
  "sha256:368da6e11e41af558586c95931cdbd2caa5f830c8ba170fce20058f8098674e2" [label="local://context" shape="ellipse"];
  "sha256:03ca054b572c754ae242e215ec0bd58a7c9fecd030e03cc59ce1f3491cd6f9ab" [label="copy{src=/HouseholderQR.h, dest=/usr/include/eigen3/Eigen/src/QR/HouseholderQR.h}" shape="note"];
  "sha256:332ff8173e8d1a145eb53252a9e19dcee01f7ecdf0f9192fe06b89f347f3657a" [label="copy{src=/CommaInitializer.h, dest=/usr/include/eigen3/Eigen/src/CommaInitializer.h}" shape="note"];
  "sha256:3f4b1e4612c6ca9779c5a8dd021bba2443ccb8aa2db166298bb985bf8c367969" [label="/bin/sh -c sudo chmod 644 /usr/include/eigen3/Eigen/src/QR/HouseholderQR.h" shape="box"];
  "sha256:bc0d41392dfbccc23caf203f8727173534ebda7f556c68ac11488c5fa60b3fda" [label="/bin/sh -c sudo chmod 644 /usr/include/eigen3/Eigen/src/CommaInitializer.h" shape="box"];
  "sha256:148b8d6c0246b0c1f9fb7cb33a220a1ace133b3394f3c0489fe943c2aabf639c" [label="mkdir{path=/home/dox}" shape="note"];
  "sha256:ff075d71a805445d39e1355aa788961d80f5ea76cc7da2fc3826ac60f41a8afa" [label="/bin/sh -c git clone https://github.com/CognitiveRobotics/omnimapper.git" shape="box"];
  "sha256:72ef31fa2adeaaf5a59b25aa714cfdf19f5d5e73fab36cfd70a0340d328c3c96" [label="/bin/sh -c cd /home/dox/omnimapper/ \t&& mkdir build \t&& cd build \t&& cmake .. \t&& make -j8" shape="box"];
  "sha256:9a5631250c9047bccd62156cf838502047cf6f3b20b3c02c05a608fdb4a317e4" [label="mkdir{path=/home/dox}" shape="note"];
  "sha256:0acd02596873e7e43e0c75ff8d1543b6ad55642583a8c8f28b32f759b5a9d3e7" [label="/bin/sh -c sudo chown dox /home/dox/.bashrc" shape="box"];
  "sha256:af3298f14c2ae8c9f7300f7c88a2c6a067b8cc9f080fcc021fe34e3d308d82b4" [label="copy{src=/build.sh, dest=/home/dox/build.sh}" shape="note"];
  "sha256:c8958ee4146309b52c9ae0140207cf0d1fa6a51d6f57d4ec33cdd4b8bd823b5d" [label="/bin/sh -c sudo chown dox /home/dox/build.sh \t&& bash /home/dox/build.sh" shape="box"];
  "sha256:ab2a199a5c12e990c2cef61962560c7482f0c7b6dd67af4643c9c10347023ff8" [label="sha256:ab2a199a5c12e990c2cef61962560c7482f0c7b6dd67af4643c9c10347023ff8" shape="plaintext"];
  "sha256:31860f0c01b98091e0277ff393a808ddfce211abd7d1bc567d7c6efd107639fb" -> "sha256:89667153f22766fcd733661320d4ecf4a2ed93cfaf07521bb959ebcddffe3622" [label=""];
  "sha256:89667153f22766fcd733661320d4ecf4a2ed93cfaf07521bb959ebcddffe3622" -> "sha256:3993375b918449d492d8db7fdd72cc5f3db82309acc517c5c4d6979eb24e7269" [label=""];
  "sha256:3993375b918449d492d8db7fdd72cc5f3db82309acc517c5c4d6979eb24e7269" -> "sha256:09a74fa7cead66102ca4d38b494fb4961c17aa475ff8a1c31132298ae33057e7" [label=""];
  "sha256:09a74fa7cead66102ca4d38b494fb4961c17aa475ff8a1c31132298ae33057e7" -> "sha256:03ca054b572c754ae242e215ec0bd58a7c9fecd030e03cc59ce1f3491cd6f9ab" [label=""];
  "sha256:368da6e11e41af558586c95931cdbd2caa5f830c8ba170fce20058f8098674e2" -> "sha256:03ca054b572c754ae242e215ec0bd58a7c9fecd030e03cc59ce1f3491cd6f9ab" [label=""];
  "sha256:03ca054b572c754ae242e215ec0bd58a7c9fecd030e03cc59ce1f3491cd6f9ab" -> "sha256:332ff8173e8d1a145eb53252a9e19dcee01f7ecdf0f9192fe06b89f347f3657a" [label=""];
  "sha256:368da6e11e41af558586c95931cdbd2caa5f830c8ba170fce20058f8098674e2" -> "sha256:332ff8173e8d1a145eb53252a9e19dcee01f7ecdf0f9192fe06b89f347f3657a" [label=""];
  "sha256:332ff8173e8d1a145eb53252a9e19dcee01f7ecdf0f9192fe06b89f347f3657a" -> "sha256:3f4b1e4612c6ca9779c5a8dd021bba2443ccb8aa2db166298bb985bf8c367969" [label=""];
  "sha256:3f4b1e4612c6ca9779c5a8dd021bba2443ccb8aa2db166298bb985bf8c367969" -> "sha256:bc0d41392dfbccc23caf203f8727173534ebda7f556c68ac11488c5fa60b3fda" [label=""];
  "sha256:bc0d41392dfbccc23caf203f8727173534ebda7f556c68ac11488c5fa60b3fda" -> "sha256:148b8d6c0246b0c1f9fb7cb33a220a1ace133b3394f3c0489fe943c2aabf639c" [label=""];
  "sha256:148b8d6c0246b0c1f9fb7cb33a220a1ace133b3394f3c0489fe943c2aabf639c" -> "sha256:ff075d71a805445d39e1355aa788961d80f5ea76cc7da2fc3826ac60f41a8afa" [label=""];
  "sha256:ff075d71a805445d39e1355aa788961d80f5ea76cc7da2fc3826ac60f41a8afa" -> "sha256:72ef31fa2adeaaf5a59b25aa714cfdf19f5d5e73fab36cfd70a0340d328c3c96" [label=""];
  "sha256:72ef31fa2adeaaf5a59b25aa714cfdf19f5d5e73fab36cfd70a0340d328c3c96" -> "sha256:9a5631250c9047bccd62156cf838502047cf6f3b20b3c02c05a608fdb4a317e4" [label=""];
  "sha256:9a5631250c9047bccd62156cf838502047cf6f3b20b3c02c05a608fdb4a317e4" -> "sha256:0acd02596873e7e43e0c75ff8d1543b6ad55642583a8c8f28b32f759b5a9d3e7" [label=""];
  "sha256:0acd02596873e7e43e0c75ff8d1543b6ad55642583a8c8f28b32f759b5a9d3e7" -> "sha256:af3298f14c2ae8c9f7300f7c88a2c6a067b8cc9f080fcc021fe34e3d308d82b4" [label=""];
  "sha256:368da6e11e41af558586c95931cdbd2caa5f830c8ba170fce20058f8098674e2" -> "sha256:af3298f14c2ae8c9f7300f7c88a2c6a067b8cc9f080fcc021fe34e3d308d82b4" [label=""];
  "sha256:af3298f14c2ae8c9f7300f7c88a2c6a067b8cc9f080fcc021fe34e3d308d82b4" -> "sha256:c8958ee4146309b52c9ae0140207cf0d1fa6a51d6f57d4ec33cdd4b8bd823b5d" [label=""];
  "sha256:c8958ee4146309b52c9ae0140207cf0d1fa6a51d6f57d4ec33cdd4b8bd823b5d" -> "sha256:ab2a199a5c12e990c2cef61962560c7482f0c7b6dd67af4643c9c10347023ff8" [label=""];
}

