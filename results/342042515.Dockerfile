[app/sources/342042515.Dockerfile]
digraph {
  "sha256:4968e8fe542427c11bd7dccdb484d7f6449961c0ac080552c6768adc87c91e25" [label="local://context" shape="ellipse"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:366d241567d832d0f01259266d99427bd259bafe6db2a493de2d3f580110602e" [label="/bin/sh -c apt-get update  && apt-get install -y $DEPENDENCIES" shape="box"];
  "sha256:c66f6ea924b6623e67a7cc519c10bf35774d4234433a4e16e094bd93645c0e35" [label="/bin/sh -c git clone https://github.com/shadowsocks/shadowsocks-libev.git $BASEDIR" shape="box"];
  "sha256:be91ed975e1455228c1de6ca186983cff28046eef71663b9eaa3e35540704f9a" [label="mkdir{path=/tmp/shadowsocks-libev}" shape="note"];
  "sha256:800a67078d6b0c031cf0fbd20f26cfb7aafdaf7a43fd9f1f477e4c17c243de53" [label="/bin/sh -c ./configure  && make  && make install" shape="box"];
  "sha256:2501b454163cb786620f169e6fa2b541aaef99898508f78ae1d0c6800fda8437" [label="/bin/sh -c rm -rf $BASEDIR/shadowsocks-libev && apt-get --purge autoremove -y $DEPENDENCIES" shape="box"];
  "sha256:c5e5317e0758d6d269494e5665b2aeff2c583c0968592450cb06106e36c2f50f" [label="copy{src=/entrypoint, dest=/}" shape="note"];
  "sha256:80cf1d0483efc6ddf47f70fd347108155960663804fc4742c96b4425ec4265e9" [label="sha256:80cf1d0483efc6ddf47f70fd347108155960663804fc4742c96b4425ec4265e9" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:366d241567d832d0f01259266d99427bd259bafe6db2a493de2d3f580110602e" [label=""];
  "sha256:366d241567d832d0f01259266d99427bd259bafe6db2a493de2d3f580110602e" -> "sha256:c66f6ea924b6623e67a7cc519c10bf35774d4234433a4e16e094bd93645c0e35" [label=""];
  "sha256:c66f6ea924b6623e67a7cc519c10bf35774d4234433a4e16e094bd93645c0e35" -> "sha256:be91ed975e1455228c1de6ca186983cff28046eef71663b9eaa3e35540704f9a" [label=""];
  "sha256:be91ed975e1455228c1de6ca186983cff28046eef71663b9eaa3e35540704f9a" -> "sha256:800a67078d6b0c031cf0fbd20f26cfb7aafdaf7a43fd9f1f477e4c17c243de53" [label=""];
  "sha256:800a67078d6b0c031cf0fbd20f26cfb7aafdaf7a43fd9f1f477e4c17c243de53" -> "sha256:2501b454163cb786620f169e6fa2b541aaef99898508f78ae1d0c6800fda8437" [label=""];
  "sha256:2501b454163cb786620f169e6fa2b541aaef99898508f78ae1d0c6800fda8437" -> "sha256:c5e5317e0758d6d269494e5665b2aeff2c583c0968592450cb06106e36c2f50f" [label=""];
  "sha256:4968e8fe542427c11bd7dccdb484d7f6449961c0ac080552c6768adc87c91e25" -> "sha256:c5e5317e0758d6d269494e5665b2aeff2c583c0968592450cb06106e36c2f50f" [label=""];
  "sha256:c5e5317e0758d6d269494e5665b2aeff2c583c0968592450cb06106e36c2f50f" -> "sha256:80cf1d0483efc6ddf47f70fd347108155960663804fc4742c96b4425ec4265e9" [label=""];
}

