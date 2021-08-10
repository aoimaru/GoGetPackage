[app/sources/334425011.Dockerfile]
digraph {
  "sha256:f3da0d6b6fc35eabc6282e7bd26a526f12c5c58184c197ef8a3e197965fe17bf" [label="local://context" shape="ellipse"];
  "sha256:a9576e35c240f3def168012c150c972f05ba2c9a30d139b1daed80e324f4d380" [label="docker-image://docker.io/arm64v8/ubuntu:18.10" shape="ellipse"];
  "sha256:c70faad4a258c3683aded91ec3a57eb20e43da5428486085c403f96b47a2b45b" [label="mkdir{path=/app}" shape="note"];
  "sha256:8916f39c6bd72aba75e124ef9314a4bab5ce5d008af338f10302993b8a1099e2" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:028a778b824a08150b80cfe8317c77b2d4641284c0106a44edb670342befda2f" [label="copy{src=/docker/armv8/qemu-aarch64-static, dest=/usr/bin/}" shape="note"];
  "sha256:7a30186f2e08d9a3a6f9a0b9bb5606e78203ce1faa7d46733936b95ea4a2f511" [label="copy{src=/docker/armv8/resin-xbuild, dest=/usr/bin/}" shape="note"];
  "sha256:16154f35802f0e38eef90cdf3bb929556630d6d047f8faed128cee2d171f4a4e" [label="/usr/bin/qemu-aarch64-static /bin/sh -c ln -s resin-xbuild /usr/bin/cross-build-start; ln -s resin-xbuild /usr/bin/cross-build-end; ln /bin/sh /bin/sh.real" shape="box"];
  "sha256:92e738b225b4ab0b9399a4dd2a1c3a6d531ec5246d55356984d7396a7b796682" [label="cross-build-start" shape="box"];
  "sha256:ec7c7471175922de0fe7141af1367e58bfa3c1f6dc8033dbd9e9927fbcb796b9" [label="/bin/sh -c apt-get update && apt-get install -y apt-transport-https ca-certificates --assume-yes --no-install-recommends apt-utils" shape="box"];
  "sha256:1c0f4173170dc4ad7f24a016a19acb2bdb25db991b19df89fea290099026f015" [label="/bin/sh -c apt-get update && apt-get install -y locales --assume-yes && rm -rf /var/lib/apt/lists/* && localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8" shape="box"];
  "sha256:d82bd9331001cb8675ff34df7ce761304c17098c3b82170366630a4ec6c76ff7" [label="/bin/sh -c apt-get update && apt-get install -y xvfb libssl-dev curl xauth --assume-yes --no-install-recommends apt-utils" shape="box"];
  "sha256:c632bf1c4ddff6759d5b37adb89eadba67b1b1f1726b7a8116071258dfee3c12" [label="/bin/sh -c apt-get update && apt-get install -y build-essential --assume-yes --no-install-recommends apt-utils" shape="box"];
  "sha256:3dfd097e4df468de16d5b935d40f81d5b790f62db61584c7c2689f115be30623" [label="/bin/sh -c apt-get update && apt-get install -y npm --assume-yes --no-install-recommends apt-utils" shape="box"];
  "sha256:1cb9180f9ca2d20d0d659ab212c4d6d44056c131fd5bc1a24be8fb17c3ba7aca" [label="/bin/sh -c apt-get update && apt-get install -y chromium-browser --assume-yes --no-install-recommends apt-utils" shape="box"];
  "sha256:ecd42e143c15321af5733c7edc8c22b4d98f8c578c7592255364c075e0c3697f" [label="/bin/sh -c npm config set unsafe-perm true && npm config set registry http://registry.npmjs.org/ && npm install pm2 -g" shape="box"];
  "sha256:32240acee805aa609d5c4e1c3d51e80bf4a8a91166311ffb3b8ece2543a3672b" [label="/bin/sh -c npm config set unsafe-perm true && npm config set registry http://registry.npmjs.org/ && npm install" shape="box"];
  "sha256:2733d15f9beba767d7641a96a087414c25d40416c2d164537d4b1912df9a1214" [label="/bin/sh -c npm config set unsafe-perm true && npm config set registry http://registry.npmjs.org/ && npm install puppeteer@1.9.0" shape="box"];
  "sha256:e8cfe3ac51f1bad69658cf78e4a3a25b06cf7f9ad53ea554a683706451cc3772" [label="cross-build-end" shape="box"];
  "sha256:61915e2f284319ba672d6d40613dbc6d6657e75ede7f3c6e7ca4be1f621f2602" [label="sha256:61915e2f284319ba672d6d40613dbc6d6657e75ede7f3c6e7ca4be1f621f2602" shape="plaintext"];
  "sha256:a9576e35c240f3def168012c150c972f05ba2c9a30d139b1daed80e324f4d380" -> "sha256:c70faad4a258c3683aded91ec3a57eb20e43da5428486085c403f96b47a2b45b" [label=""];
  "sha256:c70faad4a258c3683aded91ec3a57eb20e43da5428486085c403f96b47a2b45b" -> "sha256:8916f39c6bd72aba75e124ef9314a4bab5ce5d008af338f10302993b8a1099e2" [label=""];
  "sha256:f3da0d6b6fc35eabc6282e7bd26a526f12c5c58184c197ef8a3e197965fe17bf" -> "sha256:8916f39c6bd72aba75e124ef9314a4bab5ce5d008af338f10302993b8a1099e2" [label=""];
  "sha256:8916f39c6bd72aba75e124ef9314a4bab5ce5d008af338f10302993b8a1099e2" -> "sha256:028a778b824a08150b80cfe8317c77b2d4641284c0106a44edb670342befda2f" [label=""];
  "sha256:f3da0d6b6fc35eabc6282e7bd26a526f12c5c58184c197ef8a3e197965fe17bf" -> "sha256:028a778b824a08150b80cfe8317c77b2d4641284c0106a44edb670342befda2f" [label=""];
  "sha256:028a778b824a08150b80cfe8317c77b2d4641284c0106a44edb670342befda2f" -> "sha256:7a30186f2e08d9a3a6f9a0b9bb5606e78203ce1faa7d46733936b95ea4a2f511" [label=""];
  "sha256:f3da0d6b6fc35eabc6282e7bd26a526f12c5c58184c197ef8a3e197965fe17bf" -> "sha256:7a30186f2e08d9a3a6f9a0b9bb5606e78203ce1faa7d46733936b95ea4a2f511" [label=""];
  "sha256:7a30186f2e08d9a3a6f9a0b9bb5606e78203ce1faa7d46733936b95ea4a2f511" -> "sha256:16154f35802f0e38eef90cdf3bb929556630d6d047f8faed128cee2d171f4a4e" [label=""];
  "sha256:16154f35802f0e38eef90cdf3bb929556630d6d047f8faed128cee2d171f4a4e" -> "sha256:92e738b225b4ab0b9399a4dd2a1c3a6d531ec5246d55356984d7396a7b796682" [label=""];
  "sha256:92e738b225b4ab0b9399a4dd2a1c3a6d531ec5246d55356984d7396a7b796682" -> "sha256:ec7c7471175922de0fe7141af1367e58bfa3c1f6dc8033dbd9e9927fbcb796b9" [label=""];
  "sha256:ec7c7471175922de0fe7141af1367e58bfa3c1f6dc8033dbd9e9927fbcb796b9" -> "sha256:1c0f4173170dc4ad7f24a016a19acb2bdb25db991b19df89fea290099026f015" [label=""];
  "sha256:1c0f4173170dc4ad7f24a016a19acb2bdb25db991b19df89fea290099026f015" -> "sha256:d82bd9331001cb8675ff34df7ce761304c17098c3b82170366630a4ec6c76ff7" [label=""];
  "sha256:d82bd9331001cb8675ff34df7ce761304c17098c3b82170366630a4ec6c76ff7" -> "sha256:c632bf1c4ddff6759d5b37adb89eadba67b1b1f1726b7a8116071258dfee3c12" [label=""];
  "sha256:c632bf1c4ddff6759d5b37adb89eadba67b1b1f1726b7a8116071258dfee3c12" -> "sha256:3dfd097e4df468de16d5b935d40f81d5b790f62db61584c7c2689f115be30623" [label=""];
  "sha256:3dfd097e4df468de16d5b935d40f81d5b790f62db61584c7c2689f115be30623" -> "sha256:1cb9180f9ca2d20d0d659ab212c4d6d44056c131fd5bc1a24be8fb17c3ba7aca" [label=""];
  "sha256:1cb9180f9ca2d20d0d659ab212c4d6d44056c131fd5bc1a24be8fb17c3ba7aca" -> "sha256:ecd42e143c15321af5733c7edc8c22b4d98f8c578c7592255364c075e0c3697f" [label=""];
  "sha256:ecd42e143c15321af5733c7edc8c22b4d98f8c578c7592255364c075e0c3697f" -> "sha256:32240acee805aa609d5c4e1c3d51e80bf4a8a91166311ffb3b8ece2543a3672b" [label=""];
  "sha256:32240acee805aa609d5c4e1c3d51e80bf4a8a91166311ffb3b8ece2543a3672b" -> "sha256:2733d15f9beba767d7641a96a087414c25d40416c2d164537d4b1912df9a1214" [label=""];
  "sha256:2733d15f9beba767d7641a96a087414c25d40416c2d164537d4b1912df9a1214" -> "sha256:e8cfe3ac51f1bad69658cf78e4a3a25b06cf7f9ad53ea554a683706451cc3772" [label=""];
  "sha256:e8cfe3ac51f1bad69658cf78e4a3a25b06cf7f9ad53ea554a683706451cc3772" -> "sha256:61915e2f284319ba672d6d40613dbc6d6657e75ede7f3c6e7ca4be1f621f2602" [label=""];
}

