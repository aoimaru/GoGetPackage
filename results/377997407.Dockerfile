[app/sources/377997407.Dockerfile]
digraph {
  "sha256:46b25337b6497e2a04bb43db7e2ddfd626590fa67e24801204556a1c358dfb18" [label="docker-image://docker.io/library/base:latest" shape="ellipse"];
  "sha256:a4a0b1a8cc48d27cf228578480b978fc358cfdb74dd99c259093ff62bf7d9e9d" [label="/bin/sh -c gem install dep --no-ri --no-rdoc" shape="box"];
  "sha256:9d050fa25fe71c1fc4695b39b17072c921a033f6fcc17c87c4deb704b9f49fe6" [label="/bin/sh -c mkdir -p /srv" shape="box"];
  "sha256:2e7cca6d9bf11a50ee6b85a60cc7894357fa953dd7db6e2f135b47b000fc4118" [label="/bin/sh -c git clone https://github.com/jpfuentes2/example.git /srv/app" shape="box"];
  "sha256:438160654cc1d49daece00bb61eeaa107547e61c3e77cbf84b2474ab13390612" [label="/bin/sh -c cd /srv/app && dep install" shape="box"];
  "sha256:0ccfe2fe0e28505c6f5d7d1ba6d738371d25691152348100ee41eacbfa34ac74" [label="local://context" shape="ellipse"];
  "sha256:2c68ed38382990707ea3f8c260b737a2329b92e4595972d095386fd2bbc2fb77" [label="copy{src=/serf.json, dest=/etc/serf/config.json}" shape="note"];
  "sha256:afba1ece9b20b9dea232312049d36f9050417bcf44c6aee25c2d6191ee04d5bb" [label="copy{src=/supervisord.conf, dest=/etc/supervisord/conf.d/supervisord.conf}" shape="note"];
  "sha256:2e54f09096da86566f3ff8f3acccecd00caeb9b69316a347383ec0cb94427fce" [label="mkdir{path=/srv/app}" shape="note"];
  "sha256:0b4cf42bcf539e42e08f0d494fce96545f064b6551fe4c8949fc657647d249c1" [label="sha256:0b4cf42bcf539e42e08f0d494fce96545f064b6551fe4c8949fc657647d249c1" shape="plaintext"];
  "sha256:46b25337b6497e2a04bb43db7e2ddfd626590fa67e24801204556a1c358dfb18" -> "sha256:a4a0b1a8cc48d27cf228578480b978fc358cfdb74dd99c259093ff62bf7d9e9d" [label=""];
  "sha256:a4a0b1a8cc48d27cf228578480b978fc358cfdb74dd99c259093ff62bf7d9e9d" -> "sha256:9d050fa25fe71c1fc4695b39b17072c921a033f6fcc17c87c4deb704b9f49fe6" [label=""];
  "sha256:9d050fa25fe71c1fc4695b39b17072c921a033f6fcc17c87c4deb704b9f49fe6" -> "sha256:2e7cca6d9bf11a50ee6b85a60cc7894357fa953dd7db6e2f135b47b000fc4118" [label=""];
  "sha256:2e7cca6d9bf11a50ee6b85a60cc7894357fa953dd7db6e2f135b47b000fc4118" -> "sha256:438160654cc1d49daece00bb61eeaa107547e61c3e77cbf84b2474ab13390612" [label=""];
  "sha256:438160654cc1d49daece00bb61eeaa107547e61c3e77cbf84b2474ab13390612" -> "sha256:2c68ed38382990707ea3f8c260b737a2329b92e4595972d095386fd2bbc2fb77" [label=""];
  "sha256:0ccfe2fe0e28505c6f5d7d1ba6d738371d25691152348100ee41eacbfa34ac74" -> "sha256:2c68ed38382990707ea3f8c260b737a2329b92e4595972d095386fd2bbc2fb77" [label=""];
  "sha256:2c68ed38382990707ea3f8c260b737a2329b92e4595972d095386fd2bbc2fb77" -> "sha256:afba1ece9b20b9dea232312049d36f9050417bcf44c6aee25c2d6191ee04d5bb" [label=""];
  "sha256:0ccfe2fe0e28505c6f5d7d1ba6d738371d25691152348100ee41eacbfa34ac74" -> "sha256:afba1ece9b20b9dea232312049d36f9050417bcf44c6aee25c2d6191ee04d5bb" [label=""];
  "sha256:afba1ece9b20b9dea232312049d36f9050417bcf44c6aee25c2d6191ee04d5bb" -> "sha256:2e54f09096da86566f3ff8f3acccecd00caeb9b69316a347383ec0cb94427fce" [label=""];
  "sha256:2e54f09096da86566f3ff8f3acccecd00caeb9b69316a347383ec0cb94427fce" -> "sha256:0b4cf42bcf539e42e08f0d494fce96545f064b6551fe4c8949fc657647d249c1" [label=""];
}

