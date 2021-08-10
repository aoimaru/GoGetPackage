[app/sources/392718794.Dockerfile]
digraph {
  "sha256:57e6194c44286ba4a45e6affdd4e8a48f1370911045db88bebc41063a170377b" [label="docker-image://docker.io/library/ruby:2.5.3" shape="ellipse"];
  "sha256:f73abccd07e1ea244d20b3760d81887b5806588a2fbe66dda852d98e23750c93" [label="/bin/sh -c apt-get update   && apt-get install -y     git     locales     make     nodejs" shape="box"];
  "sha256:3255625fc7cf5f3d7a3d371c31dba6dd85295d11da7aa8221a1a6d2b1dd2a46b" [label="local://context" shape="ellipse"];
  "sha256:66dbb24f64ba0379726a44fcc4aaa247955ec374b011837031bdff8f84257851" [label="copy{src=/, dest=/src/gh/pages-gem}" shape="note"];
  "sha256:e1a09ee9d5b6bb6e7404f3afa17f4df6117bce432eff0239e7d1d67944a94a45" [label="/bin/sh -c bundle config local.github-pages /src/gh/pages-gem &&   bundle install --gemfile=/src/gh/pages-gem/Gemfile" shape="box"];
  "sha256:bb389a86a594380f7aa10d410e4af089bea494b57dda534e711c4c7aad274fa7" [label="/bin/sh -c echo \"en_US UTF-8\" > /etc/locale.gen &&   locale-gen en-US.UTF-8" shape="box"];
  "sha256:4b0afac87e3bf657b362f9aa2e7f7be0fe6e4e2b3ddbf33dd6239a00416172eb" [label="mkdir{path=/src/site}" shape="note"];
  "sha256:1f644aca981c7623c9d0103bd1f2695ce61881e844173615ccc04d462d3f91a2" [label="sha256:1f644aca981c7623c9d0103bd1f2695ce61881e844173615ccc04d462d3f91a2" shape="plaintext"];
  "sha256:57e6194c44286ba4a45e6affdd4e8a48f1370911045db88bebc41063a170377b" -> "sha256:f73abccd07e1ea244d20b3760d81887b5806588a2fbe66dda852d98e23750c93" [label=""];
  "sha256:f73abccd07e1ea244d20b3760d81887b5806588a2fbe66dda852d98e23750c93" -> "sha256:66dbb24f64ba0379726a44fcc4aaa247955ec374b011837031bdff8f84257851" [label=""];
  "sha256:3255625fc7cf5f3d7a3d371c31dba6dd85295d11da7aa8221a1a6d2b1dd2a46b" -> "sha256:66dbb24f64ba0379726a44fcc4aaa247955ec374b011837031bdff8f84257851" [label=""];
  "sha256:66dbb24f64ba0379726a44fcc4aaa247955ec374b011837031bdff8f84257851" -> "sha256:e1a09ee9d5b6bb6e7404f3afa17f4df6117bce432eff0239e7d1d67944a94a45" [label=""];
  "sha256:e1a09ee9d5b6bb6e7404f3afa17f4df6117bce432eff0239e7d1d67944a94a45" -> "sha256:bb389a86a594380f7aa10d410e4af089bea494b57dda534e711c4c7aad274fa7" [label=""];
  "sha256:bb389a86a594380f7aa10d410e4af089bea494b57dda534e711c4c7aad274fa7" -> "sha256:4b0afac87e3bf657b362f9aa2e7f7be0fe6e4e2b3ddbf33dd6239a00416172eb" [label=""];
  "sha256:4b0afac87e3bf657b362f9aa2e7f7be0fe6e4e2b3ddbf33dd6239a00416172eb" -> "sha256:1f644aca981c7623c9d0103bd1f2695ce61881e844173615ccc04d462d3f91a2" [label=""];
}

