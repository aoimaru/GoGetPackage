[app/sources/321553200.Dockerfile]
digraph {
  "sha256:1fdfcf97b7e48543590e011868739c5780b17363beeae647cde90af56a11af1a" [label="local://context" shape="ellipse"];
  "sha256:496d607d116970c53fa31c4d4605632940ef936479b57f369ce5a18b288a7340" [label="docker-image://docker.io/fluent/fluentd:v1.3.2-debian@sha256:1696344f252b4f3c51286dae5246fa528008039020e1f996f05d54bebe43e7d1" shape="ellipse"];
  "sha256:fc98cc884a81a2320689b021717ba791016b2c178bcba46573c7211a0418ea16" [label="mkdir{path=/home/fluent}" shape="note"];
  "sha256:b767f69432a03265a622525b1999f68fb8eeab8d4ab77c39f62e30e9386cdc03" [label="copy{src=/docker/Gemfile*, dest=/fluentd/}" shape="note"];
  "sha256:57ce4bcfa736a60afc300b6e1a9e78fdd35751b7eb0e20207702da1c1faf3a6c" [label="/bin/sh -c buildDeps=\"sudo make gcc g++ libc-dev ruby-dev\"        && apt-get update        && apt-get install -y --no-install-recommends        $buildDeps libsystemd0 net-tools libjemalloc1        && gem install bundler --version 1.16.2        && bundle config silence_root_warning true        && bundle install --gemfile=/fluentd/Gemfile --path=/fluentd/vendor/bundle        && sudo gem sources --clear-all        && SUDO_FORCE_REMOVE=yes        apt-get purge -y --auto-remove        -o APT::AutoRemove::RecommendsImportant=false        $buildDeps        && rm -rf /var/lib/apt/lists/*        /home/fluent/.gem/ruby/2.3.0/cache/*.gem        /tmp/* /var/tmp/* /usr/lib/ruby/gems/*/cache/*.gem" shape="box"];
  "sha256:917923bb94452195ce632f38d62c4089453dde5fd5614435d037db89c80b502a" [label="copy{src=/docker/entrypoint.sh, dest=/fluentd/entrypoint.sh}" shape="note"];
  "sha256:483542f30d73dad68dd3cadba67fa6ec04798b2b1425ef46b83201d68e70da6f" [label="copy{src=/lib/fluent/plugin/out_loki.rb, dest=/fluentd/plugins/out_loki.rb}" shape="note"];
  "sha256:de03cfb3ba5ca12b5dd30caa45866b1f75e8790d6cb515557028fea62b72eb5f" [label="copy{src=/docker/conf, dest=/fluentd/etc/loki/}" shape="note"];
  "sha256:907839ff3175e42e847be64b81aa9ff22c69222e57d86be11e147151c7fd544f" [label="sha256:907839ff3175e42e847be64b81aa9ff22c69222e57d86be11e147151c7fd544f" shape="plaintext"];
  "sha256:496d607d116970c53fa31c4d4605632940ef936479b57f369ce5a18b288a7340" -> "sha256:fc98cc884a81a2320689b021717ba791016b2c178bcba46573c7211a0418ea16" [label=""];
  "sha256:fc98cc884a81a2320689b021717ba791016b2c178bcba46573c7211a0418ea16" -> "sha256:b767f69432a03265a622525b1999f68fb8eeab8d4ab77c39f62e30e9386cdc03" [label=""];
  "sha256:1fdfcf97b7e48543590e011868739c5780b17363beeae647cde90af56a11af1a" -> "sha256:b767f69432a03265a622525b1999f68fb8eeab8d4ab77c39f62e30e9386cdc03" [label=""];
  "sha256:b767f69432a03265a622525b1999f68fb8eeab8d4ab77c39f62e30e9386cdc03" -> "sha256:57ce4bcfa736a60afc300b6e1a9e78fdd35751b7eb0e20207702da1c1faf3a6c" [label=""];
  "sha256:57ce4bcfa736a60afc300b6e1a9e78fdd35751b7eb0e20207702da1c1faf3a6c" -> "sha256:917923bb94452195ce632f38d62c4089453dde5fd5614435d037db89c80b502a" [label=""];
  "sha256:1fdfcf97b7e48543590e011868739c5780b17363beeae647cde90af56a11af1a" -> "sha256:917923bb94452195ce632f38d62c4089453dde5fd5614435d037db89c80b502a" [label=""];
  "sha256:917923bb94452195ce632f38d62c4089453dde5fd5614435d037db89c80b502a" -> "sha256:483542f30d73dad68dd3cadba67fa6ec04798b2b1425ef46b83201d68e70da6f" [label=""];
  "sha256:1fdfcf97b7e48543590e011868739c5780b17363beeae647cde90af56a11af1a" -> "sha256:483542f30d73dad68dd3cadba67fa6ec04798b2b1425ef46b83201d68e70da6f" [label=""];
  "sha256:483542f30d73dad68dd3cadba67fa6ec04798b2b1425ef46b83201d68e70da6f" -> "sha256:de03cfb3ba5ca12b5dd30caa45866b1f75e8790d6cb515557028fea62b72eb5f" [label=""];
  "sha256:1fdfcf97b7e48543590e011868739c5780b17363beeae647cde90af56a11af1a" -> "sha256:de03cfb3ba5ca12b5dd30caa45866b1f75e8790d6cb515557028fea62b72eb5f" [label=""];
  "sha256:de03cfb3ba5ca12b5dd30caa45866b1f75e8790d6cb515557028fea62b72eb5f" -> "sha256:907839ff3175e42e847be64b81aa9ff22c69222e57d86be11e147151c7fd544f" [label=""];
}

