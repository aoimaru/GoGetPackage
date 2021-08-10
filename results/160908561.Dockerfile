[app/sources/160908561.Dockerfile]
digraph {
  "sha256:5d3453f1a6e1e82d10452c4d0032c4ecbb3d8ebe10dd5c9c0f91f5ab97115de6" [label="docker-image://docker.io/kartoza/qgis-base:v2@sha256:321ef4489b6341212fd999bae747bae61e84cd1766157e2cc1335366d16e7124" shape="ellipse"];
  "sha256:07ca4537c2d48b45078d31e085f50c195ed39e261b1f58c959a187d6112b413c" [label="/bin/sh -c git clone --depth 1 -b release-2_12 git://github.com/qgis/QGIS.git;     mkdir /build;     cd /build;         cmake /QGIS         -DQWT_INCLUDE_DIR=/usr/include/qwt         -DCMAKE_BUILD_TYPE=Release         -DCMAKE_INSTALL_PREFIX=/usr         -DPYTHON_LIBRARY=/usr/lib/x86_64-linux-gnu/libpython2.7.so         -DQSCINTILLA_INCLUDE_DIR=/usr/include/qt4         -DQWT_LIBRARY=/usr/lib/libqwt.so         -DWITH_SERVER=ON         -DBUILD_TESTING=OFF         -DWITH_INTERNAL_QWTPOLAR=ON;     make install -j4;     cd /;     rm -rf /QGIS;     rm -rf /build;     ldconfig" shape="box"];
  "sha256:38ed1ea757db4a0ac1ee5f57591be5c2a9232fc14cb773bd82004409be71db63" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:994cca7cc7c86c29f64a1f40279824b17dc97ba2ea07f29ada634c2c0acb8c44" [label="local://context" shape="ellipse"];
  "sha256:53ccebe915d15cae28596217a22d5a316e2222bf08199f613fea619bae3a49fb" [label="copy{src=/start.sh, dest=/start.sh}" shape="note"];
  "sha256:986f6ad79b57712709bb570667254809aef34c93eda6d900557fb01c243b6c76" [label="/bin/sh -c chmod 0755 /start.sh" shape="box"];
  "sha256:c35df5f2362cf827a48676e0c8e1a628a3bdfa01c3f4482a735c5d35dbc69240" [label="sha256:c35df5f2362cf827a48676e0c8e1a628a3bdfa01c3f4482a735c5d35dbc69240" shape="plaintext"];
  "sha256:5d3453f1a6e1e82d10452c4d0032c4ecbb3d8ebe10dd5c9c0f91f5ab97115de6" -> "sha256:07ca4537c2d48b45078d31e085f50c195ed39e261b1f58c959a187d6112b413c" [label=""];
  "sha256:07ca4537c2d48b45078d31e085f50c195ed39e261b1f58c959a187d6112b413c" -> "sha256:38ed1ea757db4a0ac1ee5f57591be5c2a9232fc14cb773bd82004409be71db63" [label=""];
  "sha256:38ed1ea757db4a0ac1ee5f57591be5c2a9232fc14cb773bd82004409be71db63" -> "sha256:53ccebe915d15cae28596217a22d5a316e2222bf08199f613fea619bae3a49fb" [label=""];
  "sha256:994cca7cc7c86c29f64a1f40279824b17dc97ba2ea07f29ada634c2c0acb8c44" -> "sha256:53ccebe915d15cae28596217a22d5a316e2222bf08199f613fea619bae3a49fb" [label=""];
  "sha256:53ccebe915d15cae28596217a22d5a316e2222bf08199f613fea619bae3a49fb" -> "sha256:986f6ad79b57712709bb570667254809aef34c93eda6d900557fb01c243b6c76" [label=""];
  "sha256:986f6ad79b57712709bb570667254809aef34c93eda6d900557fb01c243b6c76" -> "sha256:c35df5f2362cf827a48676e0c8e1a628a3bdfa01c3f4482a735c5d35dbc69240" [label=""];
}

