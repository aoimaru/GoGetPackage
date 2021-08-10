[app/sources/257671902.Dockerfile]
digraph {
  "sha256:d2c09c1cbf600dacfffef512c294116497ac2e272e2c8e254125f7bc709b14d6" [label="docker-image://docker.io/library/ruby:2.3.1" shape="ellipse"];
  "sha256:a884ff5a236c6684fe9ea0977c6245fd4004837e4f8ff089aeecb85a733e1caa" [label="/bin/sh -c gem install bundler" shape="box"];
  "sha256:b561f02e681231ba7b7627f537532bd51c2f03d4f1e9f88307d7c7ac48bee8c9" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:fd94ca214bbdb240194fc024aa390880c01b8edf835a6e152c6b7cfae4df8410" [label="local://context" shape="ellipse"];
  "sha256:f10eb64f4b5339f8db78b601d61731cb83d32b2c22980df4a9f21b8033b79378" [label="copy{src=/Gemfile, dest=/tmp/Gemfile}" shape="note"];
  "sha256:edf814ab108dce5cb5e2d4a2a933d0740e5f9a695289d10fb1f4e57bf69ff350" [label="copy{src=/Gemfile.lock, dest=/tmp/Gemfile.lock}" shape="note"];
  "sha256:def144db111795d8acbbe0a3cd4dc13354cf640cf7c2b92cc5a95b9b61d1a28a" [label="/bin/sh -c (bundle check || bundle install --without development test)" shape="box"];
  "sha256:e739a88caedc31180ae680d9233283d1a744e7da989e00092c8cf3155fa78c93" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:956a54eb8eb6ee52dada418cf3ba6e5f1c0b2624afa582e6ab8ff413e159a682" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:d7f3ad7061cfa89e3bcacc57aef99e2e8c8b7af12b90911b87de60f04f269ce3" [label="mkdir{path=/app}" shape="note"];
  "sha256:1fe3908f3238121d1fe574ca408d5e4ffdc650f5b6fd31737115b0adaf6a006f" [label="/bin/sh -c (bundle check || bundle install --without development test)" shape="box"];
  "sha256:635353fa7f5d47317f6637f571c8780b8fc81fc8397d23b4ac903fe310f45263" [label="/bin/sh -c RAILS_ENV=production rake assets:precompile" shape="box"];
  "sha256:5622ea27e085b534bae4598ac33a9df342e5bdb76f59a7f77c34699402a0aa0d" [label="sha256:5622ea27e085b534bae4598ac33a9df342e5bdb76f59a7f77c34699402a0aa0d" shape="plaintext"];
  "sha256:d2c09c1cbf600dacfffef512c294116497ac2e272e2c8e254125f7bc709b14d6" -> "sha256:a884ff5a236c6684fe9ea0977c6245fd4004837e4f8ff089aeecb85a733e1caa" [label=""];
  "sha256:a884ff5a236c6684fe9ea0977c6245fd4004837e4f8ff089aeecb85a733e1caa" -> "sha256:b561f02e681231ba7b7627f537532bd51c2f03d4f1e9f88307d7c7ac48bee8c9" [label=""];
  "sha256:b561f02e681231ba7b7627f537532bd51c2f03d4f1e9f88307d7c7ac48bee8c9" -> "sha256:f10eb64f4b5339f8db78b601d61731cb83d32b2c22980df4a9f21b8033b79378" [label=""];
  "sha256:fd94ca214bbdb240194fc024aa390880c01b8edf835a6e152c6b7cfae4df8410" -> "sha256:f10eb64f4b5339f8db78b601d61731cb83d32b2c22980df4a9f21b8033b79378" [label=""];
  "sha256:f10eb64f4b5339f8db78b601d61731cb83d32b2c22980df4a9f21b8033b79378" -> "sha256:edf814ab108dce5cb5e2d4a2a933d0740e5f9a695289d10fb1f4e57bf69ff350" [label=""];
  "sha256:fd94ca214bbdb240194fc024aa390880c01b8edf835a6e152c6b7cfae4df8410" -> "sha256:edf814ab108dce5cb5e2d4a2a933d0740e5f9a695289d10fb1f4e57bf69ff350" [label=""];
  "sha256:edf814ab108dce5cb5e2d4a2a933d0740e5f9a695289d10fb1f4e57bf69ff350" -> "sha256:def144db111795d8acbbe0a3cd4dc13354cf640cf7c2b92cc5a95b9b61d1a28a" [label=""];
  "sha256:def144db111795d8acbbe0a3cd4dc13354cf640cf7c2b92cc5a95b9b61d1a28a" -> "sha256:e739a88caedc31180ae680d9233283d1a744e7da989e00092c8cf3155fa78c93" [label=""];
  "sha256:e739a88caedc31180ae680d9233283d1a744e7da989e00092c8cf3155fa78c93" -> "sha256:956a54eb8eb6ee52dada418cf3ba6e5f1c0b2624afa582e6ab8ff413e159a682" [label=""];
  "sha256:fd94ca214bbdb240194fc024aa390880c01b8edf835a6e152c6b7cfae4df8410" -> "sha256:956a54eb8eb6ee52dada418cf3ba6e5f1c0b2624afa582e6ab8ff413e159a682" [label=""];
  "sha256:956a54eb8eb6ee52dada418cf3ba6e5f1c0b2624afa582e6ab8ff413e159a682" -> "sha256:d7f3ad7061cfa89e3bcacc57aef99e2e8c8b7af12b90911b87de60f04f269ce3" [label=""];
  "sha256:d7f3ad7061cfa89e3bcacc57aef99e2e8c8b7af12b90911b87de60f04f269ce3" -> "sha256:1fe3908f3238121d1fe574ca408d5e4ffdc650f5b6fd31737115b0adaf6a006f" [label=""];
  "sha256:1fe3908f3238121d1fe574ca408d5e4ffdc650f5b6fd31737115b0adaf6a006f" -> "sha256:635353fa7f5d47317f6637f571c8780b8fc81fc8397d23b4ac903fe310f45263" [label=""];
  "sha256:635353fa7f5d47317f6637f571c8780b8fc81fc8397d23b4ac903fe310f45263" -> "sha256:5622ea27e085b534bae4598ac33a9df342e5bdb76f59a7f77c34699402a0aa0d" [label=""];
}

