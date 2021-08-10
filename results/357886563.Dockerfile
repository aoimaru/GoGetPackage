[app/sources/357886563.Dockerfile]
digraph {
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" [label="docker-image://docker.io/library/ubuntu:trusty" shape="ellipse"];
  "sha256:b854c5ba23e2728d34b4da3a5fdb67ababab4d9458bcc15c4e2acb1a00eb80bb" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:d5c004a046f3ff647cb011eeba57278d281e45d7718d1baefaf62f3bcff29de7" [label="/bin/sh -c apt-get install -yq ruby ruby-dev build-essential git" shape="box"];
  "sha256:24643f143766d5e63c2248983e74b2510da62b582b230b72003779d5bb66d0c6" [label="/bin/sh -c gem install --no-ri --no-rdoc bundler" shape="box"];
  "sha256:7da4c23b99b279dbdaae04a654d3ca02df7663f288bc1dbdf6702664eac02136" [label="local://context" shape="ellipse"];
  "sha256:694c4f066b71fab1a39e91f2f2257362158c999454a618643da77785f7460c13" [label="copy{src=/Gemfile, dest=/app/Gemfile}" shape="note"];
  "sha256:dd60e995ae14ef11b286ee379265ed0fdedd8fdc6b43912b25c17c9d42210d3f" [label="copy{src=/Gemfile.lock, dest=/app/Gemfile.lock}" shape="note"];
  "sha256:393d51ce7bcf61dd0afaff3217af364bc405e011bdb0d78f05e044a9fb0bdd94" [label="/bin/sh -c cd /app; bundle install" shape="box"];
  "sha256:cc06ee32562f3c4d7a5440d1bee2f744c100c6405cefc8d69ef1389b0529f6df" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:48a2a3ff23c69ca815fa46553a295b369def81be151a6a62e53d9bed71182f35" [label="mkdir{path=/app}" shape="note"];
  "sha256:04d31b9168f4e677b40c9afae5d46a9581acaea51cef95ed48af7a65be563979" [label="sha256:04d31b9168f4e677b40c9afae5d46a9581acaea51cef95ed48af7a65be563979" shape="plaintext"];
  "sha256:868fdd9de755bc2b7af9cd6d1b11415d8cbcb83d39905725780923e17d39550c" -> "sha256:b854c5ba23e2728d34b4da3a5fdb67ababab4d9458bcc15c4e2acb1a00eb80bb" [label=""];
  "sha256:b854c5ba23e2728d34b4da3a5fdb67ababab4d9458bcc15c4e2acb1a00eb80bb" -> "sha256:d5c004a046f3ff647cb011eeba57278d281e45d7718d1baefaf62f3bcff29de7" [label=""];
  "sha256:d5c004a046f3ff647cb011eeba57278d281e45d7718d1baefaf62f3bcff29de7" -> "sha256:24643f143766d5e63c2248983e74b2510da62b582b230b72003779d5bb66d0c6" [label=""];
  "sha256:24643f143766d5e63c2248983e74b2510da62b582b230b72003779d5bb66d0c6" -> "sha256:694c4f066b71fab1a39e91f2f2257362158c999454a618643da77785f7460c13" [label=""];
  "sha256:7da4c23b99b279dbdaae04a654d3ca02df7663f288bc1dbdf6702664eac02136" -> "sha256:694c4f066b71fab1a39e91f2f2257362158c999454a618643da77785f7460c13" [label=""];
  "sha256:694c4f066b71fab1a39e91f2f2257362158c999454a618643da77785f7460c13" -> "sha256:dd60e995ae14ef11b286ee379265ed0fdedd8fdc6b43912b25c17c9d42210d3f" [label=""];
  "sha256:7da4c23b99b279dbdaae04a654d3ca02df7663f288bc1dbdf6702664eac02136" -> "sha256:dd60e995ae14ef11b286ee379265ed0fdedd8fdc6b43912b25c17c9d42210d3f" [label=""];
  "sha256:dd60e995ae14ef11b286ee379265ed0fdedd8fdc6b43912b25c17c9d42210d3f" -> "sha256:393d51ce7bcf61dd0afaff3217af364bc405e011bdb0d78f05e044a9fb0bdd94" [label=""];
  "sha256:393d51ce7bcf61dd0afaff3217af364bc405e011bdb0d78f05e044a9fb0bdd94" -> "sha256:cc06ee32562f3c4d7a5440d1bee2f744c100c6405cefc8d69ef1389b0529f6df" [label=""];
  "sha256:7da4c23b99b279dbdaae04a654d3ca02df7663f288bc1dbdf6702664eac02136" -> "sha256:cc06ee32562f3c4d7a5440d1bee2f744c100c6405cefc8d69ef1389b0529f6df" [label=""];
  "sha256:cc06ee32562f3c4d7a5440d1bee2f744c100c6405cefc8d69ef1389b0529f6df" -> "sha256:48a2a3ff23c69ca815fa46553a295b369def81be151a6a62e53d9bed71182f35" [label=""];
  "sha256:48a2a3ff23c69ca815fa46553a295b369def81be151a6a62e53d9bed71182f35" -> "sha256:04d31b9168f4e677b40c9afae5d46a9581acaea51cef95ed48af7a65be563979" [label=""];
}

