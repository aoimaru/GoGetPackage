[app/sources/264442843.Dockerfile]
digraph {
  "sha256:f86fa8aa6fd964a94217c5c33f6306d4d9e48e2885119b2bc338852146c3d676" [label="docker-image://docker.io/library/alpine:3.9@sha256:414e0518bb9228d35e4cd5165567fb91d26c6a214e9c95899e1e056fcd349011" shape="ellipse"];
  "sha256:11586a9f20f0d06ab393ac06c07044ca967a72a6095dd1fbdecd034f62e2b15d" [label="/bin/sh -c apk add --no-cache --update nodejs nodejs-npm libstdc++ eudev-libs libgcc git && \tnpm install npm@latest -g" shape="box"];
  "sha256:0054fb541b1e4c5722a7b41fae428e6449673d28d036a1b7f7e94c25ccef0fad" [label="/bin/sh -c apk add --no-cache --update \tgit \tbuild-base \tcargo \tcmake \teudev-dev \tlinux-headers \tperl \trust" shape="box"];
  "sha256:54bc7093d34ecc56bd5ec0b4999655e366e9702e824878d2b68dfb0bcccae144" [label="/bin/sh -c cargo --version" shape="box"];
  "sha256:ce791b1ed0621eabb17d7857b89480ed6d74ee10127424b33d4542cda24fe8be" [label="/bin/sh -c git clone https://github.com/paritytech/parity" shape="box"];
  "sha256:155311e822ab4b2023e6d14df89b2673d4e5e663cbee41bb6d4ecbd14ae1fea8" [label="/bin/sh -c cd parity && \tgit checkout stable  && \tcargo build --release --features final" shape="box"];
  "sha256:1837bae3fcfbea50bf4fe1f05daf50aad5eb96e6e9da5104317acac469bee955" [label="copy{src=/parity/target/release/parity, dest=/usr/bin/}" shape="note"];
  "sha256:e9bc8f6a2683d7eb2e047c4f22c8d6d86bca36588e8934dd35ecaff662084b79" [label="/bin/sh -c cd /root/ && \tgit clone --depth=1 https://github.com/cubedro/eth-net-intelligence-api.git && \tcd eth-net-intelligence-api \t\t\t\t\t\t\t\t\t\t\t\t&& \tnpm install \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t&& \tnpm install -g pm2" shape="box"];
  "sha256:d204453f5a1610ec5a9169a1fb404a56519ff037870ee0b6e52c4dd84c2371b0" [label="/bin/sh -c npm cache clean --force && \tapk del nodejs-npm  && \trm -rf /var/cache/apk/*" shape="box"];
  "sha256:658d2036faee71b7da295d560e769f9b691e67dedef11616737d09b4fdee5632" [label="local://context" shape="ellipse"];
  "sha256:0d6e72c05bbe22b339bb2ea99f51c8f7ec8547593b3baaf19c50a05a9f137717" [label="copy{src=/files/app.json, dest=/root/eth-net-intelligence-api/app.json}" shape="note"];
  "sha256:9a8ba3488e7af93d3d09f5b64775063841aaf8580373fe2629abe82a5a1f11fb" [label="copy{src=/files/startscript.sh, dest=/root/startscript.sh}" shape="note"];
  "sha256:863185933ad589c0f60025a6391a68a8f92f0b990496beb6719adadbfe3bdb16" [label="/bin/sh -c chmod +x /root/startscript.sh" shape="box"];
  "sha256:0cf7b9d570bb31c4afc046728a0606bead6784b28e3e98e68f53d767d75577c0" [label="sha256:0cf7b9d570bb31c4afc046728a0606bead6784b28e3e98e68f53d767d75577c0" shape="plaintext"];
  "sha256:f86fa8aa6fd964a94217c5c33f6306d4d9e48e2885119b2bc338852146c3d676" -> "sha256:11586a9f20f0d06ab393ac06c07044ca967a72a6095dd1fbdecd034f62e2b15d" [label=""];
  "sha256:f86fa8aa6fd964a94217c5c33f6306d4d9e48e2885119b2bc338852146c3d676" -> "sha256:0054fb541b1e4c5722a7b41fae428e6449673d28d036a1b7f7e94c25ccef0fad" [label=""];
  "sha256:0054fb541b1e4c5722a7b41fae428e6449673d28d036a1b7f7e94c25ccef0fad" -> "sha256:54bc7093d34ecc56bd5ec0b4999655e366e9702e824878d2b68dfb0bcccae144" [label=""];
  "sha256:54bc7093d34ecc56bd5ec0b4999655e366e9702e824878d2b68dfb0bcccae144" -> "sha256:ce791b1ed0621eabb17d7857b89480ed6d74ee10127424b33d4542cda24fe8be" [label=""];
  "sha256:ce791b1ed0621eabb17d7857b89480ed6d74ee10127424b33d4542cda24fe8be" -> "sha256:155311e822ab4b2023e6d14df89b2673d4e5e663cbee41bb6d4ecbd14ae1fea8" [label=""];
  "sha256:11586a9f20f0d06ab393ac06c07044ca967a72a6095dd1fbdecd034f62e2b15d" -> "sha256:1837bae3fcfbea50bf4fe1f05daf50aad5eb96e6e9da5104317acac469bee955" [label=""];
  "sha256:155311e822ab4b2023e6d14df89b2673d4e5e663cbee41bb6d4ecbd14ae1fea8" -> "sha256:1837bae3fcfbea50bf4fe1f05daf50aad5eb96e6e9da5104317acac469bee955" [label=""];
  "sha256:1837bae3fcfbea50bf4fe1f05daf50aad5eb96e6e9da5104317acac469bee955" -> "sha256:e9bc8f6a2683d7eb2e047c4f22c8d6d86bca36588e8934dd35ecaff662084b79" [label=""];
  "sha256:e9bc8f6a2683d7eb2e047c4f22c8d6d86bca36588e8934dd35ecaff662084b79" -> "sha256:d204453f5a1610ec5a9169a1fb404a56519ff037870ee0b6e52c4dd84c2371b0" [label=""];
  "sha256:d204453f5a1610ec5a9169a1fb404a56519ff037870ee0b6e52c4dd84c2371b0" -> "sha256:0d6e72c05bbe22b339bb2ea99f51c8f7ec8547593b3baaf19c50a05a9f137717" [label=""];
  "sha256:658d2036faee71b7da295d560e769f9b691e67dedef11616737d09b4fdee5632" -> "sha256:0d6e72c05bbe22b339bb2ea99f51c8f7ec8547593b3baaf19c50a05a9f137717" [label=""];
  "sha256:0d6e72c05bbe22b339bb2ea99f51c8f7ec8547593b3baaf19c50a05a9f137717" -> "sha256:9a8ba3488e7af93d3d09f5b64775063841aaf8580373fe2629abe82a5a1f11fb" [label=""];
  "sha256:658d2036faee71b7da295d560e769f9b691e67dedef11616737d09b4fdee5632" -> "sha256:9a8ba3488e7af93d3d09f5b64775063841aaf8580373fe2629abe82a5a1f11fb" [label=""];
  "sha256:9a8ba3488e7af93d3d09f5b64775063841aaf8580373fe2629abe82a5a1f11fb" -> "sha256:863185933ad589c0f60025a6391a68a8f92f0b990496beb6719adadbfe3bdb16" [label=""];
  "sha256:863185933ad589c0f60025a6391a68a8f92f0b990496beb6719adadbfe3bdb16" -> "sha256:0cf7b9d570bb31c4afc046728a0606bead6784b28e3e98e68f53d767d75577c0" [label=""];
}

