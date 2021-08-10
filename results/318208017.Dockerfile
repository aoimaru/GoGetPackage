[app/sources/318208017.Dockerfile]
digraph {
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" [label="docker-image://docker.io/library/node:8-alpine" shape="ellipse"];
  "sha256:af1c11411888271a3f87071d47d240a4cbe75a050838ebe06d3a2fac31ecf955" [label="/bin/sh -c apk --no-cache add ca-certificates && update-ca-certificates" shape="box"];
  "sha256:7f528438b2290106c4b7a62b56f62ec8b3f27c64f7ee3937727997e33118cf73" [label="/bin/sh -c apk upgrade &&   apk add --no-cache git   make gcc g++ python" shape="box"];
  "sha256:7e81101090166bcd8cf96cb4899de21fe65a4ef444246c6fbfd07c595abcdb3f" [label="/bin/sh -c mkdir -p /opt/app && mkdir /cache" shape="box"];
  "sha256:b2a31f4f7dfdc39a47244eb3682107ccf40c7b6a1e01c9791497d1e3afa27982" [label="mkdir{path=/opt/app}" shape="note"];
  "sha256:20b829e3c146d7d30eddfe892668dddc6f9c0f6fa6503d91db251c19351d3fcb" [label="local://context" shape="ellipse"];
  "sha256:500353eb7308eeace36b6052111f074ba3221de4cf818dfa8cb7cc5fd85b2d23" [label="copy{src=/package.json, dest=/cache/},copy{src=/yarn.lock, dest=/cache/}" shape="note"];
  "sha256:c6944c50aa14e36f4583840807b54a65289c13eae9a42809c087a60fc4503584" [label="copy{src=/.yarn-cache.tgz, dest=/}" shape="note"];
  "sha256:3362cb7afbf6afead7106d83e3e59dcb96cb9a91bdb239ccc45c237f5c464b9f" [label="/bin/sh -c cd /cache   && yarn config set cache-folder /usr/local/share/.cache/yarn   && yarn   && cd /opt/app && ln -s /cache/node_modules node_modules   && tar czf /.yarn-cache.tgz /usr/local/share/.cache/yarn" shape="box"];
  "sha256:15c52bc242d5716621c8c3b90a39a14e8714e2d0257000fb8dd37765acad11f0" [label="copy{src=/, dest=/opt/app}" shape="note"];
  "sha256:2696d01ef19f746c3e70f17331782dda46a08cea41edf9abeb214b9c1a202c22" [label="sha256:2696d01ef19f746c3e70f17331782dda46a08cea41edf9abeb214b9c1a202c22" shape="plaintext"];
  "sha256:7396b0695b864ccb41579cb6268a3281271f1b59ed6971402b8c38c881efa83e" -> "sha256:af1c11411888271a3f87071d47d240a4cbe75a050838ebe06d3a2fac31ecf955" [label=""];
  "sha256:af1c11411888271a3f87071d47d240a4cbe75a050838ebe06d3a2fac31ecf955" -> "sha256:7f528438b2290106c4b7a62b56f62ec8b3f27c64f7ee3937727997e33118cf73" [label=""];
  "sha256:7f528438b2290106c4b7a62b56f62ec8b3f27c64f7ee3937727997e33118cf73" -> "sha256:7e81101090166bcd8cf96cb4899de21fe65a4ef444246c6fbfd07c595abcdb3f" [label=""];
  "sha256:7e81101090166bcd8cf96cb4899de21fe65a4ef444246c6fbfd07c595abcdb3f" -> "sha256:b2a31f4f7dfdc39a47244eb3682107ccf40c7b6a1e01c9791497d1e3afa27982" [label=""];
  "sha256:b2a31f4f7dfdc39a47244eb3682107ccf40c7b6a1e01c9791497d1e3afa27982" -> "sha256:500353eb7308eeace36b6052111f074ba3221de4cf818dfa8cb7cc5fd85b2d23" [label=""];
  "sha256:20b829e3c146d7d30eddfe892668dddc6f9c0f6fa6503d91db251c19351d3fcb" -> "sha256:500353eb7308eeace36b6052111f074ba3221de4cf818dfa8cb7cc5fd85b2d23" [label=""];
  "sha256:500353eb7308eeace36b6052111f074ba3221de4cf818dfa8cb7cc5fd85b2d23" -> "sha256:c6944c50aa14e36f4583840807b54a65289c13eae9a42809c087a60fc4503584" [label=""];
  "sha256:20b829e3c146d7d30eddfe892668dddc6f9c0f6fa6503d91db251c19351d3fcb" -> "sha256:c6944c50aa14e36f4583840807b54a65289c13eae9a42809c087a60fc4503584" [label=""];
  "sha256:c6944c50aa14e36f4583840807b54a65289c13eae9a42809c087a60fc4503584" -> "sha256:3362cb7afbf6afead7106d83e3e59dcb96cb9a91bdb239ccc45c237f5c464b9f" [label=""];
  "sha256:3362cb7afbf6afead7106d83e3e59dcb96cb9a91bdb239ccc45c237f5c464b9f" -> "sha256:15c52bc242d5716621c8c3b90a39a14e8714e2d0257000fb8dd37765acad11f0" [label=""];
  "sha256:20b829e3c146d7d30eddfe892668dddc6f9c0f6fa6503d91db251c19351d3fcb" -> "sha256:15c52bc242d5716621c8c3b90a39a14e8714e2d0257000fb8dd37765acad11f0" [label=""];
  "sha256:15c52bc242d5716621c8c3b90a39a14e8714e2d0257000fb8dd37765acad11f0" -> "sha256:2696d01ef19f746c3e70f17331782dda46a08cea41edf9abeb214b9c1a202c22" [label=""];
}

