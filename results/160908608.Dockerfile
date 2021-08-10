[app/sources/160908608.Dockerfile]
digraph {
  "sha256:c24407502a25d449f58b99a36b79fd618a72b3a7718e23374b5f228bf9fb7d5b" [label="docker-image://docker.io/kartoza/qgis-base:v2" shape="ellipse"];
  "sha256:b215caf42967875143c1a336376c0ecddd854d363dc240b98a1a060c0ddf5a9f" [label="/bin/sh -c git clone --depth 1 -b final-2_6_1 git://github.com/qgis/QGIS.git;     mkdir /build;     cd /build;     cmake /QGIS -DQWT_INCLUDE_DIR=/usr/include/qwt -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=/usr -DPYTHON_LIBRARY=/usr/lib64/libpython2.7.so -DQSCINTILLA_INCLUDE_DIR=/usr/include/qt4 -DQWT_LIBRARY=/usr/lib/libqwt.so -DGRASS_INCLUDE_DIR=/usr/include -DWITH_INTERNAL_QWTPOLAR=OFF -DQSCINTILLA_INCLUDE_DIR=/usr/include/ -DQWT_LIBRARY=/usr/lib64/libqwt.so;     make install -j8;     cd /;     rm -rf /QGIS;     rm -rf /build;     ldconfig" shape="box"];
  "sha256:394c45f7d19d31b2628d07f06be3f64cf8d0eda89b87b631424cb150162f2eef" [label="local://context" shape="ellipse"];
  "sha256:65abc8c8e64b102a7aef8047dc4438f45801cd3948db83adec78f5f92af9c092" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:eed80e76886c82174c85d7e1c3b3425a9b6ec1520cd1532d7ca75690bef68fc6" [label="/bin/sh -c chmod 0755 /start.sh" shape="box"];
  "sha256:6278067cb11251778e8f5971260b9b61b2c2c38d99b418b83e9f46f33bf9f055" [label="sha256:6278067cb11251778e8f5971260b9b61b2c2c38d99b418b83e9f46f33bf9f055" shape="plaintext"];
  "sha256:c24407502a25d449f58b99a36b79fd618a72b3a7718e23374b5f228bf9fb7d5b" -> "sha256:b215caf42967875143c1a336376c0ecddd854d363dc240b98a1a060c0ddf5a9f" [label=""];
  "sha256:b215caf42967875143c1a336376c0ecddd854d363dc240b98a1a060c0ddf5a9f" -> "sha256:65abc8c8e64b102a7aef8047dc4438f45801cd3948db83adec78f5f92af9c092" [label=""];
  "sha256:394c45f7d19d31b2628d07f06be3f64cf8d0eda89b87b631424cb150162f2eef" -> "sha256:65abc8c8e64b102a7aef8047dc4438f45801cd3948db83adec78f5f92af9c092" [label=""];
  "sha256:65abc8c8e64b102a7aef8047dc4438f45801cd3948db83adec78f5f92af9c092" -> "sha256:eed80e76886c82174c85d7e1c3b3425a9b6ec1520cd1532d7ca75690bef68fc6" [label=""];
  "sha256:eed80e76886c82174c85d7e1c3b3425a9b6ec1520cd1532d7ca75690bef68fc6" -> "sha256:6278067cb11251778e8f5971260b9b61b2c2c38d99b418b83e9f46f33bf9f055" [label=""];
}

