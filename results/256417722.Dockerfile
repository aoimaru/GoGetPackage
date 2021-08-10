[app/sources/256417722.Dockerfile]
digraph {
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" [label="docker-image://docker.io/library/alpine:edge" shape="ellipse"];
  "sha256:34d7bbaf7ad41735e2cc1552abd5e8d948c1df211c85c909585e960d8a95420d" [label="/bin/sh -c apk add --no-cache curl gcc make musl-dev" shape="box"];
  "sha256:1825b748f4ee1e22c967e7e89466037c37f1ee609444c7f66d1a48676acfc054" [label="/bin/sh -c curl https://haible.de/bruno/gnu/clisp-2.49.92.tar.bz2 | tar xjf -" shape="box"];
  "sha256:ba0b782b89d9f92ee11df73cf4225c5cda0e4f7288ee3bb43c676c962131ba1b" [label="/bin/sh -c cd clisp-2.49.92/src                                       && ../configure --ignore-absence-of-libsigsegv --prefix=/usr  && ./makemake --prefix=/usr > Makefile                        && make                                                       && make install" shape="box"];
  "sha256:2e7f3669667098fc8c8940c5427543131089d8fae63707c53d259d3885700bdc" [label="copy{src=/lib/ld-musl-x86_64.so.1, dest=/lib/}" shape="note"];
  "sha256:8ade72b39249a3879501f3fbb043c6b8831f6bc54af24a33740db5561607029a" [label="copy{src=/usr/bin/clisp, dest=/usr/bin/lisp}" shape="note"];
  "sha256:fb8aa58b9d4fc41be72309e17c223168a9c0bb4fe7ab125ae222f4ae63225df9" [label="copy{src=/usr/lib/clisp-2.49.92, dest=/usr/lib/clisp-2.49.92}" shape="note"];
  "sha256:0eea01af8bea4d48d88d806d5e5122eccfed3a6c87393ab5aabd1a57baee039b" [label="sha256:0eea01af8bea4d48d88d806d5e5122eccfed3a6c87393ab5aabd1a57baee039b" shape="plaintext"];
  "sha256:24e40db032085063d62db82b88e5bdc9babba4354c6a00e632da2e19cb10ed4c" -> "sha256:34d7bbaf7ad41735e2cc1552abd5e8d948c1df211c85c909585e960d8a95420d" [label=""];
  "sha256:34d7bbaf7ad41735e2cc1552abd5e8d948c1df211c85c909585e960d8a95420d" -> "sha256:1825b748f4ee1e22c967e7e89466037c37f1ee609444c7f66d1a48676acfc054" [label=""];
  "sha256:1825b748f4ee1e22c967e7e89466037c37f1ee609444c7f66d1a48676acfc054" -> "sha256:ba0b782b89d9f92ee11df73cf4225c5cda0e4f7288ee3bb43c676c962131ba1b" [label=""];
  "sha256:ba0b782b89d9f92ee11df73cf4225c5cda0e4f7288ee3bb43c676c962131ba1b" -> "sha256:2e7f3669667098fc8c8940c5427543131089d8fae63707c53d259d3885700bdc" [label=""];
  "sha256:2e7f3669667098fc8c8940c5427543131089d8fae63707c53d259d3885700bdc" -> "sha256:8ade72b39249a3879501f3fbb043c6b8831f6bc54af24a33740db5561607029a" [label=""];
  "sha256:ba0b782b89d9f92ee11df73cf4225c5cda0e4f7288ee3bb43c676c962131ba1b" -> "sha256:8ade72b39249a3879501f3fbb043c6b8831f6bc54af24a33740db5561607029a" [label=""];
  "sha256:8ade72b39249a3879501f3fbb043c6b8831f6bc54af24a33740db5561607029a" -> "sha256:fb8aa58b9d4fc41be72309e17c223168a9c0bb4fe7ab125ae222f4ae63225df9" [label=""];
  "sha256:ba0b782b89d9f92ee11df73cf4225c5cda0e4f7288ee3bb43c676c962131ba1b" -> "sha256:fb8aa58b9d4fc41be72309e17c223168a9c0bb4fe7ab125ae222f4ae63225df9" [label=""];
  "sha256:fb8aa58b9d4fc41be72309e17c223168a9c0bb4fe7ab125ae222f4ae63225df9" -> "sha256:0eea01af8bea4d48d88d806d5e5122eccfed3a6c87393ab5aabd1a57baee039b" [label=""];
}

