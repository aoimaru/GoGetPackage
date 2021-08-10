[app/sources/436199317.Dockerfile]
digraph {
  "sha256:d2c09c1cbf600dacfffef512c294116497ac2e272e2c8e254125f7bc709b14d6" [label="docker-image://docker.io/library/ruby:2.3.1" shape="ellipse"];
  "sha256:95b62988551f5cc5d51acbba2123f8abd68bc17066846c87805b775222372c3a" [label="/bin/sh -c apt-get update &&     apt-get install -y --force-yes             curl             git             wget             libpq-dev &&     apt-get autoremove -y --force-yes &&     apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*" shape="box"];
  "sha256:f30661c354c91e44124a9306c306707ac2821a6a2706f431e7223bf9cf45ad96" [label="/bin/sh -c wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz     && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz" shape="box"];
  "sha256:d14cfb5f61030884ec46f37cf375e323b1a61f36c550d3f7f1241cb5eda14741" [label="/bin/sh -c gem install bundler" shape="box"];
  "sha256:29533afaa2f19c8bd917845e525571d548095f62515b657e787a2240d5ce0e0b" [label="/bin/sh -c mkdir $APP_HOME" shape="box"];
  "sha256:9193ecdd405ea03983c46ce309458db185750f2920c34c647cc3f0246e163129" [label="mkdir{path=/sidekiq-cron}" shape="note"];
  "sha256:d4e09408ace9e56e242936545c2c8f2edf5e7e9a81befd6156b367d338aed742" [label="local://context" shape="ellipse"];
  "sha256:08b4a64e5ed0a3e145fdadc2eb4d88975e6eb17acda5604548049d3e8cd4b4a1" [label="copy{src=/Gemfile*, dest=/sidekiq-cron/}" shape="note"];
  "sha256:5ca1f366765501d66711cbc602779dc46eb12f463d67f3f85e8dea122eab7297" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:5834b2dcc11bd6ad469b00f5d2831d2163224f18039e4cde7e763dda4a9c0226" [label="copy{src=/, dest=/sidekiq-cron}" shape="note"];
  "sha256:a3275c8c1be75040265bec53ad8efe3a21d7caa6440d7fbdeebe057cfb6461aa" [label="sha256:a3275c8c1be75040265bec53ad8efe3a21d7caa6440d7fbdeebe057cfb6461aa" shape="plaintext"];
  "sha256:d2c09c1cbf600dacfffef512c294116497ac2e272e2c8e254125f7bc709b14d6" -> "sha256:95b62988551f5cc5d51acbba2123f8abd68bc17066846c87805b775222372c3a" [label=""];
  "sha256:95b62988551f5cc5d51acbba2123f8abd68bc17066846c87805b775222372c3a" -> "sha256:f30661c354c91e44124a9306c306707ac2821a6a2706f431e7223bf9cf45ad96" [label=""];
  "sha256:f30661c354c91e44124a9306c306707ac2821a6a2706f431e7223bf9cf45ad96" -> "sha256:d14cfb5f61030884ec46f37cf375e323b1a61f36c550d3f7f1241cb5eda14741" [label=""];
  "sha256:d14cfb5f61030884ec46f37cf375e323b1a61f36c550d3f7f1241cb5eda14741" -> "sha256:29533afaa2f19c8bd917845e525571d548095f62515b657e787a2240d5ce0e0b" [label=""];
  "sha256:29533afaa2f19c8bd917845e525571d548095f62515b657e787a2240d5ce0e0b" -> "sha256:9193ecdd405ea03983c46ce309458db185750f2920c34c647cc3f0246e163129" [label=""];
  "sha256:9193ecdd405ea03983c46ce309458db185750f2920c34c647cc3f0246e163129" -> "sha256:08b4a64e5ed0a3e145fdadc2eb4d88975e6eb17acda5604548049d3e8cd4b4a1" [label=""];
  "sha256:d4e09408ace9e56e242936545c2c8f2edf5e7e9a81befd6156b367d338aed742" -> "sha256:08b4a64e5ed0a3e145fdadc2eb4d88975e6eb17acda5604548049d3e8cd4b4a1" [label=""];
  "sha256:08b4a64e5ed0a3e145fdadc2eb4d88975e6eb17acda5604548049d3e8cd4b4a1" -> "sha256:5ca1f366765501d66711cbc602779dc46eb12f463d67f3f85e8dea122eab7297" [label=""];
  "sha256:5ca1f366765501d66711cbc602779dc46eb12f463d67f3f85e8dea122eab7297" -> "sha256:5834b2dcc11bd6ad469b00f5d2831d2163224f18039e4cde7e763dda4a9c0226" [label=""];
  "sha256:d4e09408ace9e56e242936545c2c8f2edf5e7e9a81befd6156b367d338aed742" -> "sha256:5834b2dcc11bd6ad469b00f5d2831d2163224f18039e4cde7e763dda4a9c0226" [label=""];
  "sha256:5834b2dcc11bd6ad469b00f5d2831d2163224f18039e4cde7e763dda4a9c0226" -> "sha256:a3275c8c1be75040265bec53ad8efe3a21d7caa6440d7fbdeebe057cfb6461aa" [label=""];
}

