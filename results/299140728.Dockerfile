[app/sources/299140728.Dockerfile]
digraph {
  "sha256:89f83a398ddd7a7561f1df8f8c74620920526e06cd666cc36f009cae6c85fa4e" [label="docker-image://docker.io/library/node:4.6" shape="ellipse"];
  "sha256:6b33882a183eccc788c6bf54127fa000f94e76e7c62c505204ece3395bfce34e" [label="/bin/sh -c mkdir /naivechain" shape="box"];
  "sha256:2367bd383faee60a66d851be9d7e4e98a57b4b13f7a7ec74ecdaa7122fe0fa8a" [label="local://context" shape="ellipse"];
  "sha256:03ee26bf97dde300fc2574c78e0a9cfb3c052d1a4acfc3d3607467a5753f2433" [label="copy{src=/package.json, dest=/naivechain/}" shape="note"];
  "sha256:8acfdbd1e3e961ba892251f061ce8fe9cc5684be50106c408ce4d1c9cecce3b7" [label="copy{src=/main.js, dest=/naivechain/}" shape="note"];
  "sha256:d9e7a6e8546e97d29e651256593c9b0f42cc82dbd06e3c10152ad5e8b8c7fcce" [label="/bin/sh -c cd /naivechain && npm install" shape="box"];
  "sha256:a3b3c6643d9be363d8195965df665e9b57c29237bd396830452ddf37f4f36338" [label="sha256:a3b3c6643d9be363d8195965df665e9b57c29237bd396830452ddf37f4f36338" shape="plaintext"];
  "sha256:89f83a398ddd7a7561f1df8f8c74620920526e06cd666cc36f009cae6c85fa4e" -> "sha256:6b33882a183eccc788c6bf54127fa000f94e76e7c62c505204ece3395bfce34e" [label=""];
  "sha256:6b33882a183eccc788c6bf54127fa000f94e76e7c62c505204ece3395bfce34e" -> "sha256:03ee26bf97dde300fc2574c78e0a9cfb3c052d1a4acfc3d3607467a5753f2433" [label=""];
  "sha256:2367bd383faee60a66d851be9d7e4e98a57b4b13f7a7ec74ecdaa7122fe0fa8a" -> "sha256:03ee26bf97dde300fc2574c78e0a9cfb3c052d1a4acfc3d3607467a5753f2433" [label=""];
  "sha256:03ee26bf97dde300fc2574c78e0a9cfb3c052d1a4acfc3d3607467a5753f2433" -> "sha256:8acfdbd1e3e961ba892251f061ce8fe9cc5684be50106c408ce4d1c9cecce3b7" [label=""];
  "sha256:2367bd383faee60a66d851be9d7e4e98a57b4b13f7a7ec74ecdaa7122fe0fa8a" -> "sha256:8acfdbd1e3e961ba892251f061ce8fe9cc5684be50106c408ce4d1c9cecce3b7" [label=""];
  "sha256:8acfdbd1e3e961ba892251f061ce8fe9cc5684be50106c408ce4d1c9cecce3b7" -> "sha256:d9e7a6e8546e97d29e651256593c9b0f42cc82dbd06e3c10152ad5e8b8c7fcce" [label=""];
  "sha256:d9e7a6e8546e97d29e651256593c9b0f42cc82dbd06e3c10152ad5e8b8c7fcce" -> "sha256:a3b3c6643d9be363d8195965df665e9b57c29237bd396830452ddf37f4f36338" [label=""];
}

