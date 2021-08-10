[app/sources/173492448.Dockerfile]
digraph {
  "sha256:9cd7bf80c9c9ce243cfa37267c77ed475e87acb1446fbb08754dd290372ab607" [label="docker-image://docker.io/therecipe/qt:linux" shape="ellipse"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:4b2864281b91515fb9d777f39a1328e5435a93e5b2db4a59cb20559e98336764" [label="copy{src=/usr/local/go, dest=/usr/local/go}" shape="note"];
  "sha256:a04649e869a57c4baf0411bc3a9028bad42be5e90ad39de32f1a9e3df1445516" [label="copy{src=/home/user/work/bin, dest=/home/user/work/bin}" shape="note"];
  "sha256:17845b06289547498ab7ef7a308792c273e3b0afc47be5a6b764acdc10a04a96" [label="copy{src=/home/user/work/src/github.com/therecipe/qt, dest=/home/user/work/src/github.com/therecipe/qt}" shape="note"];
  "sha256:a980e5a4116180d5d40bd547d4c2fe89d6fda1a1a2b7d3c30c9f53b4be31902c" [label="/bin/sh -c echo \"deb http://pkg.mxe.cc/repos/apt trusty main\" | tee --append /etc/apt/sources.list.d/mxeapt.list > /dev/null && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 86B72ED9 && apt-get -qq update && apt-get --no-install-recommends -qq -y install mxe-i686-w64-mingw32.static-qt3d mxe-i686-w64-mingw32.static-qtactiveqt mxe-i686-w64-mingw32.static-qtbase mxe-i686-w64-mingw32.static-qtcanvas3d mxe-i686-w64-mingw32.static-qtcharts mxe-i686-w64-mingw32.static-qtconnectivity mxe-i686-w64-mingw32.static-qtdatavis3d mxe-i686-w64-mingw32.static-qtdeclarative mxe-i686-w64-mingw32.static-qtgamepad mxe-i686-w64-mingw32.static-qtgraphicaleffects mxe-i686-w64-mingw32.static-qtimageformats mxe-i686-w64-mingw32.static-qtlocation mxe-i686-w64-mingw32.static-qtmultimedia mxe-i686-w64-mingw32.static-qtofficeopenxml mxe-i686-w64-mingw32.static-qtpurchasing mxe-i686-w64-mingw32.static-qtquickcontrols mxe-i686-w64-mingw32.static-qtquickcontrols2 mxe-i686-w64-mingw32.static-qtscript mxe-i686-w64-mingw32.static-qtscxml mxe-i686-w64-mingw32.static-qtsensors mxe-i686-w64-mingw32.static-qtserialbus mxe-i686-w64-mingw32.static-qtserialport mxe-i686-w64-mingw32.static-qtservice mxe-i686-w64-mingw32.static-qtsvg mxe-i686-w64-mingw32.static-qtsystems mxe-i686-w64-mingw32.static-qttools mxe-i686-w64-mingw32.static-qttranslations mxe-i686-w64-mingw32.static-qtvirtualkeyboard mxe-i686-w64-mingw32.static-qtwebchannel mxe-i686-w64-mingw32.static-qtwebsockets mxe-i686-w64-mingw32.static-qtwinextras mxe-i686-w64-mingw32.static-qtxlsxwriter mxe-i686-w64-mingw32.static-qtxmlpatterns" shape="box"];
  "sha256:d0dfd3652ee2db8aa8f39e311d35966e43da6aeb190210288dea75cba4be3be4" [label="copy{src=/usr/lib/mxe, dest=/usr/lib/mxe}" shape="note"];
  "sha256:d59d8d9875b630b381f9163c0b8dae60a22390884a3b84e551f59ff20900684d" [label="/bin/sh -c $GOPATH/bin/qtsetup prep" shape="box"];
  "sha256:0b1926d4e30510aa673868dbca455a599f1e8b4e86e611215d323c610228bc6e" [label="/bin/sh -c $GOPATH/bin/qtsetup check windows" shape="box"];
  "sha256:1e09e131c22c9de0a2b27b378eb87e25694fa42e6e61326ec62ba8cff7cdefa6" [label="/bin/sh -c $GOPATH/bin/qtsetup generate windows" shape="box"];
  "sha256:1d69b446d4c41408be318ccaed14b3fb6f22d509fd530cc4407e76a905b8af91" [label="/bin/sh -c $GOPATH/bin/qtsetup install windows" shape="box"];
  "sha256:9e3709a01429e2642a7839cb8ccd224388a72a21caed385e33455d21dd7e7f26" [label="/bin/sh -c cd $GOPATH/src/github.com/therecipe/qt/internal/examples/widgets/line_edits && $GOPATH/bin/qtdeploy build windows && rm -rf ./deploy" shape="box"];
  "sha256:6444f7f0877e9f2e98db2139bdffe853a61ad42ad3123af74c5da80becc4c45d" [label="/bin/sh -c apt-get -qq update && apt-get --no-install-recommends -qq -y install ca-certificates git pkg-config" shape="box"];
  "sha256:4190568fe74f62461e4723cebb14cc4251de0cb7855589df2207fda05b442431" [label="sha256:4190568fe74f62461e4723cebb14cc4251de0cb7855589df2207fda05b442431" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:4b2864281b91515fb9d777f39a1328e5435a93e5b2db4a59cb20559e98336764" [label=""];
  "sha256:9cd7bf80c9c9ce243cfa37267c77ed475e87acb1446fbb08754dd290372ab607" -> "sha256:4b2864281b91515fb9d777f39a1328e5435a93e5b2db4a59cb20559e98336764" [label=""];
  "sha256:4b2864281b91515fb9d777f39a1328e5435a93e5b2db4a59cb20559e98336764" -> "sha256:a04649e869a57c4baf0411bc3a9028bad42be5e90ad39de32f1a9e3df1445516" [label=""];
  "sha256:9cd7bf80c9c9ce243cfa37267c77ed475e87acb1446fbb08754dd290372ab607" -> "sha256:a04649e869a57c4baf0411bc3a9028bad42be5e90ad39de32f1a9e3df1445516" [label=""];
  "sha256:a04649e869a57c4baf0411bc3a9028bad42be5e90ad39de32f1a9e3df1445516" -> "sha256:17845b06289547498ab7ef7a308792c273e3b0afc47be5a6b764acdc10a04a96" [label=""];
  "sha256:9cd7bf80c9c9ce243cfa37267c77ed475e87acb1446fbb08754dd290372ab607" -> "sha256:17845b06289547498ab7ef7a308792c273e3b0afc47be5a6b764acdc10a04a96" [label=""];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:a980e5a4116180d5d40bd547d4c2fe89d6fda1a1a2b7d3c30c9f53b4be31902c" [label=""];
  "sha256:17845b06289547498ab7ef7a308792c273e3b0afc47be5a6b764acdc10a04a96" -> "sha256:d0dfd3652ee2db8aa8f39e311d35966e43da6aeb190210288dea75cba4be3be4" [label=""];
  "sha256:a980e5a4116180d5d40bd547d4c2fe89d6fda1a1a2b7d3c30c9f53b4be31902c" -> "sha256:d0dfd3652ee2db8aa8f39e311d35966e43da6aeb190210288dea75cba4be3be4" [label=""];
  "sha256:d0dfd3652ee2db8aa8f39e311d35966e43da6aeb190210288dea75cba4be3be4" -> "sha256:d59d8d9875b630b381f9163c0b8dae60a22390884a3b84e551f59ff20900684d" [label=""];
  "sha256:d59d8d9875b630b381f9163c0b8dae60a22390884a3b84e551f59ff20900684d" -> "sha256:0b1926d4e30510aa673868dbca455a599f1e8b4e86e611215d323c610228bc6e" [label=""];
  "sha256:0b1926d4e30510aa673868dbca455a599f1e8b4e86e611215d323c610228bc6e" -> "sha256:1e09e131c22c9de0a2b27b378eb87e25694fa42e6e61326ec62ba8cff7cdefa6" [label=""];
  "sha256:1e09e131c22c9de0a2b27b378eb87e25694fa42e6e61326ec62ba8cff7cdefa6" -> "sha256:1d69b446d4c41408be318ccaed14b3fb6f22d509fd530cc4407e76a905b8af91" [label=""];
  "sha256:1d69b446d4c41408be318ccaed14b3fb6f22d509fd530cc4407e76a905b8af91" -> "sha256:9e3709a01429e2642a7839cb8ccd224388a72a21caed385e33455d21dd7e7f26" [label=""];
  "sha256:9e3709a01429e2642a7839cb8ccd224388a72a21caed385e33455d21dd7e7f26" -> "sha256:6444f7f0877e9f2e98db2139bdffe853a61ad42ad3123af74c5da80becc4c45d" [label=""];
  "sha256:6444f7f0877e9f2e98db2139bdffe853a61ad42ad3123af74c5da80becc4c45d" -> "sha256:4190568fe74f62461e4723cebb14cc4251de0cb7855589df2207fda05b442431" [label=""];
}

