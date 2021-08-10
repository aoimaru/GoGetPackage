[app/sources/301470274.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:07c0b3f249c123bd2c005c2350f5e7051ea33d4560cfbfaa1242c88ab6c81f33" [label="/bin/sh -c apt-get update   && apt-get install -y   unzip   golang   git   netcat-openbsd   chromium-browser   && mkdir /go   && export GOPATH=/go   && go get github.com/unixpickle/fsserver   && mv /go/bin/fsserver /usr/local/bin   && apt-get remove -y golang git   && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:6c33ec9294689703050005b9ea35bf7d9508ffe0912ab5db00586a78b9b45b56" [label="local://context" shape="ellipse"];
  "sha256:c70e2997b5662102e2a20e8c2d1780096c42c5915f43a9aa6a85d2cb4c59ea97" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:dc2f75d3f69b58f633573a68e215b1a3f319bf4d5be294a07e994bf524cd9cd1" [label="copy{src=/downloaded_games, dest=/downloaded_games}" shape="note"];
  "sha256:5fc4e785065e97e683c866d6071f01d1002a26dfd942855fd3be00e55482a2fa" [label="copy{src=/netwait, dest=/go/src/netwait}" shape="note"];
  "sha256:5334d2bde577e164a007f9ee434ef9f784820b3d4eadaaad91ad64a706058060" [label="/bin/sh -c chmod +x /run.sh   && go build -o /usr/local/bin/netwait /go/src/netwait/main.go" shape="box"];
  "sha256:9e59cfcc353a2955d1993884ff19361dc952b919e7457c296a68eaf4e8fd61c9" [label="sha256:9e59cfcc353a2955d1993884ff19361dc952b919e7457c296a68eaf4e8fd61c9" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:07c0b3f249c123bd2c005c2350f5e7051ea33d4560cfbfaa1242c88ab6c81f33" [label=""];
  "sha256:07c0b3f249c123bd2c005c2350f5e7051ea33d4560cfbfaa1242c88ab6c81f33" -> "sha256:c70e2997b5662102e2a20e8c2d1780096c42c5915f43a9aa6a85d2cb4c59ea97" [label=""];
  "sha256:6c33ec9294689703050005b9ea35bf7d9508ffe0912ab5db00586a78b9b45b56" -> "sha256:c70e2997b5662102e2a20e8c2d1780096c42c5915f43a9aa6a85d2cb4c59ea97" [label=""];
  "sha256:c70e2997b5662102e2a20e8c2d1780096c42c5915f43a9aa6a85d2cb4c59ea97" -> "sha256:dc2f75d3f69b58f633573a68e215b1a3f319bf4d5be294a07e994bf524cd9cd1" [label=""];
  "sha256:6c33ec9294689703050005b9ea35bf7d9508ffe0912ab5db00586a78b9b45b56" -> "sha256:dc2f75d3f69b58f633573a68e215b1a3f319bf4d5be294a07e994bf524cd9cd1" [label=""];
  "sha256:dc2f75d3f69b58f633573a68e215b1a3f319bf4d5be294a07e994bf524cd9cd1" -> "sha256:5fc4e785065e97e683c866d6071f01d1002a26dfd942855fd3be00e55482a2fa" [label=""];
  "sha256:6c33ec9294689703050005b9ea35bf7d9508ffe0912ab5db00586a78b9b45b56" -> "sha256:5fc4e785065e97e683c866d6071f01d1002a26dfd942855fd3be00e55482a2fa" [label=""];
  "sha256:5fc4e785065e97e683c866d6071f01d1002a26dfd942855fd3be00e55482a2fa" -> "sha256:5334d2bde577e164a007f9ee434ef9f784820b3d4eadaaad91ad64a706058060" [label=""];
  "sha256:5334d2bde577e164a007f9ee434ef9f784820b3d4eadaaad91ad64a706058060" -> "sha256:9e59cfcc353a2955d1993884ff19361dc952b919e7457c296a68eaf4e8fd61c9" [label=""];
}

