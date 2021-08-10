[app/sources/283139871.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:7ee53f9e4b744ea4cf72757c3235a9d447648da7424988a40c990d1ec1464b71" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:9ecebe657a06973414bc09d7bca2c0368ce54386692251c53e27203b2e0b42cc" [label="/bin/sh -c apt-get upgrade -y" shape="box"];
  "sha256:a13b51945da1a14462cceb26bb835ca4bdd2e87b6a011a5e26fb3748dc15c638" [label="/bin/sh -c apt-get install -y clang   libicu-dev   libbsd-dev   uuid-dev   git   libxml2-dev   libxslt1-dev   python-dev   libcurl4-openssl-dev   wget   zip   make   g++   xz-utils" shape="box"];
  "sha256:ccbb87b8b4f2d00b8d8f2358a9fc90a943c7ba213679af4ab68ca5c128c0b945" [label="/bin/sh -c update-alternatives --install /usr/bin/ld ld /usr/bin/ld.gold 9" shape="box"];
  "sha256:e8cc24323c4b7cc3679f22fe2ee9165cbc8aa81d7ba671bda2469d5a71af5911" [label="/bin/sh -c update-alternatives --set ld /usr/bin/ld.gold" shape="box"];
  "sha256:a3751180374261546e672f97adbc6c8aa98dbab578b06dcfcc28088a4bf4c634" [label="/bin/sh -c wget $SWIFT_DOWNLOAD_URL" shape="box"];
  "sha256:f2ab422a89b1d313e5f26fed732c4eb3ae12c7e6cad40ceec8a5062440165b14" [label="/bin/sh -c tar -zxf $SWIFT_HOME.tar.gz" shape="box"];
  "sha256:8f66856cd3f5b89c6e07fdb23bd4d12c972b8a54f44b68cc24e59b4ae5cf1b50" [label="/bin/sh -c wget $NODE_DOWNLOAD_URL" shape="box"];
  "sha256:fee997df292a2d598a7c1954d6b2fdec1448dd59754453c0d07a31d22cd83731" [label="/bin/sh -c tar xf ./$NODE_HOME.tar.xz" shape="box"];
  "sha256:03770393fd6364ffcdbebdf3c83301b0a5061907ebca4dddaf26bdbb1fdc37e5" [label="/bin/sh -c npm i -g node-gyp" shape="box"];
  "sha256:9631739572d12a3837ebc2d5a73326f71c063b7c1e331737508cbc44b1cadc4d" [label="local://context" shape="ellipse"];
  "sha256:2920b4bc90e025dd2e7e34db627075712d5d8fc122622c79906fde9ff881943d" [label="copy{src=/, dest=/node-native-extension-in-swift}" shape="note"];
  "sha256:92834a62379b4add6440d3e3cfc79735152c235e06c5e9c436b0c7ecef4fc59b" [label="mkdir{path=/node-native-extension-in-swift}" shape="note"];
  "sha256:2b47d90c2f7a26bbb1f1a7ca3c59e016cd01f01e395459d4288c159b12974b88" [label="sha256:2b47d90c2f7a26bbb1f1a7ca3c59e016cd01f01e395459d4288c159b12974b88" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:7ee53f9e4b744ea4cf72757c3235a9d447648da7424988a40c990d1ec1464b71" [label=""];
  "sha256:7ee53f9e4b744ea4cf72757c3235a9d447648da7424988a40c990d1ec1464b71" -> "sha256:9ecebe657a06973414bc09d7bca2c0368ce54386692251c53e27203b2e0b42cc" [label=""];
  "sha256:9ecebe657a06973414bc09d7bca2c0368ce54386692251c53e27203b2e0b42cc" -> "sha256:a13b51945da1a14462cceb26bb835ca4bdd2e87b6a011a5e26fb3748dc15c638" [label=""];
  "sha256:a13b51945da1a14462cceb26bb835ca4bdd2e87b6a011a5e26fb3748dc15c638" -> "sha256:ccbb87b8b4f2d00b8d8f2358a9fc90a943c7ba213679af4ab68ca5c128c0b945" [label=""];
  "sha256:ccbb87b8b4f2d00b8d8f2358a9fc90a943c7ba213679af4ab68ca5c128c0b945" -> "sha256:e8cc24323c4b7cc3679f22fe2ee9165cbc8aa81d7ba671bda2469d5a71af5911" [label=""];
  "sha256:e8cc24323c4b7cc3679f22fe2ee9165cbc8aa81d7ba671bda2469d5a71af5911" -> "sha256:a3751180374261546e672f97adbc6c8aa98dbab578b06dcfcc28088a4bf4c634" [label=""];
  "sha256:a3751180374261546e672f97adbc6c8aa98dbab578b06dcfcc28088a4bf4c634" -> "sha256:f2ab422a89b1d313e5f26fed732c4eb3ae12c7e6cad40ceec8a5062440165b14" [label=""];
  "sha256:f2ab422a89b1d313e5f26fed732c4eb3ae12c7e6cad40ceec8a5062440165b14" -> "sha256:8f66856cd3f5b89c6e07fdb23bd4d12c972b8a54f44b68cc24e59b4ae5cf1b50" [label=""];
  "sha256:8f66856cd3f5b89c6e07fdb23bd4d12c972b8a54f44b68cc24e59b4ae5cf1b50" -> "sha256:fee997df292a2d598a7c1954d6b2fdec1448dd59754453c0d07a31d22cd83731" [label=""];
  "sha256:fee997df292a2d598a7c1954d6b2fdec1448dd59754453c0d07a31d22cd83731" -> "sha256:03770393fd6364ffcdbebdf3c83301b0a5061907ebca4dddaf26bdbb1fdc37e5" [label=""];
  "sha256:03770393fd6364ffcdbebdf3c83301b0a5061907ebca4dddaf26bdbb1fdc37e5" -> "sha256:2920b4bc90e025dd2e7e34db627075712d5d8fc122622c79906fde9ff881943d" [label=""];
  "sha256:9631739572d12a3837ebc2d5a73326f71c063b7c1e331737508cbc44b1cadc4d" -> "sha256:2920b4bc90e025dd2e7e34db627075712d5d8fc122622c79906fde9ff881943d" [label=""];
  "sha256:2920b4bc90e025dd2e7e34db627075712d5d8fc122622c79906fde9ff881943d" -> "sha256:92834a62379b4add6440d3e3cfc79735152c235e06c5e9c436b0c7ecef4fc59b" [label=""];
  "sha256:92834a62379b4add6440d3e3cfc79735152c235e06c5e9c436b0c7ecef4fc59b" -> "sha256:2b47d90c2f7a26bbb1f1a7ca3c59e016cd01f01e395459d4288c159b12974b88" [label=""];
}

