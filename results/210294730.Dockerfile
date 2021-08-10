[app/sources/210294730.Dockerfile]
digraph {
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" [label="docker-image://docker.io/library/ubuntu:16.04" shape="ellipse"];
  "sha256:9dc3dd8c5f6c341f551f5cffc4922e365d275c5178afec3daa3ebaa7a2a7fcb0" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y install locales apt-utils" shape="box"];
  "sha256:6008bdddac5bbe8daa91964735074648ef2d361d4d13c3300d5d265a426b3f3b" [label="/bin/sh -c localedef -i en_US -f UTF-8 en_US.UTF-8" shape="box"];
  "sha256:06631ed9c84d612e328e1eae80cd043dc57538ce7ca6de5c1b99bc6749e690db" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get -y upgrade; apt-get clean" shape="box"];
  "sha256:468e3844c4e2b9b9563fe98778e786c167c69f13062d878b73cf13aa50c66c70" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get -y install build-essential git-core curl wget jq sudo; apt-get clean" shape="box"];
  "sha256:401c9620f50494751a389200d7467a55989d2364d023f64e630128b5cea5f1a0" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y sqlite3 libsqlite3-dev; apt-get clean" shape="box"];
  "sha256:ad225c5241518ad4d5da577c283f8171df4ebc0cbdddf7a2dcc443117963a774" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-client libmysqlclient-dev; apt-get clean" shape="box"];
  "sha256:4c9fad320d1af6a498425296fb59ac8c7f383ad5cffad43f94a64195b041da15" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y libpq-dev; apt-get clean" shape="box"];
  "sha256:598fdfc15241fe46d3549124f39ce85a70f15d5bf2fe7e2f563b72a942ab02e4" [label="/bin/sh -c DEBIAN_FRONTEND=noninteractive apt-get install -y python python-pip libyaml-dev libpython-dev; apt-get clean" shape="box"];
  "sha256:9e004b158f1a132dc4a7c23e9a959e7cfa7df64bc9e7fef46cb725980a15626d" [label="/bin/sh -c curl -sSL https://storage.googleapis.com/golang/go${GOLANG_VERSION}.linux-amd64.tar.gz | tar -v -C /usr/local -xz" shape="box"];
  "sha256:80947200e5c9aadd747d51c2414665bad4e913878ab145f94051fd19194d41b6" [label="/bin/sh -c curl -sSL https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-${GCLOUD_SDK_VERSION}-linux-x86_64.tar.gz | tar -v -C /usr/local -xz" shape="box"];
  "sha256:08c0deeb1ab28d5c0448d297cdd186c780ea2cf18348f9806e3e6911ab83471a" [label="/bin/sh -c mkdir /tmp/chruby &&     cd /tmp &&     curl https://codeload.github.com/postmodern/chruby/tar.gz/v0.3.9 | tar -xz &&     cd /tmp/chruby-0.3.9 &&     sudo ./scripts/setup.sh &&     rm -rf /tmp/chruby" shape="box"];
  "sha256:a2b05a1e096bb1a05517796c8a96357038849420b4ceb2caa4c8925a1563e28d" [label="/bin/sh -c mkdir /tmp/ruby-install &&     cd /tmp &&     curl https://codeload.github.com/postmodern/ruby-install/tar.gz/v0.5.0 | tar -xz &&     cd /tmp/ruby-install-0.5.0 &&     sudo make install &&     rm -rf /tmp/ruby-install" shape="box"];
  "sha256:cb521690119e8c306c4e977f9c533548c94a8fc146d1f8a5f1fc79abaeca8506" [label="/bin/sh -c ruby-install ruby 2.1.2 &&     cp /etc/profile.d/chruby.sh /etc/profile.d/chruby-with-ruby-2.1.2.sh &&     echo \"chruby 2.1.2\" >> /etc/profile.d/chruby-with-ruby-2.1.2.sh" shape="box"];
  "sha256:a5a00d50659f04d12ee017bb407295c722acabc592dc6c4f738160d906b5a54c" [label="/bin/sh -c /bin/bash -l -c \"gem install bundler bosh_cli --no-ri --no-rdoc\"" shape="box"];
  "sha256:bf29b579d334adb6959887dcfe8adf9aee44b90039e1fda114b90d341d013e74" [label="/bin/sh -c wget https://s3.amazonaws.com/bosh-cli-artifacts/bosh-cli-2.0.48-linux-amd64" shape="box"];
  "sha256:997b59e4ebd52dc4bbe4194c3f19927c46a4dbfc59bc841ae5d70b43323600de" [label="/bin/sh -c chmod +x bosh-cli-*" shape="box"];
  "sha256:d62b6640f449e111951da9d9fd9d96f032be2d11d2539e3cf5f3641f9648d2eb" [label="/bin/sh -c mv bosh-cli-* /usr/bin/bosh2" shape="box"];
  "sha256:6740290e131f34b3841254aa6c32ea78bfd5489662c58d9617c68964d1b7b818" [label="/bin/sh -c pip install awscli" shape="box"];
  "sha256:cffb600639ea72921f57e4628ff8275ca9c88afe5974bf7b3ced670456128d04" [label="/bin/sh -c cd /tmp &&     curl -o certify-artifacts -L https://s3.amazonaws.com/bosh-certification-generator-releases/certify-artifacts-linux-amd64 &&     chmod +x certify-artifacts &&     mv certify-artifacts /bin/certify-artifacts" shape="box"];
  "sha256:5665a4f9abca886dc061b12f7a4c604c978d30a7f7af73c2ca732853d3e54848" [label="sha256:5665a4f9abca886dc061b12f7a4c604c978d30a7f7af73c2ca732853d3e54848" shape="plaintext"];
  "sha256:04187b885604d112762d71717a1346cbc4f17e131fc82857a048019e04951455" -> "sha256:9dc3dd8c5f6c341f551f5cffc4922e365d275c5178afec3daa3ebaa7a2a7fcb0" [label=""];
  "sha256:9dc3dd8c5f6c341f551f5cffc4922e365d275c5178afec3daa3ebaa7a2a7fcb0" -> "sha256:6008bdddac5bbe8daa91964735074648ef2d361d4d13c3300d5d265a426b3f3b" [label=""];
  "sha256:6008bdddac5bbe8daa91964735074648ef2d361d4d13c3300d5d265a426b3f3b" -> "sha256:06631ed9c84d612e328e1eae80cd043dc57538ce7ca6de5c1b99bc6749e690db" [label=""];
  "sha256:06631ed9c84d612e328e1eae80cd043dc57538ce7ca6de5c1b99bc6749e690db" -> "sha256:468e3844c4e2b9b9563fe98778e786c167c69f13062d878b73cf13aa50c66c70" [label=""];
  "sha256:468e3844c4e2b9b9563fe98778e786c167c69f13062d878b73cf13aa50c66c70" -> "sha256:401c9620f50494751a389200d7467a55989d2364d023f64e630128b5cea5f1a0" [label=""];
  "sha256:401c9620f50494751a389200d7467a55989d2364d023f64e630128b5cea5f1a0" -> "sha256:ad225c5241518ad4d5da577c283f8171df4ebc0cbdddf7a2dcc443117963a774" [label=""];
  "sha256:ad225c5241518ad4d5da577c283f8171df4ebc0cbdddf7a2dcc443117963a774" -> "sha256:4c9fad320d1af6a498425296fb59ac8c7f383ad5cffad43f94a64195b041da15" [label=""];
  "sha256:4c9fad320d1af6a498425296fb59ac8c7f383ad5cffad43f94a64195b041da15" -> "sha256:598fdfc15241fe46d3549124f39ce85a70f15d5bf2fe7e2f563b72a942ab02e4" [label=""];
  "sha256:598fdfc15241fe46d3549124f39ce85a70f15d5bf2fe7e2f563b72a942ab02e4" -> "sha256:9e004b158f1a132dc4a7c23e9a959e7cfa7df64bc9e7fef46cb725980a15626d" [label=""];
  "sha256:9e004b158f1a132dc4a7c23e9a959e7cfa7df64bc9e7fef46cb725980a15626d" -> "sha256:80947200e5c9aadd747d51c2414665bad4e913878ab145f94051fd19194d41b6" [label=""];
  "sha256:80947200e5c9aadd747d51c2414665bad4e913878ab145f94051fd19194d41b6" -> "sha256:08c0deeb1ab28d5c0448d297cdd186c780ea2cf18348f9806e3e6911ab83471a" [label=""];
  "sha256:08c0deeb1ab28d5c0448d297cdd186c780ea2cf18348f9806e3e6911ab83471a" -> "sha256:a2b05a1e096bb1a05517796c8a96357038849420b4ceb2caa4c8925a1563e28d" [label=""];
  "sha256:a2b05a1e096bb1a05517796c8a96357038849420b4ceb2caa4c8925a1563e28d" -> "sha256:cb521690119e8c306c4e977f9c533548c94a8fc146d1f8a5f1fc79abaeca8506" [label=""];
  "sha256:cb521690119e8c306c4e977f9c533548c94a8fc146d1f8a5f1fc79abaeca8506" -> "sha256:a5a00d50659f04d12ee017bb407295c722acabc592dc6c4f738160d906b5a54c" [label=""];
  "sha256:a5a00d50659f04d12ee017bb407295c722acabc592dc6c4f738160d906b5a54c" -> "sha256:bf29b579d334adb6959887dcfe8adf9aee44b90039e1fda114b90d341d013e74" [label=""];
  "sha256:bf29b579d334adb6959887dcfe8adf9aee44b90039e1fda114b90d341d013e74" -> "sha256:997b59e4ebd52dc4bbe4194c3f19927c46a4dbfc59bc841ae5d70b43323600de" [label=""];
  "sha256:997b59e4ebd52dc4bbe4194c3f19927c46a4dbfc59bc841ae5d70b43323600de" -> "sha256:d62b6640f449e111951da9d9fd9d96f032be2d11d2539e3cf5f3641f9648d2eb" [label=""];
  "sha256:d62b6640f449e111951da9d9fd9d96f032be2d11d2539e3cf5f3641f9648d2eb" -> "sha256:6740290e131f34b3841254aa6c32ea78bfd5489662c58d9617c68964d1b7b818" [label=""];
  "sha256:6740290e131f34b3841254aa6c32ea78bfd5489662c58d9617c68964d1b7b818" -> "sha256:cffb600639ea72921f57e4628ff8275ca9c88afe5974bf7b3ced670456128d04" [label=""];
  "sha256:cffb600639ea72921f57e4628ff8275ca9c88afe5974bf7b3ced670456128d04" -> "sha256:5665a4f9abca886dc061b12f7a4c604c978d30a7f7af73c2ca732853d3e54848" [label=""];
}

