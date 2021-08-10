[app/sources/256547998.Dockerfile]
digraph {
  "sha256:aa9de8c44f10603bb6316463a27c66ef60de3045c28c83b392710ce2fca8050e" [label="docker-image://docker.io/library/nginx:1.15.9" shape="ellipse"];
  "sha256:9bcd91145abd2e47c6fefeb89ca72bf0624cfb34b43ea2eede62c35e462bf948" [label="mkdir{path=/opt/build-your-own-radar}" shape="note"];
  "sha256:20b6145b391924cccd3a2cc55ed36ab4a524340e9b51b9a6a3628a4020e5fdc4" [label="docker-image://docker.io/library/node:10.15.3" shape="ellipse"];
  "sha256:7135ce5c56b0da6ba07141088b2c507538ec942e70cbe64dea8e59966dea3f6b" [label="mkdir{path=/src/build-your-own-radar}" shape="note"];
  "sha256:d747995716ceff8c899e6b305050883e676543b05082334c77343cddf96cef39" [label="local://context" shape="ellipse"];
  "sha256:3b557da82d14c6dbe9174e6e5f299c4598f8f09f0141f812de288e4f12239fd9" [label="copy{src=/package.json, dest=/src/build-your-own-radar/}" shape="note"];
  "sha256:8d663b8eb3ab69343b90878390d6f7f1735371a2afee1c17ad1f18b702559e70" [label="/bin/sh -c npm install" shape="box"];
  "sha256:9bb129b000d0e38ccae7b26f32c1b6dabc0df45bc7a6e4e202bb969307914245" [label="copy{src=/, dest=/src/build-your-own-radar/}" shape="note"];
  "sha256:4917b7ea650090082d9a3efa966bd4194b595d9faa0316d3be742fae624c27bd" [label="/bin/sh -c npm run build" shape="box"];
  "sha256:b5c88159c2915a5ac2f974947b3f22f112dc08f752b492285e27e8987e2576d9" [label="copy{src=/src/build-your-own-radar/dist, dest=/opt/build-your-own-radar/}" shape="note"];
  "sha256:aea54427da6ddbd2e6fbff6636811442537f6229a0f16ae614e57cc4c25eff72" [label="copy{src=/default.template, dest=/etc/nginx/conf.d/default.conf}" shape="note"];
  "sha256:af1917a088b61cfea83d344bfa41282628e0ac1cf8ea934027dc25f0c11dfd22" [label="sha256:af1917a088b61cfea83d344bfa41282628e0ac1cf8ea934027dc25f0c11dfd22" shape="plaintext"];
  "sha256:aa9de8c44f10603bb6316463a27c66ef60de3045c28c83b392710ce2fca8050e" -> "sha256:9bcd91145abd2e47c6fefeb89ca72bf0624cfb34b43ea2eede62c35e462bf948" [label=""];
  "sha256:20b6145b391924cccd3a2cc55ed36ab4a524340e9b51b9a6a3628a4020e5fdc4" -> "sha256:7135ce5c56b0da6ba07141088b2c507538ec942e70cbe64dea8e59966dea3f6b" [label=""];
  "sha256:7135ce5c56b0da6ba07141088b2c507538ec942e70cbe64dea8e59966dea3f6b" -> "sha256:3b557da82d14c6dbe9174e6e5f299c4598f8f09f0141f812de288e4f12239fd9" [label=""];
  "sha256:d747995716ceff8c899e6b305050883e676543b05082334c77343cddf96cef39" -> "sha256:3b557da82d14c6dbe9174e6e5f299c4598f8f09f0141f812de288e4f12239fd9" [label=""];
  "sha256:3b557da82d14c6dbe9174e6e5f299c4598f8f09f0141f812de288e4f12239fd9" -> "sha256:8d663b8eb3ab69343b90878390d6f7f1735371a2afee1c17ad1f18b702559e70" [label=""];
  "sha256:8d663b8eb3ab69343b90878390d6f7f1735371a2afee1c17ad1f18b702559e70" -> "sha256:9bb129b000d0e38ccae7b26f32c1b6dabc0df45bc7a6e4e202bb969307914245" [label=""];
  "sha256:d747995716ceff8c899e6b305050883e676543b05082334c77343cddf96cef39" -> "sha256:9bb129b000d0e38ccae7b26f32c1b6dabc0df45bc7a6e4e202bb969307914245" [label=""];
  "sha256:9bb129b000d0e38ccae7b26f32c1b6dabc0df45bc7a6e4e202bb969307914245" -> "sha256:4917b7ea650090082d9a3efa966bd4194b595d9faa0316d3be742fae624c27bd" [label=""];
  "sha256:9bcd91145abd2e47c6fefeb89ca72bf0624cfb34b43ea2eede62c35e462bf948" -> "sha256:b5c88159c2915a5ac2f974947b3f22f112dc08f752b492285e27e8987e2576d9" [label=""];
  "sha256:4917b7ea650090082d9a3efa966bd4194b595d9faa0316d3be742fae624c27bd" -> "sha256:b5c88159c2915a5ac2f974947b3f22f112dc08f752b492285e27e8987e2576d9" [label=""];
  "sha256:b5c88159c2915a5ac2f974947b3f22f112dc08f752b492285e27e8987e2576d9" -> "sha256:aea54427da6ddbd2e6fbff6636811442537f6229a0f16ae614e57cc4c25eff72" [label=""];
  "sha256:d747995716ceff8c899e6b305050883e676543b05082334c77343cddf96cef39" -> "sha256:aea54427da6ddbd2e6fbff6636811442537f6229a0f16ae614e57cc4c25eff72" [label=""];
  "sha256:aea54427da6ddbd2e6fbff6636811442537f6229a0f16ae614e57cc4c25eff72" -> "sha256:af1917a088b61cfea83d344bfa41282628e0ac1cf8ea934027dc25f0c11dfd22" [label=""];
}

