[app/sources/164287434.Dockerfile]
digraph {
  "sha256:9894880239c1390a414ed7ff30650eb31aab081f1751152cd84bd6abf6ef2b92" [label="docker-image://docker.io/matrixdotorg/sytest:latest" shape="ellipse"];
  "sha256:2446c99ae0d2bbef8569ae782f83f765cdfa1730c32e5f47072c4d994fe1336c" [label="/bin/sh -c mkdir -p /goroot /gopath" shape="box"];
  "sha256:05ded6bdbc40af7dafca8480a1b284f97f64fae658ff40db51506e849d7ff074" [label="/bin/sh -c wget -q https://dl.google.com/go/go1.11.10.linux-amd64.tar.gz -O go.tar.gz" shape="box"];
  "sha256:24eb09ac03058ed53e90cbfbe6b90e5f09a77edc8440acad1a8c8724ecc2e6e0" [label="/bin/sh -c tar xf go.tar.gz -C /goroot --strip-components=1" shape="box"];
  "sha256:ad21c089eabf06fa6fcac98ef0edc82aac4e9371627b4f592d42b644d08357ce" [label="/bin/sh -c mkdir -p /etc/postgresql/9.6/main/conf.d/" shape="box"];
  "sha256:87fea2f7311d2075a4924b8c0a58069819528e0ab215275776f714eae0880958" [label="/bin/sh -c echo \"fsync=off\" > /etc/postgresql/9.6/main/conf.d/fsync.conf" shape="box"];
  "sha256:be013003dce539f5568b42663b834a6255cdc26bc5195ee213716f66c6bfa6fb" [label="/bin/sh -c echo \"full_page_writes=off\" >> /etc/postgresql/9.6/main/conf.d/fsync.conf" shape="box"];
  "sha256:1b278a3063717c45c8d7bda5267a76ee44949a7c390ad0efa7bd061e8e252a2b" [label="/bin/sh -c su -c '/usr/lib/postgresql/9.6/bin/initdb -E \"UTF-8\" --lc-collate=\"en_US.UTF-8\" --lc-ctype=\"en_US.UTF-8\" --username=postgres' postgres" shape="box"];
  "sha256:523ba814ac48ace32ca4220f49a2908f2c1a533ce3a740002ce6461fa2b134fa" [label="/bin/sh -c mkdir -p /src" shape="box"];
  "sha256:49ac4be58819db15fdc8016476d70253c4b904e2962b461e27e6001d671f13eb" [label="local://context" shape="ellipse"];
  "sha256:87ead6e7a24725fe6d663af0765487e785a8542c96cf63ecef07a068fb67676c" [label="copy{src=/docker/dendrite_sytest.sh, dest=/dendrite_sytest.sh}" shape="note"];
  "sha256:c3553ea499770da2aba655384cabd0395c7b57ebcd0f8d096239a210592917a9" [label="/bin/sh -c dos2unix /dendrite_sytest.sh" shape="box"];
  "sha256:3388e31816ac01a823a02c0ab10b8416feed22edf4e5b78467751cf1f75eef09" [label="sha256:3388e31816ac01a823a02c0ab10b8416feed22edf4e5b78467751cf1f75eef09" shape="plaintext"];
  "sha256:9894880239c1390a414ed7ff30650eb31aab081f1751152cd84bd6abf6ef2b92" -> "sha256:2446c99ae0d2bbef8569ae782f83f765cdfa1730c32e5f47072c4d994fe1336c" [label=""];
  "sha256:2446c99ae0d2bbef8569ae782f83f765cdfa1730c32e5f47072c4d994fe1336c" -> "sha256:05ded6bdbc40af7dafca8480a1b284f97f64fae658ff40db51506e849d7ff074" [label=""];
  "sha256:05ded6bdbc40af7dafca8480a1b284f97f64fae658ff40db51506e849d7ff074" -> "sha256:24eb09ac03058ed53e90cbfbe6b90e5f09a77edc8440acad1a8c8724ecc2e6e0" [label=""];
  "sha256:24eb09ac03058ed53e90cbfbe6b90e5f09a77edc8440acad1a8c8724ecc2e6e0" -> "sha256:ad21c089eabf06fa6fcac98ef0edc82aac4e9371627b4f592d42b644d08357ce" [label=""];
  "sha256:ad21c089eabf06fa6fcac98ef0edc82aac4e9371627b4f592d42b644d08357ce" -> "sha256:87fea2f7311d2075a4924b8c0a58069819528e0ab215275776f714eae0880958" [label=""];
  "sha256:87fea2f7311d2075a4924b8c0a58069819528e0ab215275776f714eae0880958" -> "sha256:be013003dce539f5568b42663b834a6255cdc26bc5195ee213716f66c6bfa6fb" [label=""];
  "sha256:be013003dce539f5568b42663b834a6255cdc26bc5195ee213716f66c6bfa6fb" -> "sha256:1b278a3063717c45c8d7bda5267a76ee44949a7c390ad0efa7bd061e8e252a2b" [label=""];
  "sha256:1b278a3063717c45c8d7bda5267a76ee44949a7c390ad0efa7bd061e8e252a2b" -> "sha256:523ba814ac48ace32ca4220f49a2908f2c1a533ce3a740002ce6461fa2b134fa" [label=""];
  "sha256:523ba814ac48ace32ca4220f49a2908f2c1a533ce3a740002ce6461fa2b134fa" -> "sha256:87ead6e7a24725fe6d663af0765487e785a8542c96cf63ecef07a068fb67676c" [label=""];
  "sha256:49ac4be58819db15fdc8016476d70253c4b904e2962b461e27e6001d671f13eb" -> "sha256:87ead6e7a24725fe6d663af0765487e785a8542c96cf63ecef07a068fb67676c" [label=""];
  "sha256:87ead6e7a24725fe6d663af0765487e785a8542c96cf63ecef07a068fb67676c" -> "sha256:c3553ea499770da2aba655384cabd0395c7b57ebcd0f8d096239a210592917a9" [label=""];
  "sha256:c3553ea499770da2aba655384cabd0395c7b57ebcd0f8d096239a210592917a9" -> "sha256:3388e31816ac01a823a02c0ab10b8416feed22edf4e5b78467751cf1f75eef09" [label=""];
}

