[app/sources/357348617.Dockerfile]
digraph {
  "sha256:3d81802d4abd8ca39849bc1e57dc7a01c4e1f1a18077e4ba2c4874bc5e71205c" [label="docker-image://docker.io/library/buildpack-deps:latest" shape="ellipse"];
  "sha256:f16c23fd11ee3e91a1b2de20f16ed239c59632702ef330312fc236559bbee6f8" [label="/bin/sh -c apt-get update -q &&     apt-get install -qy libgmp-dev &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:d7876079c75ddda6963cb5eda534b15032be24748cbd66699e71cc20689a2354" [label="/bin/sh -c mkdir -p /root/.local/bin &&     wget -q -O- $STACK_DOWNLOAD_URL | tar --strip=1 -xvz -C /root/.local/bin/ &&     chmod +x /root/.local/bin/stack" shape="box"];
  "sha256:1aa630d9f151f38c3140919013f384793cacd1afd3ae717710b855bb97b3c092" [label="local://context" shape="ellipse"];
  "sha256:54f1a5fe58580c8a2e6b5ed0abf6b2eafd75adddfa9e4dbeb3ac31c7de0dd327" [label="copy{src=/stack.yaml, dest=/}" shape="note"];
  "sha256:f7eb3157eece96e09c4bebcbab85f0399436bef8f09d20caf32ff8b65571b5f8" [label="/bin/sh -c stack setup" shape="box"];
  "sha256:84377a77c0f64ebfd70391b1866a00ac78c430bb842ebd2d6680b401b1b4c3e0" [label="copy{src=/elm-format.cabal, dest=/}" shape="note"];
  "sha256:31db36d1c1494f36710c76b0c32b740bf799dd403240a77ba2cc7993de3e6968" [label="/bin/sh -c stack build --only-snapshot" shape="box"];
  "sha256:7173211a4e8e49c3ce249af104492db479da3075117713006686399c3eed79b9" [label="/bin/sh -c stack build --only-dependencies" shape="box"];
  "sha256:ca485560dd6d0582acdc10b24c32a7c2b677ba673c5523947faeb555fd3fe7d9" [label="/bin/sh -c stack build --test --only-dependencies" shape="box"];
  "sha256:98faf5e409348d6c935c32c4a7e74d8ea9a4ed7f57c184796b114bd748a2077f" [label="sha256:98faf5e409348d6c935c32c4a7e74d8ea9a4ed7f57c184796b114bd748a2077f" shape="plaintext"];
  "sha256:3d81802d4abd8ca39849bc1e57dc7a01c4e1f1a18077e4ba2c4874bc5e71205c" -> "sha256:f16c23fd11ee3e91a1b2de20f16ed239c59632702ef330312fc236559bbee6f8" [label=""];
  "sha256:f16c23fd11ee3e91a1b2de20f16ed239c59632702ef330312fc236559bbee6f8" -> "sha256:d7876079c75ddda6963cb5eda534b15032be24748cbd66699e71cc20689a2354" [label=""];
  "sha256:d7876079c75ddda6963cb5eda534b15032be24748cbd66699e71cc20689a2354" -> "sha256:54f1a5fe58580c8a2e6b5ed0abf6b2eafd75adddfa9e4dbeb3ac31c7de0dd327" [label=""];
  "sha256:1aa630d9f151f38c3140919013f384793cacd1afd3ae717710b855bb97b3c092" -> "sha256:54f1a5fe58580c8a2e6b5ed0abf6b2eafd75adddfa9e4dbeb3ac31c7de0dd327" [label=""];
  "sha256:54f1a5fe58580c8a2e6b5ed0abf6b2eafd75adddfa9e4dbeb3ac31c7de0dd327" -> "sha256:f7eb3157eece96e09c4bebcbab85f0399436bef8f09d20caf32ff8b65571b5f8" [label=""];
  "sha256:f7eb3157eece96e09c4bebcbab85f0399436bef8f09d20caf32ff8b65571b5f8" -> "sha256:84377a77c0f64ebfd70391b1866a00ac78c430bb842ebd2d6680b401b1b4c3e0" [label=""];
  "sha256:1aa630d9f151f38c3140919013f384793cacd1afd3ae717710b855bb97b3c092" -> "sha256:84377a77c0f64ebfd70391b1866a00ac78c430bb842ebd2d6680b401b1b4c3e0" [label=""];
  "sha256:84377a77c0f64ebfd70391b1866a00ac78c430bb842ebd2d6680b401b1b4c3e0" -> "sha256:31db36d1c1494f36710c76b0c32b740bf799dd403240a77ba2cc7993de3e6968" [label=""];
  "sha256:31db36d1c1494f36710c76b0c32b740bf799dd403240a77ba2cc7993de3e6968" -> "sha256:7173211a4e8e49c3ce249af104492db479da3075117713006686399c3eed79b9" [label=""];
  "sha256:7173211a4e8e49c3ce249af104492db479da3075117713006686399c3eed79b9" -> "sha256:ca485560dd6d0582acdc10b24c32a7c2b677ba673c5523947faeb555fd3fe7d9" [label=""];
  "sha256:ca485560dd6d0582acdc10b24c32a7c2b677ba673c5523947faeb555fd3fe7d9" -> "sha256:98faf5e409348d6c935c32c4a7e74d8ea9a4ed7f57c184796b114bd748a2077f" [label=""];
}

