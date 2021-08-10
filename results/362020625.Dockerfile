[app/sources/362020625.Dockerfile]
digraph {
  "sha256:f1af9cf4665935e7ce15a7841c7c650cb3177078c82fde1306674b30b01132c1" [label="local://context" shape="ellipse"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:73105d100164b66b1e003ad719d3ccd658967f8e70ace43cda8d70f163e38389" [label="/bin/sh -c apt-get -qq update &&     apt-get -qq upgrade &&     apt-get install --yes linphone-nogtk pulseaudio &&     gpasswd -a root pulse-access &&     apt-get clean" shape="box"];
  "sha256:41cfca2c3947bece54b7c5ac90d502712e7662ff0a4cd4e178d2884c7d76d493" [label="copy{src=/linphone.sh, dest=/root/linphone.sh}" shape="note"];
  "sha256:1b2a07bfc46c41944e542c140cd7e30acdda4352cdbd36c4cf681c4cf9b40508" [label="copy{src=/config/linphonerc, dest=/root/.linphonerc}" shape="note"];
  "sha256:0a8183ef653b9f277834f5999e3eb9ec1ff841194de233bebc1bda2f8414cb02" [label="sha256:0a8183ef653b9f277834f5999e3eb9ec1ff841194de233bebc1bda2f8414cb02" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:73105d100164b66b1e003ad719d3ccd658967f8e70ace43cda8d70f163e38389" [label=""];
  "sha256:73105d100164b66b1e003ad719d3ccd658967f8e70ace43cda8d70f163e38389" -> "sha256:41cfca2c3947bece54b7c5ac90d502712e7662ff0a4cd4e178d2884c7d76d493" [label=""];
  "sha256:f1af9cf4665935e7ce15a7841c7c650cb3177078c82fde1306674b30b01132c1" -> "sha256:41cfca2c3947bece54b7c5ac90d502712e7662ff0a4cd4e178d2884c7d76d493" [label=""];
  "sha256:41cfca2c3947bece54b7c5ac90d502712e7662ff0a4cd4e178d2884c7d76d493" -> "sha256:1b2a07bfc46c41944e542c140cd7e30acdda4352cdbd36c4cf681c4cf9b40508" [label=""];
  "sha256:f1af9cf4665935e7ce15a7841c7c650cb3177078c82fde1306674b30b01132c1" -> "sha256:1b2a07bfc46c41944e542c140cd7e30acdda4352cdbd36c4cf681c4cf9b40508" [label=""];
  "sha256:1b2a07bfc46c41944e542c140cd7e30acdda4352cdbd36c4cf681c4cf9b40508" -> "sha256:0a8183ef653b9f277834f5999e3eb9ec1ff841194de233bebc1bda2f8414cb02" [label=""];
}

