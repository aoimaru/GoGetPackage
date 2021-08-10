[app/sources/141853279.Dockerfile]
digraph {
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" [label="docker-image://docker.io/library/ubuntu:18.10" shape="ellipse"];
  "sha256:c19fcb3e53cdbc296e682b7d2692c6dafef0d1e050580836c708d5078b9292f1" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:3fd71b2d3fd18c810e342fd2e729640d2437773ef9622fe59134bd85d979641c" [label="/bin/sh -c apt-get install -y --no-install-recommends   ca-certificates \tg++ \tmake \tcmake \tgit \tpkg-config \tqtdeclarative5-dev" shape="box"];
  "sha256:5f14d3de4ef1a9b92de55d57071e1df4826f2b2b5ac550ad1f4f61b6dd707809" [label="/bin/sh -c apt-get install -y --no-install-recommends udev" shape="box"];
  "sha256:209620b12cf58b911096cc6780f7959e83a962215f12e7bd691401824d24ea59" [label="sha256:209620b12cf58b911096cc6780f7959e83a962215f12e7bd691401824d24ea59" shape="plaintext"];
  "sha256:bf71747000306a18534cee963225e3485bbc859458c64c608b1e230c59b6d5c7" -> "sha256:c19fcb3e53cdbc296e682b7d2692c6dafef0d1e050580836c708d5078b9292f1" [label=""];
  "sha256:c19fcb3e53cdbc296e682b7d2692c6dafef0d1e050580836c708d5078b9292f1" -> "sha256:3fd71b2d3fd18c810e342fd2e729640d2437773ef9622fe59134bd85d979641c" [label=""];
  "sha256:3fd71b2d3fd18c810e342fd2e729640d2437773ef9622fe59134bd85d979641c" -> "sha256:5f14d3de4ef1a9b92de55d57071e1df4826f2b2b5ac550ad1f4f61b6dd707809" [label=""];
  "sha256:5f14d3de4ef1a9b92de55d57071e1df4826f2b2b5ac550ad1f4f61b6dd707809" -> "sha256:209620b12cf58b911096cc6780f7959e83a962215f12e7bd691401824d24ea59" [label=""];
}

