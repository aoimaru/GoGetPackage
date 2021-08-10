[app/sources/158300756.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:4e08b739213445413aac89f79efc7c860b750a88629e8bd6fbb04015401d307b" [label="/bin/sh -c apt-get install -y curl wget git ruby2.0 ruby2.0-dev libxml2-dev libxslt-dev build-essential zlib1g-dev" shape="box"];
  "sha256:078888ac5d36f60ddf7f29b99eb4ad95224aa64b7c76baf56cf1e6bc2b6d4485" [label="/bin/sh -c ln -sf ruby2.0 /usr/bin/ruby" shape="box"];
  "sha256:c33ba692c67d1810e6ce7ce2279213bbf414bd37c2b07422c3f1443a0374eaac" [label="/bin/sh -c ln -sf gem2.0 /usr/bin/gem" shape="box"];
  "sha256:be657c71375e9ce1ee2b60c31c0d006fb2f8ca2b4fc7dcd1273e6e7901d586b1" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:eefb4699b449e340f7e210e96dca1c91e9c633f261d745add18e4c467a3c9665" [label="/bin/sh -c wget http://www.princexml.com/download/prince_9.0-5_ubuntu14.04_amd64.deb" shape="box"];
  "sha256:f13669dbfd2a81fd4f11a2654306a3ebdfcf7147410ab239edff8b761224af3a" [label="/bin/sh -c dpkg -i prince_9.0-5_ubuntu14.04_amd64.deb || true" shape="box"];
  "sha256:741477a9611c47b3a7fe7e5735c598892dd51ab81b6200c19847529c795be20d" [label="/bin/sh -c apt-get install -fy" shape="box"];
  "sha256:a87a1d8d9360889ec198bc2cf67f7571c032d79f561050bc4b2006222317a6b6" [label="/bin/sh -c dpkg -i prince_9.0-5_ubuntu14.04_amd64.deb" shape="box"];
  "sha256:154d30936989a7a997438a47156cd4af2e54888939c5975da40568715d0b3d68" [label="mkdir{path=/usr/src}" shape="note"];
  "sha256:502e639ea272e904f5ab1786f1efdfcea1052f9267a89db741386cd5a2720168" [label="/bin/sh -c git clone https://github.com/puppetlabs/showoff.git" shape="box"];
  "sha256:6b176b7c33a3554c671ead41aaf54f1ee8b606bb16d6c967b1cd40cd6c81bd21" [label="mkdir{path=/usr/src/showoff}" shape="note"];
  "sha256:5ed10ef45fc8baa36392f317143424acd124a9932b5b98b41a448728b5b92878" [label="/bin/sh -c git checkout v0.10.2" shape="box"];
  "sha256:17a30bcfa5afa9e657d60e1ef4f90635775fecd09ac3af780708d91a329b1293" [label="/bin/sh -c gem install --no-rdoc --no-ri -v '<1.7' nokogiri" shape="box"];
  "sha256:570b8ca9cfc85825ec992fc1b24c72afa471170fd81a153e83d6d2bd73852ea3" [label="/bin/sh -c gem install --no-rdoc --no-ri -v '<3.0' public_suffix" shape="box"];
  "sha256:e57f469dcc553957d0f44a31dad64b9f5a6941ca2893085a72f022756e79da94" [label="/bin/sh -c gem build showoff.gemspec" shape="box"];
  "sha256:9f0290089d5044b4c9f9a4cc0af57ce44ac0011dac08faae031a7264a6e7b142" [label="/bin/sh -c gem install --no-rdoc --no-ri ./showoff-*.gem" shape="box"];
  "sha256:c68761e1454a01fa083f4c2ff24e5f7af9c863241c85828c69ad7b864a6bf979" [label="local://context" shape="ellipse"];
  "sha256:b8b4d1f34d0fd62a327abe7b3b737b91102a055114b8ef45a182599a11789348" [label="copy{src=/slides, dest=/slides/}" shape="note"];
  "sha256:4d58b01a905c3e2ea568e5006c83863070c513a26e40615a05430d4a072835a3" [label="mkdir{path=/slides}" shape="note"];
  "sha256:6bf6cd4bbd8ca24ec7c7af63d65b730a660f4f99a5b96e18091ccef16c4da6c2" [label="sha256:6bf6cd4bbd8ca24ec7c7af63d65b730a660f4f99a5b96e18091ccef16c4da6c2" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label=""];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" -> "sha256:4e08b739213445413aac89f79efc7c860b750a88629e8bd6fbb04015401d307b" [label=""];
  "sha256:4e08b739213445413aac89f79efc7c860b750a88629e8bd6fbb04015401d307b" -> "sha256:078888ac5d36f60ddf7f29b99eb4ad95224aa64b7c76baf56cf1e6bc2b6d4485" [label=""];
  "sha256:078888ac5d36f60ddf7f29b99eb4ad95224aa64b7c76baf56cf1e6bc2b6d4485" -> "sha256:c33ba692c67d1810e6ce7ce2279213bbf414bd37c2b07422c3f1443a0374eaac" [label=""];
  "sha256:c33ba692c67d1810e6ce7ce2279213bbf414bd37c2b07422c3f1443a0374eaac" -> "sha256:be657c71375e9ce1ee2b60c31c0d006fb2f8ca2b4fc7dcd1273e6e7901d586b1" [label=""];
  "sha256:be657c71375e9ce1ee2b60c31c0d006fb2f8ca2b4fc7dcd1273e6e7901d586b1" -> "sha256:eefb4699b449e340f7e210e96dca1c91e9c633f261d745add18e4c467a3c9665" [label=""];
  "sha256:eefb4699b449e340f7e210e96dca1c91e9c633f261d745add18e4c467a3c9665" -> "sha256:f13669dbfd2a81fd4f11a2654306a3ebdfcf7147410ab239edff8b761224af3a" [label=""];
  "sha256:f13669dbfd2a81fd4f11a2654306a3ebdfcf7147410ab239edff8b761224af3a" -> "sha256:741477a9611c47b3a7fe7e5735c598892dd51ab81b6200c19847529c795be20d" [label=""];
  "sha256:741477a9611c47b3a7fe7e5735c598892dd51ab81b6200c19847529c795be20d" -> "sha256:a87a1d8d9360889ec198bc2cf67f7571c032d79f561050bc4b2006222317a6b6" [label=""];
  "sha256:a87a1d8d9360889ec198bc2cf67f7571c032d79f561050bc4b2006222317a6b6" -> "sha256:154d30936989a7a997438a47156cd4af2e54888939c5975da40568715d0b3d68" [label=""];
  "sha256:154d30936989a7a997438a47156cd4af2e54888939c5975da40568715d0b3d68" -> "sha256:502e639ea272e904f5ab1786f1efdfcea1052f9267a89db741386cd5a2720168" [label=""];
  "sha256:502e639ea272e904f5ab1786f1efdfcea1052f9267a89db741386cd5a2720168" -> "sha256:6b176b7c33a3554c671ead41aaf54f1ee8b606bb16d6c967b1cd40cd6c81bd21" [label=""];
  "sha256:6b176b7c33a3554c671ead41aaf54f1ee8b606bb16d6c967b1cd40cd6c81bd21" -> "sha256:5ed10ef45fc8baa36392f317143424acd124a9932b5b98b41a448728b5b92878" [label=""];
  "sha256:5ed10ef45fc8baa36392f317143424acd124a9932b5b98b41a448728b5b92878" -> "sha256:17a30bcfa5afa9e657d60e1ef4f90635775fecd09ac3af780708d91a329b1293" [label=""];
  "sha256:17a30bcfa5afa9e657d60e1ef4f90635775fecd09ac3af780708d91a329b1293" -> "sha256:570b8ca9cfc85825ec992fc1b24c72afa471170fd81a153e83d6d2bd73852ea3" [label=""];
  "sha256:570b8ca9cfc85825ec992fc1b24c72afa471170fd81a153e83d6d2bd73852ea3" -> "sha256:e57f469dcc553957d0f44a31dad64b9f5a6941ca2893085a72f022756e79da94" [label=""];
  "sha256:e57f469dcc553957d0f44a31dad64b9f5a6941ca2893085a72f022756e79da94" -> "sha256:9f0290089d5044b4c9f9a4cc0af57ce44ac0011dac08faae031a7264a6e7b142" [label=""];
  "sha256:9f0290089d5044b4c9f9a4cc0af57ce44ac0011dac08faae031a7264a6e7b142" -> "sha256:b8b4d1f34d0fd62a327abe7b3b737b91102a055114b8ef45a182599a11789348" [label=""];
  "sha256:c68761e1454a01fa083f4c2ff24e5f7af9c863241c85828c69ad7b864a6bf979" -> "sha256:b8b4d1f34d0fd62a327abe7b3b737b91102a055114b8ef45a182599a11789348" [label=""];
  "sha256:b8b4d1f34d0fd62a327abe7b3b737b91102a055114b8ef45a182599a11789348" -> "sha256:4d58b01a905c3e2ea568e5006c83863070c513a26e40615a05430d4a072835a3" [label=""];
  "sha256:4d58b01a905c3e2ea568e5006c83863070c513a26e40615a05430d4a072835a3" -> "sha256:6bf6cd4bbd8ca24ec7c7af63d65b730a660f4f99a5b96e18091ccef16c4da6c2" [label=""];
}

