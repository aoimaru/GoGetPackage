[app/sources/195046733.Dockerfile]
digraph {
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" [label="docker-image://docker.io/library/buildpack-deps:jessie" shape="ellipse"];
  "sha256:21959442fa627bf1b3f4a367ced9b70f6e91de1734643d09cd3805065848c0a1" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_6.x | bash -" shape="box"];
  "sha256:6d309a8d9657e9c4a293e0491f3e94ffdd363d03095757fa4fb9f227762cee1a" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:bb8856b6e91167de6eea2d5cfd8cb2dbefd40753cb7b6d61f29bff27eade9a67" [label="/bin/sh -c apt-get install apt-transport-https" shape="box"];
  "sha256:91a50172b5681f51a6393075d196d967fc270a6feed8173c1139f4c431484c35" [label="/bin/sh -c apt-get install -y nodejs" shape="box"];
  "sha256:4f64daa97e1f0eff15569b644380b4c096bdba0bcf74ee95c83544e80c163385" [label="/bin/sh -c apt-key advanced --keyserver keys.gnupg.net --recv-keys 90E9F83F22250DD7" shape="box"];
  "sha256:68c1b4bd9a04e1a59706b7e3ec9036dde78500495f9f27899201c959c4e07262" [label="/bin/sh -c echo \"deb https://releases.wikimedia.org/debian jessie-mediawiki main\" | tee /etc/apt/sources.list.d/parsoid.list" shape="box"];
  "sha256:23df4b8d59cc66825669d26bcbbdf4db0024cf3b1ff217ce8255abdf2b124f06" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:10e7fcb78a337dd70a88897ebc53ac2cda79e5a0291900deff7363c93082b4dd" [label="/bin/sh -c apt-get install -y parsoid" shape="box"];
  "sha256:faf9262c44438a18a0955f0388ecd953adaf70730c3d40a0622c97e154b2eaae" [label="mkdir{path=/etc/mediawiki/parsoid}" shape="note"];
  "sha256:5d539f26e6ade665cfd55d980bdbca58964a9c2b15d9bc3adcd819823103b8e7" [label="/bin/sh -c sed -i 's/localhost\\/w/gcpedia/' config.yaml" shape="box"];
  "sha256:916ed4658925c735804302113167beb93ac2392485d4985078d20f90df8c3972" [label="sha256:916ed4658925c735804302113167beb93ac2392485d4985078d20f90df8c3972" shape="plaintext"];
  "sha256:b4fc191af1e59fc97ee4a62b7f87ba8895c6ed6b094574453e2cafea664e7c93" -> "sha256:21959442fa627bf1b3f4a367ced9b70f6e91de1734643d09cd3805065848c0a1" [label=""];
  "sha256:21959442fa627bf1b3f4a367ced9b70f6e91de1734643d09cd3805065848c0a1" -> "sha256:6d309a8d9657e9c4a293e0491f3e94ffdd363d03095757fa4fb9f227762cee1a" [label=""];
  "sha256:6d309a8d9657e9c4a293e0491f3e94ffdd363d03095757fa4fb9f227762cee1a" -> "sha256:bb8856b6e91167de6eea2d5cfd8cb2dbefd40753cb7b6d61f29bff27eade9a67" [label=""];
  "sha256:bb8856b6e91167de6eea2d5cfd8cb2dbefd40753cb7b6d61f29bff27eade9a67" -> "sha256:91a50172b5681f51a6393075d196d967fc270a6feed8173c1139f4c431484c35" [label=""];
  "sha256:91a50172b5681f51a6393075d196d967fc270a6feed8173c1139f4c431484c35" -> "sha256:4f64daa97e1f0eff15569b644380b4c096bdba0bcf74ee95c83544e80c163385" [label=""];
  "sha256:4f64daa97e1f0eff15569b644380b4c096bdba0bcf74ee95c83544e80c163385" -> "sha256:68c1b4bd9a04e1a59706b7e3ec9036dde78500495f9f27899201c959c4e07262" [label=""];
  "sha256:68c1b4bd9a04e1a59706b7e3ec9036dde78500495f9f27899201c959c4e07262" -> "sha256:23df4b8d59cc66825669d26bcbbdf4db0024cf3b1ff217ce8255abdf2b124f06" [label=""];
  "sha256:23df4b8d59cc66825669d26bcbbdf4db0024cf3b1ff217ce8255abdf2b124f06" -> "sha256:10e7fcb78a337dd70a88897ebc53ac2cda79e5a0291900deff7363c93082b4dd" [label=""];
  "sha256:10e7fcb78a337dd70a88897ebc53ac2cda79e5a0291900deff7363c93082b4dd" -> "sha256:faf9262c44438a18a0955f0388ecd953adaf70730c3d40a0622c97e154b2eaae" [label=""];
  "sha256:faf9262c44438a18a0955f0388ecd953adaf70730c3d40a0622c97e154b2eaae" -> "sha256:5d539f26e6ade665cfd55d980bdbca58964a9c2b15d9bc3adcd819823103b8e7" [label=""];
  "sha256:5d539f26e6ade665cfd55d980bdbca58964a9c2b15d9bc3adcd819823103b8e7" -> "sha256:916ed4658925c735804302113167beb93ac2392485d4985078d20f90df8c3972" [label=""];
}

