[app/sources/145123244.Dockerfile]
digraph {
  "sha256:4e7a6726d116097e8c4db9f497f8239a68ba9cf2a6e7a98a8fa38824cd6fa17e" [label="docker-image://docker.io/library/ruby:2.5" shape="ellipse"];
  "sha256:4725326a4ddc49e6558bfd7eed486f57db41eaba71f5e86ae573476ea8a1bf53" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_9.x | bash -     && apt install -y nodejs openjdk-8-jre     && apt -y clean     && echo -e \"install: --no-document\\nupdate: --no-document\" >/etc/gemrc     && mkdir -p /opt/massr" shape="box"];
  "sha256:bd5b16cdbdc97373079ab1202e2b2aa4671da755b0ffb16ae4cbcf4f88f0a308" [label="mkdir{path=/opt/massr}" shape="note"];
  "sha256:615049c53d06c1d88f40f77f94cd6984976ccd02915ce861aacbdaec0d490818" [label="local://context" shape="ellipse"];
  "sha256:f28a3d2561df445913289cc355e1fbf1ab6ad3b772915706dc23dd9ae77c0972" [label="copy{src=/Gemfile, dest=/opt/massr/},copy{src=/Gemfile.lock, dest=/opt/massr/}" shape="note"];
  "sha256:263844a9ee8d93129449f67c30132d3c38aed7558cac09ddf1c6fad3f55897f6" [label="/bin/sh -c bundle --path=vendor/bundle --without=development:test --jobs=4 --retry=3" shape="box"];
  "sha256:03b7f4928eaa71ffd538d099360d77179ad347d2be0e6104fcee875fee04b36b" [label="copy{src=/, dest=/opt/massr/}" shape="note"];
  "sha256:d2bf3249d5a27c7729bfe1f55f86ae6444dbc98ad5e1ef2ac8081e3c26af11dd" [label="/bin/sh -c bundle exec rake assets:precompile" shape="box"];
  "sha256:a49ed43e31f761355ff5def5d285f094e1e79cdaf2340dec6f9bbc99cda3f017" [label="sha256:a49ed43e31f761355ff5def5d285f094e1e79cdaf2340dec6f9bbc99cda3f017" shape="plaintext"];
  "sha256:4e7a6726d116097e8c4db9f497f8239a68ba9cf2a6e7a98a8fa38824cd6fa17e" -> "sha256:4725326a4ddc49e6558bfd7eed486f57db41eaba71f5e86ae573476ea8a1bf53" [label=""];
  "sha256:4725326a4ddc49e6558bfd7eed486f57db41eaba71f5e86ae573476ea8a1bf53" -> "sha256:bd5b16cdbdc97373079ab1202e2b2aa4671da755b0ffb16ae4cbcf4f88f0a308" [label=""];
  "sha256:bd5b16cdbdc97373079ab1202e2b2aa4671da755b0ffb16ae4cbcf4f88f0a308" -> "sha256:f28a3d2561df445913289cc355e1fbf1ab6ad3b772915706dc23dd9ae77c0972" [label=""];
  "sha256:615049c53d06c1d88f40f77f94cd6984976ccd02915ce861aacbdaec0d490818" -> "sha256:f28a3d2561df445913289cc355e1fbf1ab6ad3b772915706dc23dd9ae77c0972" [label=""];
  "sha256:f28a3d2561df445913289cc355e1fbf1ab6ad3b772915706dc23dd9ae77c0972" -> "sha256:263844a9ee8d93129449f67c30132d3c38aed7558cac09ddf1c6fad3f55897f6" [label=""];
  "sha256:263844a9ee8d93129449f67c30132d3c38aed7558cac09ddf1c6fad3f55897f6" -> "sha256:03b7f4928eaa71ffd538d099360d77179ad347d2be0e6104fcee875fee04b36b" [label=""];
  "sha256:615049c53d06c1d88f40f77f94cd6984976ccd02915ce861aacbdaec0d490818" -> "sha256:03b7f4928eaa71ffd538d099360d77179ad347d2be0e6104fcee875fee04b36b" [label=""];
  "sha256:03b7f4928eaa71ffd538d099360d77179ad347d2be0e6104fcee875fee04b36b" -> "sha256:d2bf3249d5a27c7729bfe1f55f86ae6444dbc98ad5e1ef2ac8081e3c26af11dd" [label=""];
  "sha256:d2bf3249d5a27c7729bfe1f55f86ae6444dbc98ad5e1ef2ac8081e3c26af11dd" -> "sha256:a49ed43e31f761355ff5def5d285f094e1e79cdaf2340dec6f9bbc99cda3f017" [label=""];
}

