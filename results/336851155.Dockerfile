[app/sources/336851155.Dockerfile]
digraph {
  "sha256:b1cc67b03239ecec62dd9724d252c2d40c7305957d387c4d4ab92103561d2f2e" [label="docker-image://docker.io/library/ruby:2.6.1-alpine" shape="ellipse"];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" [label="docker-image://docker.io/library/node:10-alpine" shape="ellipse"];
  "sha256:9f8ae0b454a9b86ab218061777646f0fd10de8b573970ff6232bfdef50c5eff2" [label="copy{src=/usr/local/bin/node, dest=/usr/local/bin/}" shape="note"];
  "sha256:d5624779456e2b43d6bcc9151caab452d764ba2f454841a6511092b60bb57a99" [label="copy{src=/opt/yarn-v*, dest=/opt/yarn}" shape="note"];
  "sha256:320f0aedaf6e37fe8a12e871e4214f679648e119e3dcf1f938e52d9e5b817efc" [label="/bin/sh -c apk --update --no-cache add build-base                                 linux-headers                                 git                                 cmake                                 less                                 postgresql-dev                                 tzdata     && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarn     && ln -s /opt/yarn/bin/yarn /usr/local/bin/yarnpkg" shape="box"];
  "sha256:0d147c00502262ee630ac30947429a94cfe7772e9fbf5dda40e7b884ba78a334" [label="mkdir{path=/ama}" shape="note"];
  "sha256:7f976787cf93a8a07bf2104f0df5a7168c1227c9a759dd1853f546fad84102fc" [label="local://context" shape="ellipse"];
  "sha256:b76d10c50740884f5c588e89b73da8aa8f5a15a537091d2a81544d1b2069aee7" [label="copy{src=/Gemfile*, dest=/ama/}" shape="note"];
  "sha256:c25215d2e20e7825967aaff8bcf68bdd2f4d0aad555880a8e3065e3a727ffd3e" [label="/bin/sh -c bundle install --jobs=4 --without development test" shape="box"];
  "sha256:70e6949f10b207e2e7a6ca46935648a99b2c11bf6a53f46eafcc6c047740f883" [label="copy{src=/package.json, dest=/ama/},copy{src=/yarn.lock, dest=/ama/}" shape="note"];
  "sha256:66f6f0be99e47f8ed98d4c7169f92c5d836a525bba0afbb19c6fca921e9a2049" [label="/bin/sh -c yarn" shape="box"];
  "sha256:baaeece79ee3bb5ceb4ac60af7656e8e4ea0d370c26b118716da8bb4aca39e28" [label="copy{src=/, dest=/ama}" shape="note"];
  "sha256:775b10c70d6de98ba2c4bc1e116ed1e168ecc2d5d13562b0aa3ea6a780438f89" [label="/bin/sh -c rails assets:precompile" shape="box"];
  "sha256:7548384c97c0fcedcb6ad5634c76ad778c3114303f18802ca1a55e051bacffc1" [label="sha256:7548384c97c0fcedcb6ad5634c76ad778c3114303f18802ca1a55e051bacffc1" shape="plaintext"];
  "sha256:b1cc67b03239ecec62dd9724d252c2d40c7305957d387c4d4ab92103561d2f2e" -> "sha256:9f8ae0b454a9b86ab218061777646f0fd10de8b573970ff6232bfdef50c5eff2" [label=""];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:9f8ae0b454a9b86ab218061777646f0fd10de8b573970ff6232bfdef50c5eff2" [label=""];
  "sha256:9f8ae0b454a9b86ab218061777646f0fd10de8b573970ff6232bfdef50c5eff2" -> "sha256:d5624779456e2b43d6bcc9151caab452d764ba2f454841a6511092b60bb57a99" [label=""];
  "sha256:7997ead0267fe831acdd05d5fa5a571cb20d6e522cfd447e5453494215de6fe1" -> "sha256:d5624779456e2b43d6bcc9151caab452d764ba2f454841a6511092b60bb57a99" [label=""];
  "sha256:d5624779456e2b43d6bcc9151caab452d764ba2f454841a6511092b60bb57a99" -> "sha256:320f0aedaf6e37fe8a12e871e4214f679648e119e3dcf1f938e52d9e5b817efc" [label=""];
  "sha256:320f0aedaf6e37fe8a12e871e4214f679648e119e3dcf1f938e52d9e5b817efc" -> "sha256:0d147c00502262ee630ac30947429a94cfe7772e9fbf5dda40e7b884ba78a334" [label=""];
  "sha256:0d147c00502262ee630ac30947429a94cfe7772e9fbf5dda40e7b884ba78a334" -> "sha256:b76d10c50740884f5c588e89b73da8aa8f5a15a537091d2a81544d1b2069aee7" [label=""];
  "sha256:7f976787cf93a8a07bf2104f0df5a7168c1227c9a759dd1853f546fad84102fc" -> "sha256:b76d10c50740884f5c588e89b73da8aa8f5a15a537091d2a81544d1b2069aee7" [label=""];
  "sha256:b76d10c50740884f5c588e89b73da8aa8f5a15a537091d2a81544d1b2069aee7" -> "sha256:c25215d2e20e7825967aaff8bcf68bdd2f4d0aad555880a8e3065e3a727ffd3e" [label=""];
  "sha256:c25215d2e20e7825967aaff8bcf68bdd2f4d0aad555880a8e3065e3a727ffd3e" -> "sha256:70e6949f10b207e2e7a6ca46935648a99b2c11bf6a53f46eafcc6c047740f883" [label=""];
  "sha256:7f976787cf93a8a07bf2104f0df5a7168c1227c9a759dd1853f546fad84102fc" -> "sha256:70e6949f10b207e2e7a6ca46935648a99b2c11bf6a53f46eafcc6c047740f883" [label=""];
  "sha256:70e6949f10b207e2e7a6ca46935648a99b2c11bf6a53f46eafcc6c047740f883" -> "sha256:66f6f0be99e47f8ed98d4c7169f92c5d836a525bba0afbb19c6fca921e9a2049" [label=""];
  "sha256:66f6f0be99e47f8ed98d4c7169f92c5d836a525bba0afbb19c6fca921e9a2049" -> "sha256:baaeece79ee3bb5ceb4ac60af7656e8e4ea0d370c26b118716da8bb4aca39e28" [label=""];
  "sha256:7f976787cf93a8a07bf2104f0df5a7168c1227c9a759dd1853f546fad84102fc" -> "sha256:baaeece79ee3bb5ceb4ac60af7656e8e4ea0d370c26b118716da8bb4aca39e28" [label=""];
  "sha256:baaeece79ee3bb5ceb4ac60af7656e8e4ea0d370c26b118716da8bb4aca39e28" -> "sha256:775b10c70d6de98ba2c4bc1e116ed1e168ecc2d5d13562b0aa3ea6a780438f89" [label=""];
  "sha256:775b10c70d6de98ba2c4bc1e116ed1e168ecc2d5d13562b0aa3ea6a780438f89" -> "sha256:7548384c97c0fcedcb6ad5634c76ad778c3114303f18802ca1a55e051bacffc1" [label=""];
}

