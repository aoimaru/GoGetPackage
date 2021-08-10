[app/sources/315043828.Dockerfile]
digraph {
  "sha256:014dbcb48645e6be9a3fa7d5b7a8a5c9e060ed1c00850f5a77b8d3a17cb8c0ae" [label="local://context" shape="ellipse"];
  "sha256:9d7bd6cabf60ef0e70e53e6ddad161a98687ad9178ffdc73b2eb97d864db42bb" [label="docker-image://docker.io/library/ruby:2.5.1@sha256:ac6661b87cf49af14b193024f28ef223b529974bdfab58f5e8d4df37a8bdbc9d" shape="ellipse"];
  "sha256:f0dedf6f842010d12df36fdd6b698bec7908a4c772d026e887db9fbfc20c4a4c" [label="/bin/sh -c apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs" shape="box"];
  "sha256:41df40e279faed792358f896ed6c9e66b4972eeed3b2811e6039fa3fa86fb6ff" [label="/bin/sh -c mkdir /alfred" shape="box"];
  "sha256:f3c3ec8b45f870d44878f3c1ada17479665b6323d2f91ecf174a8e1298932124" [label="mkdir{path=/alfred}" shape="note"];
  "sha256:c1ca9e536ee2d4da1178609efaff4eb18477a707ec5a9bf959dfd9910e97a7fc" [label="copy{src=/Gemfile, dest=/alfred/},copy{src=/Gemfile.lock, dest=/alfred/}" shape="note"];
  "sha256:5ca60722fd310275a139d5b9dbeb2d5f33227897470a0db47c12cb21465b73ba" [label="/bin/sh -c gem install bundler && bundle install --jobs 20 --retry 5" shape="box"];
  "sha256:6d579cc2d011fbd10b23cc1ed348bb0b6fe02e47fb4e1bcd56f3df0738e2f7e7" [label="copy{src=/, dest=/alfred/}" shape="note"];
  "sha256:48f11af8a8dcd1aee0c8a2c4fe2830aa469f070b874e2cd2abf3ad6b30d6b6dc" [label="copy{src=/, dest=/alfred}" shape="note"];
  "sha256:f7535365e7daf5bd256c6f3c55a19c564de063d067d981931936d295de55957d" [label="sha256:f7535365e7daf5bd256c6f3c55a19c564de063d067d981931936d295de55957d" shape="plaintext"];
  "sha256:9d7bd6cabf60ef0e70e53e6ddad161a98687ad9178ffdc73b2eb97d864db42bb" -> "sha256:f0dedf6f842010d12df36fdd6b698bec7908a4c772d026e887db9fbfc20c4a4c" [label=""];
  "sha256:f0dedf6f842010d12df36fdd6b698bec7908a4c772d026e887db9fbfc20c4a4c" -> "sha256:41df40e279faed792358f896ed6c9e66b4972eeed3b2811e6039fa3fa86fb6ff" [label=""];
  "sha256:41df40e279faed792358f896ed6c9e66b4972eeed3b2811e6039fa3fa86fb6ff" -> "sha256:f3c3ec8b45f870d44878f3c1ada17479665b6323d2f91ecf174a8e1298932124" [label=""];
  "sha256:f3c3ec8b45f870d44878f3c1ada17479665b6323d2f91ecf174a8e1298932124" -> "sha256:c1ca9e536ee2d4da1178609efaff4eb18477a707ec5a9bf959dfd9910e97a7fc" [label=""];
  "sha256:014dbcb48645e6be9a3fa7d5b7a8a5c9e060ed1c00850f5a77b8d3a17cb8c0ae" -> "sha256:c1ca9e536ee2d4da1178609efaff4eb18477a707ec5a9bf959dfd9910e97a7fc" [label=""];
  "sha256:c1ca9e536ee2d4da1178609efaff4eb18477a707ec5a9bf959dfd9910e97a7fc" -> "sha256:5ca60722fd310275a139d5b9dbeb2d5f33227897470a0db47c12cb21465b73ba" [label=""];
  "sha256:5ca60722fd310275a139d5b9dbeb2d5f33227897470a0db47c12cb21465b73ba" -> "sha256:6d579cc2d011fbd10b23cc1ed348bb0b6fe02e47fb4e1bcd56f3df0738e2f7e7" [label=""];
  "sha256:014dbcb48645e6be9a3fa7d5b7a8a5c9e060ed1c00850f5a77b8d3a17cb8c0ae" -> "sha256:6d579cc2d011fbd10b23cc1ed348bb0b6fe02e47fb4e1bcd56f3df0738e2f7e7" [label=""];
  "sha256:6d579cc2d011fbd10b23cc1ed348bb0b6fe02e47fb4e1bcd56f3df0738e2f7e7" -> "sha256:48f11af8a8dcd1aee0c8a2c4fe2830aa469f070b874e2cd2abf3ad6b30d6b6dc" [label=""];
  "sha256:014dbcb48645e6be9a3fa7d5b7a8a5c9e060ed1c00850f5a77b8d3a17cb8c0ae" -> "sha256:48f11af8a8dcd1aee0c8a2c4fe2830aa469f070b874e2cd2abf3ad6b30d6b6dc" [label=""];
  "sha256:48f11af8a8dcd1aee0c8a2c4fe2830aa469f070b874e2cd2abf3ad6b30d6b6dc" -> "sha256:f7535365e7daf5bd256c6f3c55a19c564de063d067d981931936d295de55957d" [label=""];
}

