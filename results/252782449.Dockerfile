[app/sources/252782449.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:b854c5ba23e2728d34b4da3a5fdb67ababab4d9458bcc15c4e2acb1a00eb80bb" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:02f854fbf9f73e0f3dee943b08052dd8c10fa72968bb0feb5f7403e2560d94a2" [label="/bin/sh -c apt-get install -yq ruby ruby-dev build-essential" shape="box"];
  "sha256:d06f7d78de4ca1c7891cc46251dda19460fdfd6164d2e7c6e1e9878d0aa4bc23" [label="/bin/sh -c gem install --no-ri --no-rdoc bundler" shape="box"];
  "sha256:4b3d13e528001337bfee8ac323d05f765734190ce9876d2cc296e9ad7d077187" [label="local://context" shape="ellipse"];
  "sha256:5efd19d365e8f38f2f46e6f84b9586bd68b672dc143a594ac3dac38ac0528903" [label="copy{src=/Gemfile, dest=/app/Gemfile}" shape="note"];
  "sha256:66d8f1f2868fa40f62b23911b4b34b94226142ff57157fbfb1ab8bacb615ba6d" [label="copy{src=/Gemfile.lock, dest=/app/Gemfile.lock}" shape="note"];
  "sha256:a01b1b6287283dc7e7205fe20fbe1ca0f3e629b0f02a18aafe4213d1c5c2497c" [label="/bin/sh -c cd /app; bundle install" shape="box"];
  "sha256:d8756e48e2a7a17a2d2086ff7df850688a887ba72a460db79948c7ca20483691" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:2f8c1d68db83d130996f122a82b288acc9816a28575be3924d4d46688a49a6ec" [label="mkdir{path=/app}" shape="note"];
  "sha256:45939ad30cc9654b9e396dcf3d39d3aefcaa0469db1c115efc4404b236420cd0" [label="sha256:45939ad30cc9654b9e396dcf3d39d3aefcaa0469db1c115efc4404b236420cd0" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:b854c5ba23e2728d34b4da3a5fdb67ababab4d9458bcc15c4e2acb1a00eb80bb" [label=""];
  "sha256:b854c5ba23e2728d34b4da3a5fdb67ababab4d9458bcc15c4e2acb1a00eb80bb" -> "sha256:02f854fbf9f73e0f3dee943b08052dd8c10fa72968bb0feb5f7403e2560d94a2" [label=""];
  "sha256:02f854fbf9f73e0f3dee943b08052dd8c10fa72968bb0feb5f7403e2560d94a2" -> "sha256:d06f7d78de4ca1c7891cc46251dda19460fdfd6164d2e7c6e1e9878d0aa4bc23" [label=""];
  "sha256:d06f7d78de4ca1c7891cc46251dda19460fdfd6164d2e7c6e1e9878d0aa4bc23" -> "sha256:5efd19d365e8f38f2f46e6f84b9586bd68b672dc143a594ac3dac38ac0528903" [label=""];
  "sha256:4b3d13e528001337bfee8ac323d05f765734190ce9876d2cc296e9ad7d077187" -> "sha256:5efd19d365e8f38f2f46e6f84b9586bd68b672dc143a594ac3dac38ac0528903" [label=""];
  "sha256:5efd19d365e8f38f2f46e6f84b9586bd68b672dc143a594ac3dac38ac0528903" -> "sha256:66d8f1f2868fa40f62b23911b4b34b94226142ff57157fbfb1ab8bacb615ba6d" [label=""];
  "sha256:4b3d13e528001337bfee8ac323d05f765734190ce9876d2cc296e9ad7d077187" -> "sha256:66d8f1f2868fa40f62b23911b4b34b94226142ff57157fbfb1ab8bacb615ba6d" [label=""];
  "sha256:66d8f1f2868fa40f62b23911b4b34b94226142ff57157fbfb1ab8bacb615ba6d" -> "sha256:a01b1b6287283dc7e7205fe20fbe1ca0f3e629b0f02a18aafe4213d1c5c2497c" [label=""];
  "sha256:a01b1b6287283dc7e7205fe20fbe1ca0f3e629b0f02a18aafe4213d1c5c2497c" -> "sha256:d8756e48e2a7a17a2d2086ff7df850688a887ba72a460db79948c7ca20483691" [label=""];
  "sha256:4b3d13e528001337bfee8ac323d05f765734190ce9876d2cc296e9ad7d077187" -> "sha256:d8756e48e2a7a17a2d2086ff7df850688a887ba72a460db79948c7ca20483691" [label=""];
  "sha256:d8756e48e2a7a17a2d2086ff7df850688a887ba72a460db79948c7ca20483691" -> "sha256:2f8c1d68db83d130996f122a82b288acc9816a28575be3924d4d46688a49a6ec" [label=""];
  "sha256:2f8c1d68db83d130996f122a82b288acc9816a28575be3924d4d46688a49a6ec" -> "sha256:45939ad30cc9654b9e396dcf3d39d3aefcaa0469db1c115efc4404b236420cd0" [label=""];
}

