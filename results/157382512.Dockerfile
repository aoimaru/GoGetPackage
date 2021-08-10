[app/sources/157382512.Dockerfile]
digraph {
  "sha256:4e8235b875d8b8b928193767bc6416ddae1b600557c44866f232d4548868a97d" [label="local://context" shape="ellipse"];
  "sha256:4e7a6726d116097e8c4db9f497f8239a68ba9cf2a6e7a98a8fa38824cd6fa17e" [label="docker-image://docker.io/library/ruby:2.5" shape="ellipse"];
  "sha256:8cef2d730d8e687e6ed068256c8915c1b57efb40322d7e0ca768a8260c804d7c" [label="/bin/sh -c bundle config --global frozen 1" shape="box"];
  "sha256:e586b241c0aa22d1fe59ec58ed57466b6eb89fe6ee0028166e8f04c9072e68a0" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:152e3ff094d574f9c2e3b3016c0a0b583be59de263f0ac290ad680232cdd1fe6" [label="copy{src=/Gemfile, dest=/usr/src/app/},copy{src=/Gemfile.lock, dest=/usr/src/app/}" shape="note"];
  "sha256:8a3481dc1069e302a2a75160f81e53ca028e61f963469792887769ff50c90768" [label="/bin/sh -c env CFLAGS=-Wno-narrowing CXXFLAGS=-Wno-narrowing bundle install" shape="box"];
  "sha256:b45d9b1083055cdc1db3438c7be139b7c989df4d1028fe924c49a74a452b2491" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:53534befff9744f553f209f5bdb06c003863643d3ead483deb55b8c055ba7c14" [label="/bin/sh -c rm \"/usr/src/app/config.yml\"" shape="box"];
  "sha256:59d6850184e8319393cf9bfdaabcd16795347a7e840798ed6918f936553a884e" [label="/bin/sh -c ln -s \"/config.yml\" \"/usr/src/app/config.yml\"" shape="box"];
  "sha256:6475d3157f8f7851e30667e2e29f9042b2bb9bd65231b058058619cd2cb74e31" [label="sha256:6475d3157f8f7851e30667e2e29f9042b2bb9bd65231b058058619cd2cb74e31" shape="plaintext"];
  "sha256:4e7a6726d116097e8c4db9f497f8239a68ba9cf2a6e7a98a8fa38824cd6fa17e" -> "sha256:8cef2d730d8e687e6ed068256c8915c1b57efb40322d7e0ca768a8260c804d7c" [label=""];
  "sha256:8cef2d730d8e687e6ed068256c8915c1b57efb40322d7e0ca768a8260c804d7c" -> "sha256:e586b241c0aa22d1fe59ec58ed57466b6eb89fe6ee0028166e8f04c9072e68a0" [label=""];
  "sha256:e586b241c0aa22d1fe59ec58ed57466b6eb89fe6ee0028166e8f04c9072e68a0" -> "sha256:152e3ff094d574f9c2e3b3016c0a0b583be59de263f0ac290ad680232cdd1fe6" [label=""];
  "sha256:4e8235b875d8b8b928193767bc6416ddae1b600557c44866f232d4548868a97d" -> "sha256:152e3ff094d574f9c2e3b3016c0a0b583be59de263f0ac290ad680232cdd1fe6" [label=""];
  "sha256:152e3ff094d574f9c2e3b3016c0a0b583be59de263f0ac290ad680232cdd1fe6" -> "sha256:8a3481dc1069e302a2a75160f81e53ca028e61f963469792887769ff50c90768" [label=""];
  "sha256:8a3481dc1069e302a2a75160f81e53ca028e61f963469792887769ff50c90768" -> "sha256:b45d9b1083055cdc1db3438c7be139b7c989df4d1028fe924c49a74a452b2491" [label=""];
  "sha256:4e8235b875d8b8b928193767bc6416ddae1b600557c44866f232d4548868a97d" -> "sha256:b45d9b1083055cdc1db3438c7be139b7c989df4d1028fe924c49a74a452b2491" [label=""];
  "sha256:b45d9b1083055cdc1db3438c7be139b7c989df4d1028fe924c49a74a452b2491" -> "sha256:53534befff9744f553f209f5bdb06c003863643d3ead483deb55b8c055ba7c14" [label=""];
  "sha256:53534befff9744f553f209f5bdb06c003863643d3ead483deb55b8c055ba7c14" -> "sha256:59d6850184e8319393cf9bfdaabcd16795347a7e840798ed6918f936553a884e" [label=""];
  "sha256:59d6850184e8319393cf9bfdaabcd16795347a7e840798ed6918f936553a884e" -> "sha256:6475d3157f8f7851e30667e2e29f9042b2bb9bd65231b058058619cd2cb74e31" [label=""];
}

