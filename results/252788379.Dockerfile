[app/sources/252788379.Dockerfile]
digraph {
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" [label="docker-image://docker.io/library/debian:jessie" shape="ellipse"];
  "sha256:c719eb8cb457c06041a6e5a7b9ec0a7b0b5fd21ea2329860fff9690c5234f3e1" [label="/bin/sh -c apt-get update && apt-get install -y ruby" shape="box"];
  "sha256:da88e54af8d4ee68c736832a75293fb6cdd5c6e1136931ab953cdb4c165df9f7" [label="/bin/sh -c gem install scout_realtime" shape="box"];
  "sha256:981d73bcf03aae27c21027d0300f78a882e694a432cabc200c58613048f93fd9" [label="sha256:981d73bcf03aae27c21027d0300f78a882e694a432cabc200c58613048f93fd9" shape="plaintext"];
  "sha256:55d93663c42145de522a21142d95a501e8f5e0dc67ba235a54cc171dc8ae481a" -> "sha256:c719eb8cb457c06041a6e5a7b9ec0a7b0b5fd21ea2329860fff9690c5234f3e1" [label=""];
  "sha256:c719eb8cb457c06041a6e5a7b9ec0a7b0b5fd21ea2329860fff9690c5234f3e1" -> "sha256:da88e54af8d4ee68c736832a75293fb6cdd5c6e1136931ab953cdb4c165df9f7" [label=""];
  "sha256:da88e54af8d4ee68c736832a75293fb6cdd5c6e1136931ab953cdb4c165df9f7" -> "sha256:981d73bcf03aae27c21027d0300f78a882e694a432cabc200c58613048f93fd9" [label=""];
}

