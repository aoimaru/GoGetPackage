[app/sources/343662866.Dockerfile]
digraph {
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:da7b473d8bdd3dcab468894953a6d33de97b4b3d01b091c50b76bd21d1cdcf29" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:a549f14dfdc2992a7a9c643279dffe69350cfd3b258b1029c59b5b133f0fae5d" [label="/bin/sh -c apt-get install -y locales" shape="box"];
  "sha256:6325d958b5a540f315a3f29ff8b93b209fe7868563d31cb3d38284f808761e8b" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:768894ea28ec014199e7aee46d90dd5533643fefeccb4f814d9dcf03ab7b0f11" [label="/bin/sh -c apt-get install -y curl git build-essential     software-properties-common" shape="box"];
  "sha256:1d0b91a088fd1d851a928213ad878f9f341508806d5d29178a3e32de67894ec4" [label="/bin/sh -c apt-get install -y zlib1g-dev libssl-dev libreadline-dev     libyaml-dev libcurl4-openssl-dev     libffi-dev     libcurl4-openssl-dev" shape="box"];
  "sha256:b9356a5b8b6222703fc4329c74c222f774a1ce40debf5c1fabd2c2f638206710" [label="/bin/sh -c curl -sL https://deb.nodesource.com/setup_8.x | bash - &&     curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - &&     echo \"deb https://dl.yarnpkg.com/debian/ stable main\" | tee /etc/apt/sources.list.d/yarn.list" shape="box"];
  "sha256:e383b969a4f8336364e17a4f5b55f42b9ba186e30e39a33c51479887a26bca51" [label="/bin/sh -c apt-get update && apt-get install -y nodejs yarn" shape="box"];
  "sha256:8fd0e42d5dde5d2650a61ad4c6362d244a041012a2456f89d0222f2e06759dfc" [label="/bin/sh -c git clone https://github.com/rbenv/rbenv.git ${RBENV_ROOT}     && git clone https://github.com/rbenv/ruby-build.git ${RBENV_ROOT}/plugins/ruby-build     && ${RBENV_ROOT}/plugins/ruby-build/install.sh" shape="box"];
  "sha256:52699909dabc2487c204324ae2a3e174ddb61dddae280ead97ce3781f49f8a8b" [label="/bin/sh -c echo 'eval \"$(rbenv init -)\"' >> /etc/profile.d/rbenv.sh" shape="box"];
  "sha256:7efb1f26d85023b73ad23bb159cab4b5fb7e0a9068d4eeddeeafa76121364216" [label="/bin/sh -c rbenv install $RUBY_VERSION &&  rbenv global $RUBY_VERSION" shape="box"];
  "sha256:089a7ad4dfd4ca96b38e80698eeb6ee8a41be1b3b2f7cd6a92f28854cd62eb30" [label="/bin/sh -c gem install bundler" shape="box"];
  "sha256:3b1fcba683d27946bf57b1f0f582d5a25e31ee81dabab4ff64073f8f00136557" [label="local://context" shape="ellipse"];
  "sha256:922ad2abef466187dc51b76f3098192f26aebbd7bc5f002585744d70bc73c208" [label="copy{src=/docker-entrypoint.sh, dest=/}" shape="note"];
  "sha256:4f960d12df75dfa21258d73c29a1616f2175cead379320d94fccdabca4e6e44a" [label="mkdir{path=/app}" shape="note"];
  "sha256:3d7eb8a9f04cb1ab463a9f98a233adde942308159c1f67bc675d9fd656dd7cd5" [label="sha256:3d7eb8a9f04cb1ab463a9f98a233adde942308159c1f67bc675d9fd656dd7cd5" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:da7b473d8bdd3dcab468894953a6d33de97b4b3d01b091c50b76bd21d1cdcf29" [label=""];
  "sha256:da7b473d8bdd3dcab468894953a6d33de97b4b3d01b091c50b76bd21d1cdcf29" -> "sha256:a549f14dfdc2992a7a9c643279dffe69350cfd3b258b1029c59b5b133f0fae5d" [label=""];
  "sha256:a549f14dfdc2992a7a9c643279dffe69350cfd3b258b1029c59b5b133f0fae5d" -> "sha256:6325d958b5a540f315a3f29ff8b93b209fe7868563d31cb3d38284f808761e8b" [label=""];
  "sha256:6325d958b5a540f315a3f29ff8b93b209fe7868563d31cb3d38284f808761e8b" -> "sha256:768894ea28ec014199e7aee46d90dd5533643fefeccb4f814d9dcf03ab7b0f11" [label=""];
  "sha256:768894ea28ec014199e7aee46d90dd5533643fefeccb4f814d9dcf03ab7b0f11" -> "sha256:1d0b91a088fd1d851a928213ad878f9f341508806d5d29178a3e32de67894ec4" [label=""];
  "sha256:1d0b91a088fd1d851a928213ad878f9f341508806d5d29178a3e32de67894ec4" -> "sha256:b9356a5b8b6222703fc4329c74c222f774a1ce40debf5c1fabd2c2f638206710" [label=""];
  "sha256:b9356a5b8b6222703fc4329c74c222f774a1ce40debf5c1fabd2c2f638206710" -> "sha256:e383b969a4f8336364e17a4f5b55f42b9ba186e30e39a33c51479887a26bca51" [label=""];
  "sha256:e383b969a4f8336364e17a4f5b55f42b9ba186e30e39a33c51479887a26bca51" -> "sha256:8fd0e42d5dde5d2650a61ad4c6362d244a041012a2456f89d0222f2e06759dfc" [label=""];
  "sha256:8fd0e42d5dde5d2650a61ad4c6362d244a041012a2456f89d0222f2e06759dfc" -> "sha256:52699909dabc2487c204324ae2a3e174ddb61dddae280ead97ce3781f49f8a8b" [label=""];
  "sha256:52699909dabc2487c204324ae2a3e174ddb61dddae280ead97ce3781f49f8a8b" -> "sha256:7efb1f26d85023b73ad23bb159cab4b5fb7e0a9068d4eeddeeafa76121364216" [label=""];
  "sha256:7efb1f26d85023b73ad23bb159cab4b5fb7e0a9068d4eeddeeafa76121364216" -> "sha256:089a7ad4dfd4ca96b38e80698eeb6ee8a41be1b3b2f7cd6a92f28854cd62eb30" [label=""];
  "sha256:089a7ad4dfd4ca96b38e80698eeb6ee8a41be1b3b2f7cd6a92f28854cd62eb30" -> "sha256:922ad2abef466187dc51b76f3098192f26aebbd7bc5f002585744d70bc73c208" [label=""];
  "sha256:3b1fcba683d27946bf57b1f0f582d5a25e31ee81dabab4ff64073f8f00136557" -> "sha256:922ad2abef466187dc51b76f3098192f26aebbd7bc5f002585744d70bc73c208" [label=""];
  "sha256:922ad2abef466187dc51b76f3098192f26aebbd7bc5f002585744d70bc73c208" -> "sha256:4f960d12df75dfa21258d73c29a1616f2175cead379320d94fccdabca4e6e44a" [label=""];
  "sha256:4f960d12df75dfa21258d73c29a1616f2175cead379320d94fccdabca4e6e44a" -> "sha256:3d7eb8a9f04cb1ab463a9f98a233adde942308159c1f67bc675d9fd656dd7cd5" [label=""];
}

