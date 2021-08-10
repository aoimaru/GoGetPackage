[app/sources/237735166.Dockerfile]
digraph {
  "sha256:ce29b6e28d103cba6fa2e532c8eaa7f06e6d6373577f795ac4426a546ef41572" [label="docker-image://docker.io/library/ruby:2.3.3-alpine" shape="ellipse"];
  "sha256:3d783b10c183378c3de777316d0f0ed403e9670de96daa60d92faa3ca7bbfdc6" [label="/bin/sh -c adduser -u 9000 -D app" shape="box"];
  "sha256:c4f5559be5c669f8588cfe1f15aad1baa11e75b5926d3837b32916902970f407" [label="/bin/sh -c set -ex   && apk add --no-cache git   && apk add --no-cache --virtual .app-builddeps curl   && export DOCKER_BUCKET=get.docker.com   && export DOCKER_VERSION=1.12.3   && export DOCKER_SHA256=626601deb41d9706ac98da23f673af6c0d4631c4d194a677a9a1a07d7219fa0f   && curl -fSL \"https://${DOCKER_BUCKET}/builds/Linux/x86_64/docker-${DOCKER_VERSION}.tgz\" -o docker.tgz \t&& echo \"${DOCKER_SHA256} *docker.tgz\" | sha256sum -c - \t&& tar -xzvf docker.tgz \t&& mv docker/* /usr/local/bin/ \t&& rmdir docker \t&& rm docker.tgz   && apk del .app-builddeps" shape="box"];
  "sha256:7b3e486f97b312bd0810449c9a7694c7fb7da13a34b764c5b8e32ba9f509f00f" [label="local://context" shape="ellipse"];
  "sha256:cc64034f381b2606c5bc7748f8a8fe987398614a156d8ae5801876cdb10cec82" [label="copy{src=/whales_cli.gemspec*, dest=/usr/src/app/}" shape="note"];
  "sha256:5b1d1157674eb907561a26d54315549246d7ae37447805958d707bc839ac86bf" [label="copy{src=/lib/whales_cli/version.rb, dest=/usr/src/app/lib/whales_cli/version.rb}" shape="note"];
  "sha256:675c6aade89435006c781883953efa504ab72bbf375452b09bcbce826220a59a" [label="copy{src=/Gemfile*, dest=/usr/src/app/}" shape="note"];
  "sha256:00797eb44ac9a13b1a34a9a8cc5d8e4da2a7c0d7de89fe7e96a7e0e04de8049a" [label="/bin/sh -c set -ex     && apk add --no-cache --virtual .app-rundeps icu-libs     && apk add --no-cache --virtual .app-builddeps build-base icu-dev cmake     && cd /usr/src/app     && bundle install --without development test     && apk del .app-builddeps" shape="box"];
  "sha256:0e1c51521a0e955944e90d06231051a3509c12a40fc9c522d7a728dcae9b49d6" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:451765cc779865fce7412f09afdcebaf90865b078df745faf127aabac1440177" [label="mkdir{path=/code}" shape="note"];
  "sha256:310a4f96c590858c2a8bb5fa24dbb994d49925c58dbd1447d0f45831d3c64ab8" [label="sha256:310a4f96c590858c2a8bb5fa24dbb994d49925c58dbd1447d0f45831d3c64ab8" shape="plaintext"];
  "sha256:ce29b6e28d103cba6fa2e532c8eaa7f06e6d6373577f795ac4426a546ef41572" -> "sha256:3d783b10c183378c3de777316d0f0ed403e9670de96daa60d92faa3ca7bbfdc6" [label=""];
  "sha256:3d783b10c183378c3de777316d0f0ed403e9670de96daa60d92faa3ca7bbfdc6" -> "sha256:c4f5559be5c669f8588cfe1f15aad1baa11e75b5926d3837b32916902970f407" [label=""];
  "sha256:c4f5559be5c669f8588cfe1f15aad1baa11e75b5926d3837b32916902970f407" -> "sha256:cc64034f381b2606c5bc7748f8a8fe987398614a156d8ae5801876cdb10cec82" [label=""];
  "sha256:7b3e486f97b312bd0810449c9a7694c7fb7da13a34b764c5b8e32ba9f509f00f" -> "sha256:cc64034f381b2606c5bc7748f8a8fe987398614a156d8ae5801876cdb10cec82" [label=""];
  "sha256:cc64034f381b2606c5bc7748f8a8fe987398614a156d8ae5801876cdb10cec82" -> "sha256:5b1d1157674eb907561a26d54315549246d7ae37447805958d707bc839ac86bf" [label=""];
  "sha256:7b3e486f97b312bd0810449c9a7694c7fb7da13a34b764c5b8e32ba9f509f00f" -> "sha256:5b1d1157674eb907561a26d54315549246d7ae37447805958d707bc839ac86bf" [label=""];
  "sha256:5b1d1157674eb907561a26d54315549246d7ae37447805958d707bc839ac86bf" -> "sha256:675c6aade89435006c781883953efa504ab72bbf375452b09bcbce826220a59a" [label=""];
  "sha256:7b3e486f97b312bd0810449c9a7694c7fb7da13a34b764c5b8e32ba9f509f00f" -> "sha256:675c6aade89435006c781883953efa504ab72bbf375452b09bcbce826220a59a" [label=""];
  "sha256:675c6aade89435006c781883953efa504ab72bbf375452b09bcbce826220a59a" -> "sha256:00797eb44ac9a13b1a34a9a8cc5d8e4da2a7c0d7de89fe7e96a7e0e04de8049a" [label=""];
  "sha256:00797eb44ac9a13b1a34a9a8cc5d8e4da2a7c0d7de89fe7e96a7e0e04de8049a" -> "sha256:0e1c51521a0e955944e90d06231051a3509c12a40fc9c522d7a728dcae9b49d6" [label=""];
  "sha256:7b3e486f97b312bd0810449c9a7694c7fb7da13a34b764c5b8e32ba9f509f00f" -> "sha256:0e1c51521a0e955944e90d06231051a3509c12a40fc9c522d7a728dcae9b49d6" [label=""];
  "sha256:0e1c51521a0e955944e90d06231051a3509c12a40fc9c522d7a728dcae9b49d6" -> "sha256:451765cc779865fce7412f09afdcebaf90865b078df745faf127aabac1440177" [label=""];
  "sha256:451765cc779865fce7412f09afdcebaf90865b078df745faf127aabac1440177" -> "sha256:310a4f96c590858c2a8bb5fa24dbb994d49925c58dbd1447d0f45831d3c64ab8" [label=""];
}

